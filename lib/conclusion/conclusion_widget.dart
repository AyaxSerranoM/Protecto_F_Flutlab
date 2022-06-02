import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ConclusionWidget extends StatefulWidget {
  const ConclusionWidget({Key key}) : super(key: key);

  @override
  _ConclusionWidgetState createState() => _ConclusionWidgetState();
}

class _ConclusionWidgetState extends State<ConclusionWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFD700),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageWidget(),
              ),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
          child: Text(
            'Conclusion',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  fontSize: 28,
                ),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 24,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 0, 5, 0),
            child: Icon(
              Icons.control_point,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 28,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD700),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                            child: PageView(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Image.network(
                                  'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/many%202.jpg?raw=true',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Image.network(
                                  'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/martillo%20of.jpg?raw=true',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Image.network(
                                  'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/Ai%20cerrucho.jpg?raw=true',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: SmoothPageIndicator(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                count: 3,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) {
                                  pageViewController.animateToPage(
                                    i,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect: ExpandingDotsEffect(
                                  expansionFactor: 2,
                                  spacing: 8,
                                  radius: 16,
                                  dotWidth: 16,
                                  dotHeight: 16,
                                  dotColor: Color(0xFF0A8A9A),
                                  activeDotColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'En pocas palabras pudo concluir con\nque la manera de desarrollar aplicaciones\nen los ultimos tiempos han cambiado de manera\neadical lo que ha ayudado a su creacion y\ndiseño de esta misma sea mas facil, ademas\nque a lo largo del curso nos brindaron\nherramientas que posiblemente nos van a ser\nde gran utilidad',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/checo%20dorado.jpg?raw=true',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD700),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Image.network(
                          'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/ee918287017d921446fbaebefa427cb5.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Image.network(
                          'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/many%203.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.network(
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/Yuki.jpg?raw=true',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
