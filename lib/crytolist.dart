import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pricelive/repository.dart';
import 'models/datamodel.dart';

class CrytoBox extends StatefulWidget {
  final List<DataModel> coinlist;

  CrytoBox({
    Key? key,
    required this.coinlist,
  }) : super(key: key);
  @override
  State<CrytoBox> createState() => _CrytoBoxState();
}

class _CrytoBoxState extends State<CrytoBox> {
  _refershpage(bool reload) {
    Repository().getlist();
  }

  @override
  Widget build(BuildContext context) {
    var coinIconUrl = "https://s2.coinmarketcap.com/static/img/coins/64x64/";
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          await _refershpage(true);
        },
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: widget.coinlist.length,
            itemBuilder: ((context, index) {
              return Container(
                  height: 100,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: widget.coinlist[index].quoteModel.usdmodel
                                      .percentChange_24h <=
                                  0
                              ? Colors.red
                              : Colors.green,
                          width: 2)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: CachedNetworkImage(
                                    imageUrl: (coinIconUrl +
                                            widget.coinlist[index].id
                                                .toString() +
                                            ".png")
                                        .toLowerCase(),
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        SvgPicture.network(
                                            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/NewTux.svg/1707px-NewTux.svg.png"),
                                  )),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(widget.coinlist[index].symbol)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.8,
                          child: Text(
                            widget.coinlist[index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width / 3.5,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: widget.coinlist[index].quoteModel
                                            .usdmodel.percentChange_24h <
                                        0
                                    ? Colors.red
                                    : Colors.green,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      "\$${widget.coinlist[index].quoteModel.usdmodel.price.toStringAsFixed(2)}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                      widget.coinlist[index].quoteModel.usdmodel
                                              .percentChange_24h
                                              .toStringAsFixed(2) +
                                          "%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ))
                                ],
                              )),
                        ),
                      ]));
            })),
      ),
    );
  }
}
