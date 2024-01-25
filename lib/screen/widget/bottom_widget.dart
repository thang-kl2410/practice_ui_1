part of 'package:sample_ui/screen/my_home_page.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key, required this.height});
  final double? height;
  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  double h = 0;
  var isPress = false;

  @override
  void initState() {
    super.initState();
    h = widget.height ?? 200;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      const Wrap(
                        children: [
                          Text(
                            'Join 200,000+ plant parents',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (isPress) {
                                  h = widget.height ?? 200;
                                  isPress = !isPress;
                                } else {
                                  h *= 3;
                                  Future.delayed(Duration(milliseconds: 100)).then((value){
                                    setState(() {
                                      isPress = !isPress;
                                    });
                                  });
                                }
                              });
                            },
                            icon: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: isPress
                                  ? const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 32,
                                color: Colors.black54,
                              ) : const Icon(
                                Icons.keyboard_arrow_up_sharp,
                                size: 32,
                                color: Colors.black54,
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  isPress ? StartFreeWidget() : const Spacer(),
                  if(isPress) const Spacer(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: InkWell(
                        child: Image.asset('assets/images/button.png')
                      )
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: const Text(
                      "7 days free, then \$29.99 per year",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
