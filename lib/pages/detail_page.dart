
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s6_class_zync/models/recipe_model.dart';

class DetailPage extends StatelessWidget {
  RecipeModel model;
  DetailPage({required this.model});


  showAlert(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            contentPadding: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            //title: Text("Tiutlo de la alerta"),
            //backgroundColor: Colors.white,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Calificación de plato típico",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: Colors.black87,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black87,
                  backgroundImage: NetworkImage(model.image),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text("Calificación excelente",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontSize: 13,
                  ),),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Aceptar",),),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        actions: [
          CircleAvatar(backgroundImage: NetworkImage(model.image),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,),),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(model.image),
              placeholder: AssetImage('assets/images/loading.gif'),
              //height: 500,
              fit:BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 1000),
            ),
            SizedBox(
              height: 20,
            ),
            Text(model.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 20,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(model.description,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                showAlert(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen, // Background color
              ),
              child: Text(
                  "Ver calificación",
                  style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            // Image.network("https://media.licdn.com/dms/image/C4E03AQFYfdDjrC7D3Q/profile-displayphoto-shrink_800_800/0/1609606872055?e=1697673600&v=beta&t=QznX2i7-cHuzo9IIviny4I1utJab-73BeTGsw3CIwkw"),
            // Image.asset('assets/images/loading.gif'),
          ],
        ),
      ),
    );
  }
}