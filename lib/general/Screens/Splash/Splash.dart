part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  
   const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
       Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (c) =>  OnBoarding()), (route) => false);
      //AutoRouter.of(context).push(OnBoarding());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        color: MyColors.white,
        child: Center(
          child: AnimationContainer(
              index: 0,
              vertical: true,
              duration: const Duration(milliseconds: 1500),
              distance: MediaQuery.of(context).size.height * .3,
              child: Hero(
                tag: Res.logo,
                child: Image.asset(
                  Res.logo,
                  width: 200,
                  height: 150,
                ),
              )),
        ),
      ),
    );
  }
}
