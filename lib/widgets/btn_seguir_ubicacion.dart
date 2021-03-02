part of 'widgets.dart';

class BtnSeguirUbicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mapaBloc = BlocProvider.of<MapaBloc>(context);

    return BlocBuilder<MapaBloc, MapaState>(
      builder: (_, state) {
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 25,
            child: IconButton(
                icon: Icon(
                    mapaBloc.state.seguirUbicacion
                        ? Icons.directions_run_outlined
                        : Icons.accessibility_new_outlined,
                    color: Colors.black87),
                onPressed: () {
                  mapaBloc.add(OnSeguirUbicacion());
                }),
          ),
        );
      },
    );
  }
}
