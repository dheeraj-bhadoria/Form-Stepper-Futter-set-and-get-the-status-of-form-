import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Form Stepper is used to create an attractive UI to get the status of form
/// It is very customizable you can set its color ( selected color )
/// ( unselected color )
class FormStepper extends StatefulWidget {
  /// Set the current position of the form
  int inProcess = 1;
  /// Set the selected color of the stage
  Color selectedColor;
  /// Set the unselected color of the stage
  Color unSelectedColor;
  /// List of items in the form of List<String>
  List<String> items;
  /// Menu text item text size
  double menuTitleSize;
  /// Define the height of stepper by this
  double height;
  final Function(int) onItemClicked;

  /// You have to pass all these parameters to the form stepper to create
  /// View of stepper
  FormStepper({super.key,
    required this.items,
    required this.inProcess,
    required this.selectedColor,
    required this.unSelectedColor,
    required this.menuTitleSize,
    required this.height,
    required this.onItemClicked});


  @override
  State<FormStepper> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FormStepper> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      height: widget.height,
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:List.generate(widget.items.length, (index) {
            return Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Center(
                          child: Container(
                            width: widget.menuTitleSize*2,
                            height: 2,
                            color: (index==0)?Colors.transparent:(index<widget.inProcess)?widget.selectedColor:widget.unSelectedColor,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            widget.onItemClicked(index);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              width: widget.menuTitleSize*2,
                              height: widget.menuTitleSize*2,
                              color: (index<=widget.inProcess)?widget.selectedColor:widget.unSelectedColor,
                              child: (index<widget.inProcess)?Icon(
                                Icons.check,
                                size: 12,
                                color: (index<=widget.inProcess)?widget.unSelectedColor:widget.selectedColor,
                              ):(index==widget.inProcess)?Icon(
                                Icons.circle,
                                size: 12,
                                color: (index<=widget.inProcess)?widget.unSelectedColor:widget.selectedColor,
                              ):Center(
                                child: Text(index.toString(), style: TextStyle(fontSize: widget.menuTitleSize/1, color: (index<=widget.inProcess)?widget.unSelectedColor:widget.selectedColor),),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: widget.menuTitleSize*2,
                          height: 2,
                          color: (index==widget.items.length-1)?Colors.transparent:(index<widget.inProcess)?widget.selectedColor:widget.unSelectedColor,
                        ),
                      ],
                    ),
                    Container(
                        width: widget.menuTitleSize*6,
                        child: Center(
                          child: Text(widget.items[index].toString(), style: TextStyle(color: (index<=widget.inProcess)?widget.selectedColor:widget.unSelectedColor, fontSize: widget.menuTitleSize), textAlign: TextAlign.center,),
                        )
                    )
                  ],
                )
              ],
            );
          }),
        ),
      ) ,
    );
  }
}
