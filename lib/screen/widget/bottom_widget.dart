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
                children: [
                  const Spacer(),
                  const Text(
                    'Join 200,000+ plant parents',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
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
                      icon: isPress
                          ? const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 32,
                        color: Colors.black54,
                      )
                          : const Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 32,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ],
              ),
              isPress ? StartFreeWidget() : const Spacer(),
              if(isPress) const Spacer(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30),
                          ),
                          border: Border.all(
                              width: 5,
                              color: Colors.white.withOpacity(0.75)
                          )
                      ),
                      child: const Center(
                        child: Text(
                          'Start Free Trial',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),
                    ),
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
          ),
        ),
      ),
    );
  }
}
