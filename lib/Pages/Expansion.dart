import 'package:flutter/material.dart';

class Expansion extends StatefulWidget {
  @override
  _ExpansionState createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          ExpansionTile(
            title: Text(
              "Most common symptoms",
              style: TextStyle(
                  height: 1,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            children: [
              Image.asset(
                'images/fever.jpg',
                height: 90,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1.fever".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "A fever is a body temperature that is higher than normal. A normal temperature can vary from person to person, but it is usually around 98.6 °F (37 °C). A fever is not a disease. It is usually a sign that your body is trying to fight an illness or infection. Infections cause most fevers.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Image.asset(
                'images/drycough.jpg',
                height: 90,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2.dry cough".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''A dry cough is a cough that does not produce mucus or phlegm from the airways.A person with a dry cough may experience a dry, scratchy, sore, or rough throat. There may also be a sensation of a tickle in the throat or a patch of the throat that feels dry, even when swallowing.There may not be any relief from a dry cough, even after coughing.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Image.asset(
                'images/tiredness.jpeg',
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "3.tiredness".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ''' Being tired all the time can also be a sign of vitamin deficiency. This could include low levels of vitamin D, vitamin B-12, iron, magnesium, or potassium. A routine blood test can help identify a deficiency. Your doctor may recommend taking supplements''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "Less common symptoms",
              style: TextStyle(
                  height: 1,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            children: [
              Image.asset(
                'images/Aches.jpeg',
                height: 90,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1. aches and pains".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''  The flu, the common cold, and other viral or bacterial infections can cause body aches. When such infections occur, the immune system sends white blood cells to fight off the infection. This can result in inflammation, which can leave the muscles in the body feeling achy and stiff.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/sore-throat.jpg',
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2. sore throat".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ''' A sore throat is a painful, dry, or scratchy feeling in the throat.Pain in the throat is one of the most common symptoms. It accounts for more than 13 million visits to doctor’s offices each year (1Trusted Source).Most sore throats are caused by infections, or by environmental factors like dry air. Although a sore throat can be uncomfortable, it’ll usually go away on its own.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/headache.jpeg',
                height: 120,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "3.headache".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Headaches are a common health problem — most people experience them at some time. Factors that lead to headaches may be: emotional, such as stress, depression, or anxiety. medical, such as migraine or high blood pressure. physical, such as an injury.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/loss-of-smell.jpg',
                height: 120,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "3.loss of taste or smell".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''It's not uncommon for upper respiratory infections such as the common cold or flu to affect our senses of smell and taste. In fact, it's estimated that a temporary loss of smell happens in over 60 percent of colds and sinus infections. Your sense of taste and sense of smell are closely linked''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'images/diarrhoea.jpeg',
                height: 120,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "4.diarrhoea".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Diarrhoea is when your bowel movements become loose or watery. The definition of diarrhoea is passing loose or watery bowel movements 3 or more times in a day (or more frequently than usual). Diarrhoea occurs when the lining of the intestine is unable to absorb fluid, or it actively secretes fluid.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "Serious symptoms",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            children: [
              Image.asset(
                'images/difficulty-breathing.jpg',
                height: 130,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1. difficulty breathing".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Shortness of breath — known medically as dyspnea — is often described as an intense tightening in the chest, air hunger, difficulty breathing, breathlessness or a feeling of suffocation. Very strenuous exercise, extreme temperatures, obesity and higher altitude all can cause shortness of breath in a healthy person.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Image.asset(
                'images/chest-pain.jpg',
                height: 130,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2. chest pain or pressure".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ''' Angina is chest pain or discomfort caused when your heart muscle doesn't get enough oxygen-rich blood. It may feel like pressure or squeezing in your chest. The discomfort also can occur in your shoulders, arms, neck, jaw, or back''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Image.asset(
                'images/lossofspeech.jpg',
                height: 130,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "3. loss of speech or movement".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Lack of speech or absence of speech can occur due to both medical and psychological conditions. Absent speech or mutism can occur as a sign of catatonia, a state in which one is unresponsive but otherwise awake. Catatonia can be a sign or schizophrenia or other psychiatric conditions involving psychosis. It may also be a sign of severe depression or other emotional disorders. The antipsychotic medications listed below are used in the treatment of emotional conditions that may manifest as catatonia with lack of speech.''',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 5,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Column(
          //     children: [
          //       Text(
          //         '''Seek immediate medical attention if you have serious symptoms. Always call before visiting your doctor or health facility.People with mild symptoms who are otherwise healthy should manage their symptoms at home.On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days''',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ),
          //         textAlign: TextAlign.justify,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
