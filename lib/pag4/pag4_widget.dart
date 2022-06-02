import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pag4Widget extends StatefulWidget {
  const Pag4Widget({Key key}) : super(key: key);

  @override
  _Pag4WidgetState createState() => _Pag4WidgetState();
}

class _Pag4WidgetState extends State<Pag4Widget> {
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
          padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
          child: Text(
            'Contacto',
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
                padding: EdgeInsetsDirectional.fromSTEB(40, 20, 0, 0),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjCkdlO-Tyl0LCBO4BbA1BPNcaF-Tp6v_Nfw&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  '¿NECESITAS AYUDA?\nRastrea Tu Pedido Preguntas -Frecuentes\nContactar Con Nosotros -Tiendas\nFacturación Electrónica -Denuncia Anónima\n\nHÁGALO HOME CENTER\nAviso De Privacidad -Términos Y Condiciones -Acerca De Nosotros\nFolleto -Cambios Y Devoluciones\nMÁS DE NOSOTROS\nSolicitud De Empleo -Política De Cookies\nResponsabilidad Social -Nuestros Servicios -Blog',
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
