import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HagaloWidget extends StatefulWidget {
  const HagaloWidget({Key key}) : super(key: key);

  @override
  _HagaloWidgetState createState() => _HagaloWidgetState();
}

class _HagaloWidgetState extends State<HagaloWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0A9A),
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
            'Hagalo',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 40, 0, 0),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Image.network(
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/pinzas%20of.jpg?raw=true',
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
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/desarmador%20of.jpg?raw=true',
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
                      Image.network(
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/pinzas%20of.jpg?raw=true',
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
                      Image.network(
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/desarmador%20of.jpg?raw=true',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/desarmador%20of.jpg?raw=true',
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
                      Image.network(
                        'https://github.com/AyaxSerranoM/Imagenes-hagalo/blob/main/pinzas%20of.jpg?raw=true',
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
