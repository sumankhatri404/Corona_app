import 'package:flutter/material.dart';

class SymptomsList extends StatefulWidget {
  const SymptomsList({Key key}) : super(key: key);

  @override
  _SymptomsListState createState() => _SymptomsListState();
}

class _SymptomsListState extends State<SymptomsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: Color(0xFF473F97),
          elevation: 0.0,
          title: Text("Symptoms"),
          centerTitle: true,
        ),
      ),
    );
  }
}

// class Expansion extends StatefulWidget {
//   @override
//   _ExpansionState createState() => _ExpansionState();
// }

// class _ExpansionState extends State<Expansion> {
//   @override
//   Widget build(BuildContext context) {
//     final lang = Provider.of<LanguageProvider>(context);
//     bool changeLanguage = lang.isNepali;
//     var height = MediaQuery.of(context).size.height;
    
//     return Scaffold(
//       body: SafeArea(
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           physics: BouncingScrollPhysics(),
//           children: [
//             Image.asset(
//               'images/tiredness.jpeg',
//               height: height * 0.5,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               changeLanguage ? "१. ज्वरो" : "1.fever".toUpperCase(),
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 changeLanguage
//                     ? "ज्वरो भनेको शरीरको तापक्रम सामान्य भन्दा धेरै हुनु हो। एक सामान्य तापमान व्यक्ति बाट व्यक्ति फरक हुन सक्छ, तर यो सामान्यतया ९८.६ ° F (३७ ° C) को आसपास हुन्छ। ज्वरो रोग होइन। यो सामान्यतया एक संकेत हो कि तपाइँको शरीर एक रोग वा संक्रमण संग लड्न को लागी कोशिश गरीरहेको छ। संक्रमणले धेरै ज्वरो ल्याउँछ"
//                     : "A fever is a body temperature that is higher than normal. A normal temperature can vary from person to person, but it is usually around 98.6 °F (37 °C). A fever is not a disease. It is usually a sign that your body is trying to fight an illness or infection. Infections cause most fevers.",
//                 style: TextStyle(fontSize: 16),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             Divider(
//               thickness: 3,
//             ),

//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               changeLanguage ? "२.सुख्खा खोकी" : "2.dry cough".toUpperCase(),
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 changeLanguage
//                     ? '''सुख्खा खोकी एक खोकी हो जसले वायुमार्गबाट ​​बलगम वा कफ उत्पादन गर्दैन। सुक्खा खोकी भएको व्यक्तिलाई सुख्खा, खरोंच, घाउ, वा घाँटी दुख्न सक्छ। त्यहाँ पनि गलामा एक गुदगुदी वा घाँटी को एक प्याच हो कि सुख्खा लाग्छ, निगलने बेला पनि हुन सक्छ।'''
//                     : '''A dry cough is a cough that does not produce mucus or phlegm from the airways.A person with a dry cough may experience a dry, scratchy, sore, or rough throat. There may also be a sensation of a tickle in the throat or a patch of the throat that feels dry, even when swallowing.There may not be any relief from a dry cough, even after coughing.''',
//                 style: TextStyle(fontSize: 16),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             Divider(
//               thickness: 3,
//             ),

