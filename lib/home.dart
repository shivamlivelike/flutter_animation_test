import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_test/main.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ListTile(
            title: Text("Animated Opacity"),
            onTap: controller.changeOpacity,
          ),
          Obx(() => AnimatedOpacity(
                opacity: controller.opacity.value,
                duration: const Duration(milliseconds: 700),
                child: Image.network(
                  "https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg",
                  width: 200,
                  height: 200,
                ),
              )),
          ListTile(
            title: Text("Animated Container"),
            onTap: controller.changeContainer,
          ),
          Obx(() => AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                height: controller.height.value,
                width: controller.width.value,
                padding: EdgeInsets.all(controller.padding.value),
                decoration: BoxDecoration(
                  color: controller.color.value,
                  borderRadius: BorderRadius.circular(controller.radius.value),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                  cacheHeight: 100,
                  cacheWidth: 100,
                ),
              )),
          ListTile(
            title: Text("Animated Align"),
            onTap: controller.changeAlignment,
          ),
          Obx(
            () => SizedBox(
              child: AnimatedAlign(
                alignment: controller.alignment.value,
                duration: const Duration(milliseconds: 600),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              height: 200,
              width: 200,
            ),
          ),
          ListTile(
            title: Text("Animated Cross Fade"),
            onTap: () {
              controller.crossFade.value =
                  controller.crossFade.value == CrossFadeState.showSecond
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond;
            },
          ),
          Obx(() => AnimatedCrossFade(
              firstChild: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text("FIRST"),
              ),
              secondChild: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text("SECOND")),
              crossFadeState: controller.crossFade.value,
              duration: const Duration(milliseconds: 700))),
          ListTile(
            title: Text("Animated Positioned"),
            onTap: () {
              controller.left.value =
                  faker.randomGenerator.integer(100, min: 10).toDouble();
              controller.right.value =
                  faker.randomGenerator.integer(100, min: 10).toDouble();
              controller.top.value =
                  faker.randomGenerator.integer(100, min: 10).toDouble();
              controller.bottom.value =
                  faker.randomGenerator.integer(100, min: 10).toDouble();
            },
          ),
          Container(
            color: Colors.black12,
            child: Obx(() => Stack(
                  children: [
                    AnimatedPositioned(
                      child: Image.network(
                          "https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                          width: 100,
                          height: 100),
                      duration: const Duration(milliseconds: 800),
                      top: controller.top.value,
                      right: controller.right.value,
                      bottom: controller.bottom.value,
                      left: controller.left.value,
                    )
                  ],
                )),
            height: 400,
            width: double.infinity,
          ),
          ListTile(
            title: Text("Animated Padding"),
            onTap: () {
              controller.animPadding.value =
                  faker.randomGenerator.integer(30, min: 10).toDouble();
            },
          ),
          Obx(
            () => SizedBox(
                child: AnimatedPadding(
                    padding: EdgeInsets.all(controller.animPadding.value),
                    child:
                        Container(width: 50, height: 50, color: Colors.green),
                    duration: const Duration(milliseconds: 800)),
                height: 100,
                width: 100),
          ),
          ListTile(
            title: Text("Animated Switch"),
            onTap: () {
              controller.showButton.value = !controller.showButton.value;
            },
          ),
          Obx(() => SizedBox(
                child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 780),
                    child: controller.showButton.value
                        ? ElevatedButton(
                            onPressed: () {}, child: Text("Button"))
                        : FloatingActionButton(
                            onPressed: () {},
                          )),
                height: 100,
              )),
          GestureDetector(
            child: Hero(
              tag: "pic1",
              child: Image.network(
                "https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                width: 100,
                height: 100,
              ),
            ),
            onTap: () {
              Get.toNamed(Routes.screen1.toString());
            },
          ),
          GestureDetector(
            child: ListTile(
              title: Hero(
                  tag: "txt1",
                  child: Text(
                    "Name1",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              subtitle: Hero(
                  tag: "txt2",
                  child: Text(
                    "fskjhsgkfkjsh kjsfhkg jhsk jhskfljh gklsafjhgkljfah kjfa gkljahf lkjghfakjlha kjgh akfjslhg kajfh lkfjsh lkfjsh lkdsfjhglkfsjh klfsdjhg klfsjh kjfsdhg kfsdjhg lkjfsdh klfsjhg kldfjsh kldfsjh kdsjlfgh kljfsdhgkjlfdshg kfjsgkfsjh lkfsjdhklfdjsh lkfdh gkjfdhsk jfhslkj fhskl jfdklj hdfskljfh dsl jsfjfslkj fdklj fdsglkfjshg fghskdf gksgkfsg lkfjs gkfjsh lksfdjhg lkfsjhg lkfsjhglk jdfsg lkfsdjhg lksjfghlkfsjdkjsf hlkfsjg lkfjsh kljfs kljfskhgfls kjh lksfjhg klfsjh klsfj gksjfd",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              leading: SizedBox(
                  child: Hero(
                      tag: "img2",
                      child: Image.network(
                          "https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80")),
                  height: 80,
                  width: 80),
            ),
            onTap: () {
              Get.toNamed(Routes.screen2.toString());
            },
          )
        ],
      ),
    );
  }
}

class HomeController extends GetxController {
  final opacity = 1.0.obs;
  final height = 100.0.obs;
  final width = 100.0.obs;
  final padding = 0.0.obs;
  final color = Color.fromRGBO(0, 0, 0, 1.0).obs;
  final radius = 0.0.obs;
  final alignment = Alignment.topCenter.obs;
  final crossFade = CrossFadeState.showFirst.obs;

  final animatedHeight = 100.0.obs;
  final animatedWidth = 100.0.obs;

  final top = 0.0.obs;
  final left = 0.0.obs;
  final right = 0.0.obs;
  final bottom = 0.0.obs;

  final animPadding = 0.0.obs;

  final showButton = false.obs;

  void changeOpacity() {
    opacity.value = faker.randomGenerator.decimal();
  }

  void changeContainer() {
    height.value = 100 +
        (faker.randomGenerator.integer(300, min: 10) *
            faker.randomGenerator.decimal());
    width.value = 100 +
        (faker.randomGenerator.integer(300, min: 10) *
            faker.randomGenerator.decimal());
    padding.value = faker.randomGenerator.integer(20, min: 2).toDouble();
    color.value = Color.fromRGBO(
        faker.randomGenerator.integer(255),
        faker.randomGenerator.integer(255),
        faker.randomGenerator.integer(255),
        faker.randomGenerator.decimal());
    radius.value = faker.randomGenerator.integer(30).toDouble();
  }

  final alignments = <Alignment>[
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomCenter,
    Alignment.bottomRight,
    Alignment.bottomLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.centerLeft
  ];

  void changeAlignment() {
    alignment.value = faker.randomGenerator.element(alignments);
  }
}
