part of 'main_page_view.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
      return Expanded(
        child: Image.asset(walletImage),
      );
  }
}
