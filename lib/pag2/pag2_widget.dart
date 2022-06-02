import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pag2Widget extends StatefulWidget {
  const Pag2Widget({Key key}) : super(key: key);

  @override
  _Pag2WidgetState createState() => _Pag2WidgetState();
}

class _Pag2WidgetState extends State<Pag2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
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
                builder: (context) => MenuWidget(),
              ),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
          child: Text(
            'Empresa',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://www.elheraldodechihuahua.com.mx/local/chihuahua/a5pa71-empresa.jpg/ALTERNATES/LANDSCAPE_400/empresa.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Visítanos en nuestras sucursales y adquiere tu servicio 100% garantizado sólo en hágalo. Recuerda que contamos con entrega a domicilio gratis. Localice Sus Sucursales. Envío Gratis Disponible. Rastrear Pedido.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