//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               changeLanguage ? "३.थकान" : "3.tiredness".toUpperCase(),
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 changeLanguage
//                     ? "सधैं थकित हुनु पनि भिटामिन को कमी को संकेत हुन सक्छ। यो भिटामिन डी, भिटामिन बी -१२ , आईरन, म्याग्नेशियम, वा पोटेशियम को कम स्तर शामिल हुन सक्छ। एक नियमित रक्त परीक्षण एक कमी को पहिचान गर्न मद्दत गर्न सक्छ। तपाइँको डाक्टर पूरक लिन सिफारिस गर्न सक्नुहुन्छ"
//                     : '''Being tired all the time can also be a sign of vitamin deficiency. This could include low levels of vitamin D, vitamin B-12, iron, magnesium, or potassium. A routine blood test can help identify a deficiency. Your doctor may recommend taking supplements''',
//                 style: TextStyle(fontSize: 16),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             ExpansionTile(
//               title: Text(
//                 changeLanguage ? "कम सामान्य लक्षण" : "Less common symptoms",
//                 style: TextStyle(
//                     height: 1,
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600),
//               ),
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage
//                       ? "१.दुखाइ"
//                       : "1. aches and pains".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "फ्लू, सामान्य रुघाखोकी, र अन्य भाइरल वा जीवाणु संक्रमणले शरीर दुख्न सक्छ। जब यस्तो संक्रमण हुन्छ, प्रतिरक्षा प्रणाली संक्रमण संग लड्न सेतो रक्त कोष पठाउँछ। यो सूजन मा परिणाम हुन सक्छ, जो शरीर मा मांसपेशिहरु दुखाइ र कडा महसुस गर्न छोड्न सक्नुहुन्छ।"
//                         : '''  The flu, the common cold, and other viral or bacterial infections can cause body aches. When such infections occur, the immune system sends white blood cells to fight off the infection. This can result in inflammation, which can leave the muscles in the body feeling achy and stiff.''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 3,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Image.asset(
//                   'images/sore-throat.jpg',
//                   height: 100,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage
//                       ? "२.दुखेको घाँटी"
//                       : "2. sore throat".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "घाँटी दुख्ने घाँटी दुखाइ, सुख्खा, वा घाँटी मा घाँटी दुखाइ हो। घाँटी मा दुखाइ सबैभन्दा सामान्य लक्षणहरु मध्ये एक हो। यो १३ लाख भन्दा बढी डाक्टर को कार्यालयहरु को लागी प्रत्येक बर्ष को लागी खाताहरु को लागी खाताहरु (१ विश्वसनीय स्रोत) ।सबै भन्दा धेरै घाँटी घाँटी संक्रमण, वा सुख्खा हावा जस्तै पर्यावरणीय कारकहरु को कारण हो। जे होस् एक घाँटी दुखाइ असहज हुन सक्छ, यो सामान्यतया टाढा जान्छ।"
//                         : ''' A sore throat is a painful, dry, or scratchy feeling in the throat.Pain in the throat is one of the most common symptoms. It accounts for more than 13 million visits to doctor’s offices each year (1Trusted Source).Most sore throats are caused by infections, or by environmental factors like dry air. Although a sore throat can be uncomfortable, it’ll usually go away on its own.''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 3,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Image.asset(
//                   'images/headache.jpeg',
//                   height: 120,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage ? "३.टाउको दुखाई" : "3.headache".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "टाउको दुखाइ एक सामान्य स्वास्थ्य समस्या हो - धेरैजसो मानिसहरु उनीहरुलाई केहि समय मा अनुभव गर्छन्। टाउको दुखाई को लागी कारक हुन सक्छ: भावनात्मक, जस्तै तनाव, अवसाद, वा चिन्ता। चिकित्सा, जस्तै माइग्रेन वा उच्च रक्तचाप। शारीरिक, जस्तै चोट।"
//                         : '''Headaches are a common health problem — most people experience them at some time. Factors that lead to headaches may be: emotional, such as stress, depression, or anxiety. medical, such as migraine or high blood pressure. physical, such as an injury.''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 3,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Image.asset(
//                   'images/loss-of-smell.jpg',
//                   height: 120,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage
//                       ? "४.स्वाद वा गन्ध को हानि"
//                       : "4.loss of taste or smell".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "यो सामान्य चिसो वा फ्लू को रूप मा माथिल्लो श्वासप्रश्वास संक्रमण को लागी गन्ध र स्वाद को हाम्रो इन्द्रिय लाई प्रभावित गर्न को लागी असामान्य छैन। वास्तव मा, यो अनुमान छ कि गन्ध को एक अस्थायी हानि चिसो र साइनस संक्रमण को 60 प्रतिशत मा हुन्छ। स्वाद को स्वाद र गन्ध को भावना नजिक बाट जोडिएको छ"
//                         : '''It's not uncommon for upper respiratory infections such as the common cold or flu to affect our senses of smell and taste. In fact, it's estimated that a temporary loss of smell happens in over 60 percent of colds and sinus infections. Your sense of taste and sense of smell are closely linked''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 3,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Image.asset(
//                   'images/diarrhoea.jpeg',
//                   height: 120,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage ? "५.पखाला" : "5.diarrhoea".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "पखाला तब हुन्छ जब तपाइँको मल त्याग ढीला वा पानी हुन्छ। पखाला को परिभाषा ढीला वा पानी आंत्र आंदोलन एक दिन मा ३ वा अधिक पटक (वा सामान्य भन्दा धेरै पटक) पारित गरीरहेको छ। पखाला तब हुन्छ जब आन्द्रा को अस्तर तरल पदार्थ अवशोषित गर्न असमर्थ छ, वा यो सक्रिय रूप मा तरल पदार्थ को रहस्य।"
//                         : '''Diarrhoea is when your bowel movements become loose or watery. The definition of diarrhoea is passing loose or watery bowel movements 3 or more times in a day (or more frequently than usual). Diarrhoea occurs when the lining of the intestine is unable to absorb fluid, or it actively secretes fluid.''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//               ],
//             ),
//             ExpansionTile(
//               title: Text(
//                 changeLanguage ? "गम्भीर लक्षण" : "Serious symptoms",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w600,
//                   fontSize: 20,
//                 ),
//               ),
//               children: [
//                 Image.asset(
//                   'images/difficulty-breathing.jpg',
//                   height: 130,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage
//                       ? "१.सास फेर्न गाह्रो"
//                       : "1. difficulty breathing".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "सास फेर्न गाह्रो - जसलाई चिकित्सकीय रुपमा डिस्पने भनिन्छ - अक्सर छाती मा एक तीव्र कसिलो, हावा भोक, सास फेर्न कठिनाई, सास फेर्न वा घुटन को भावना को रूप मा वर्णन गरीन्छ। धेरै कडा व्यायाम, चरम तापमान, मोटापा र उच्च उचाई सबै एक स्वस्थ व्यक्ति मा सास फेर्न सक्छ।"
//                         : '''Shortness of breath — known medically as dyspnea — is often described as an intense tightening in the chest, air hunger, difficulty breathing, breathlessness or a feeling of suffocation. Very strenuous exercise, extreme temperatures, obesity and higher altitude all can cause shortness of breath in a healthy person.''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 3,
//                 ),
//                 Image.asset(
//                   'images/chest-pain.jpg',
//                   height: 130,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage
//                       ? "२.छाती दुखाइ वा दबाब"
//                       : "2. chest pain or pressure".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "एनजाइना छाती दुखाइ वा असुविधा हो जब तपाइँको मुटु को मांसपेशी पर्याप्त अक्सीजन युक्त रगत प्राप्त गर्दैन। यो तपाइँको छाती मा दबाव वा निचोड जस्तै महसुस हुन सक्छ। असुविधा पनि तपाइँको काँध, हात, घाँटी, जबडा, वा पछाडि हुन सक्छ "
//                         : ''' Angina is chest pain or discomfort caused when your heart muscle doesn't get enough oxygen-rich blood. It may feel like pressure or squeezing in your chest. The discomfort also can occur in your shoulders, arms, neck, jaw, or back''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//                 Divider(
//                   thickness: 3,
//                 ),
//                 Image.asset(
//                   'images/lossofspeech.jpg',
//                   height: 130,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   changeLanguage
//                       ? "३.बोली को हानि "
//                       : "3. loss of speech or movement".toUpperCase(),
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     changeLanguage
//                         ? "बोली को कमी वा भाषण को अनुपस्थिति दुबै चिकित्सा र मनोवैज्ञानिक अवस्थाहरु को कारण हुन सक्छ। अनुपस्थित भाषण वा उत्परिवर्तन catatonia को एक संकेत को रूप मा हुन सक्छ, एक राज्य जसमा एक अनुत्तरदायी तर अन्यथा जागृत छ। Catatonia एक संकेत वा स्किजोफ्रेनिया वा अन्य मनोरोग सम्बन्धि मनोवैज्ञानिक शर्तहरु हुन सक्छ। यो पनि गम्भीर अवसाद वा अन्य भावनात्मक विकारहरु को एक संकेत हुन सक्छ। तल सूचीबद्ध antipsychotic दबाइहरु भावनात्मक अवस्था हो कि भाषण को कमी संग catatonia को रूप मा प्रकट हुन सक्छ को उपचार मा प्रयोग गरीन्छ।"
//                         : '''Lack of speech or absence of speech can occur due to both medical and psychological conditions. Absent speech or mutism can occur as a sign of catatonia, a state in which one is unresponsive but otherwise awake. Catatonia can be a sign or schizophrenia or other psychiatric conditions involving psychosis. It may also be a sign of severe depression or other emotional disorders. The antipsychotic medications listed below are used in the treatment of emotional conditions that may manifest as catatonia with lack of speech.''',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               thickness: 5,
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.all(10.0),
//             //   child: Column(
//             //     children: [
//             //       Text(
//             //         '''Seek immediate medical attention if you have serious symptoms. Always call before visiting your doctor or health facility.People with mild symptoms who are otherwise healthy should manage their symptoms at home.On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days''',
//             //         style: TextStyle(
//             //           fontSize: 20,
//             //         ),
//             //         textAlign: TextAlign.justify,
//             //       ),
//             //     ],
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
