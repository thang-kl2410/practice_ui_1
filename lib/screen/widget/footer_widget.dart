part of 'package:sample_ui/screen/my_home_page.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "🤔",
            style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        const Center(
          child: Text(
            "Got a question?",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Center(
          child: Text(
            "Pricing FAQ and support",
            style: TextStyle(
                color: Colors.green.shade300,
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Already subscribed?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              "Restore",
              style: TextStyle(
                  color: Colors.green.shade300,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
        const SizedBox(height: 32,),
        Center(
            child: TextButton(
              onPressed: (){

              },
              child: const  Text(
                'Privacy Policy - Terms of Service',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w800
                ),
              ),
            )
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height*0.2
        )
      ],
    );
  }
}
