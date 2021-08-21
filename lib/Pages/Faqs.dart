import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FAQPage extends StatelessWidget {
  // const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        title: Text(changeLanguage ? "सोधिने प्रश्न" : 'FAQS'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {
                lang.updateLanguage();
              },
              icon: Icon(Icons.language),
              color: Colors.white,
              iconSize: width * 0.08,
            ),
          ),
        ],
      ),
      // body: ListView.builder(
      //     itemCount: DataSource.questionAnswers.length,
      //     itemBuilder: (context, index) {
      //       return ExpansionTile(
      //         title: Text(
      //           DataSource.questionAnswers[index]['question'],
      //           style: TextStyle(fontWeight: FontWeight.bold),
      //         ),
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(10.0),
      //             child: Text(DataSource.questionAnswers[index]['answer']),
      //           )
      //         ],
      //       );
      //     }),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? 'कोरोना भाइरस के हो?'
                      : "What is a coronavirus?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "कोरोनाभाइरस  को एक ठूलो परिवार हो जो जनावरहरु वा मानिसहरुमा बिरामी हुन सक्छ। मानिसहरुमा, धेरै कोरोनाभाइरसहरु सामान्य चिसो देखि मध्य पूर्व श्वसन सिन्ड्रोम (MERS) र गम्भीर एक्युट रेस्पिरेटरी सिन्ड्रोम (SARS) जस्ता धेरै गम्भीर रोगहरु सम्म श्वासप्रश्वास संक्रमण को लागी ज्ञात छ। भर्खरै पत्ता लगाइएको कोरोनाभाइरसले कोरोनाभाइरस रोग कोभिड-१९ लाई निम्त्याउँछ"
                        : "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19"),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage ? "कोभिड-१९ के हो?" : "What is COVID-19?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "कोभिड-१९ सबैभन्दा भर्खरै पत्ता लागेको कोरोनाभाइरसको कारणले लाग्ने संक्रामक रोग हो। यो नयाँ भाइरस र रोग डिसेम्बर २०१९ मा चीनको वुहानमा प्रकोप सुरु हुनुभन्दा पहिले थाहा थिएन।"
                        : "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "कोभिड-१९ का लक्षणहरु के के हुन्?"
                      : "What are the symptoms of COVID-19?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "कोभिड-१९ को सबैभन्दा सामान्य लक्षण ज्वरो, थकान, र सुख्खा खोकी हो। केहि बिरामीहरु लाई दुखाइ र दुखाइ, नाक भीड, नाक बग्ने, घाँटी दुख्ने वा पखाला हुन सक्छ। यी लक्षणहरु सामान्यतया हल्का हुन्छन् र बिस्तारै शुरू हुन्छ। केहि मानिसहरु संक्रमित हुन्छन् तर कुनै लक्षणहरु विकास गर्दैनन् र अस्वस्थ महसुस गर्दैनन्। धेरै मानिसहरु (लगभग ८०%) विशेष उपचार को आवश्यकता बिना रोग बाट निको हुन्छ। कोभिड -१९ हुने हरेक ६ जना मध्ये १ जना गम्भीर बिरामी हुन्छन् र सास फेर्न गाह्रो हुन्छ। बूढो मानिसहरु, र उच्च रक्तचाप, मुटुको समस्या वा मधुमेह जस्तै अन्तर्निहित चिकित्सा समस्याहरु संग, गम्भीर रोग को विकास को लागी अधिक संभावना छ। ज्वरो, रुघाखोकी र सास फेर्न गाह्रो भएका मानिसहरु लाई चिकित्सा ध्यान खोज्नु पर्छ।"
                        : "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "कोभिड-१९ कसरी सर्छ?"
                      : "How does COVID-19 spread?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "मानिसहरु कोभिड-१९  भाइरस भएकाहरु बाट अरुलाई लाग्न सक्छ। यो रोग नाक वा मुख बाट साना थोपाहरु को माध्यम बाट एक व्यक्ति बाट अर्को व्यक्ति मा सर्न सक्छ जो कोभिड -१९ संग एक व्यक्ति खोकी वा सास फेर्दा फैलन्छ। यी थोपा बस्तुहरु र व्यक्तिको वरिपरि सतहहरु मा भूमि। अन्य मानिसहरु तब यी बस्तुहरु वा सतहहरु लाई छोएर कोभिड -१९ लाई समातेर, त्यसपछि उनीहरुको आँखा, नाक वा मुख छोएर। मानिसहरु कोभिड -१९  लाई पनि समात्न सक्छन् यदि उनीहरु कोभिड -१९ भएका व्यक्ति बाट थोपामा सास फेर्छन् जो खोकी लाग्छन् वा थोपा छोड्छन्। यसैले यो महत्त्वपूर्ण छ कि बिरामी भएको व्यक्ति बाट १ मिटर (३ फिट) भन्दा टाढा रहन।  डब्ल्यूएचओ कोभिड -१९ फैलिने तरिकाहरु मा चलिरहेको अनुसन्धान को आकलन गरीरहेको छ र अपडेट गरिएका निष्कर्ष साझा गर्न जारी रहनेछ।"
                        : "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \nWHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "कोभिड-१९ को कारण बनेको भाइरस हावाको माध्यमबाट सर्न सक्छ?"
                      : "Can the virus that causes COVID-19 be transmitted through the air?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "आज सम्मको अध्ययनले सुझाव दिन्छ कि कोभिड-१९ को कारण हुने भाइरस मुख्यतया हावाको सट्टा श्वासप्रश्वासको थोपाको सम्पर्क बाट सर्दछ"
                        : "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "कोभिड-१९ कुनै लक्षण नभएको व्यक्ति बाट समात्न सकिन्छ?"
                      : "Can CoVID-19 be caught from a person who has no symptoms?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "यो रोग फैलाउने मुख्य तरिका श्वासप्रश्वासको थोप्लाहरु को माध्यम बाट हो जो कसैलाई खोकी लागेको छ। कुनै लक्षण नभएको कसैबाट कोभिड -१९ को संक्रमण हुने जोखिम धेरै कम छ। जे होस्, कोभिड -१९ भएका धेरै मानिसहरु हल्का लक्षण मात्र अनुभव गर्छन्। यो रोग को प्रारम्भिक चरण मा विशेष गरी साँचो हो। तेसैले यो कोभिड-१९ को सिक्न को लागी सम्भव छ जो कोहि हो, उदाहरण को लागी, केवल एक हल्का खाँसी छ र बिरामी महसुस गर्दैन। डब्ल्यूएचओ कोभिड -१९ को प्रसारण को अवधि मा चलिरहेको अनुसन्धान को आकलन गरीरहेको छ र अपडेट गरिएको निष्कर्ष साझा गर्न जारी रहनेछ।"
                        : "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "के म कोभिड -१९ रोग लागेको कसैको मलबाट समात्न सक्छु?"
                      : "Can I catch COVID-19 from the feces of someone with the disease?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "एक संक्रमित व्यक्तिको मल बाट कोभिड-१९ समात्न को जोखिम कम देखिन्छ। जबकि प्रारम्भिक अनुसन्धानले सुझाव दिन्छ कि भाइरस केहि अवस्थामा मल मा उपस्थित हुन सक्छ, यस मार्ग को माध्यम बाट फैलिएको प्रकोप को एक मुख्य विशेषता हैन। डब्ल्यूएचओ कोभिड -१९  फैलिने तरिकाहरु मा चलिरहेको अनुसन्धान को मूल्यांकन गरीरहेको छ र नयाँ निष्कर्ष साझा गर्न जारी रहनेछ। किनकि यो एक जोखिम हो, जे होस्, यो नियमित रूप बाट हात सफा गर्ने अर्को कारण हो, बाथरूम को उपयोग पछि र खाना भन्दा पहिले।"
                        : "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "म कोभिड-१९ समात्ने कत्तिको सम्भावना छ?"
                      : "How likely am I to catch COVID-19?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "त्यहाँ एक कोभिड-१९ फैलन छ कि छैन भनेर, र थप विशेष  सबैभन्दा स्थानहरूमा अधिकांश मानिसहरू पक्रने कोभिड-१९ को जोखिम अझै कम छ - जोखिम तपाईं कहाँ निर्भर गर्दछ।। जे होस्, त्यहाँ अब संसारभरि ठाउँहरु (शहरहरु वा क्षेत्रहरु) छन् जहाँ रोग फैलिरहेको छ। बस्ने, वा भ्रमण गर्ने मानिसहरुको लागी, यी क्षेत्रहरु कोभिड-१९ समात्ने जोखिम बढी छ। सरकार र स्वास्थ्य अधिकारीहरु हरेक पटक कोभिड-१९ को नयाँ केस पहिचान भएपछि कडा कारबाही गरिरहेका छन्। यात्रा, आन्दोलन वा ठूला जमघटहरुमा कुनै स्थानीय प्रतिबन्धहरु संग पालन गर्न निश्चित हुनुहोस्। रोग नियन्त्रण प्रयासहरु संग सहयोग ले कोभिड-१९ समात्न वा फैलाउने तपाइँको जोखिम घटाउनेछ। कोभिड-१९ का प्रकोपहरुलाई नियन्त्रण गर्न सकिन्छ र प्रसारण रोक्न सकिन्छ, जस्तै चीन र केहि अन्य देशहरुमा देखाइएको छ। दुर्भाग्यवश, नयाँ प्रकोप छिटो देखा पर्न सक्छ। यो महत्त्वपूर्ण छ कि तपाइँ कहाँ हुनुहुन्छ वा जान चाहानुहुन्छ भन्ने स्थिति को बारे मा सजग हुनुहोस्। डब्ल्यूएचओ विश्वव्यापी कोभिड-१९ स्थिति मा दैनिक अपडेट प्रकाशित गर्दछ।"
                        : "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "को गम्भीर रोग को विकास को जोखिम मा छ?"
                      : "Who is at risk of developing severe illness?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "जबकि हामी अझै पनी कोभिड-१९ ले मानिसहरु, वृद्ध व्यक्तिहरु र पूर्व-अवस्थित चिकित्सा अवस्थाहरु (जस्तै उच्च रक्तचाप, मुटु रोग, फेफड़ों को रोग, क्यान्सर वा मधुमेह) लाई प्रभावित गर्दछ को बारे मा सिकिरहेका छौं अरु को तुलना मा धेरै पटक गम्भीर रोग को विकास को लागी देखिन्छ।"
                        : "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "के मँ आफ्नो सुरक्षा को लागी मास्क लगाउनु पर्छ?"
                      : "Should I wear a mask to protect myself?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "यदि तपाइँ कोभिड -१९ का लक्षणहरु (विशेष गरी रुघाखोकी) बाट बिरामी हुनुहुन्छ वा कोभिड-१९  हुन सक्ने कसैको हेरचाह गर्दै हुनुहुन्छ भने मात्र मास्क लगाउनुहोस्। डिस्पोजेबल फेस मास्क एक पटक मात्र प्रयोग गर्न सकिन्छ। यदि तपाइँ बिरामी हुनुहुन्न वा बिरामी कसैको हेरचाह गर्दै हुनुहुन्छ भने तपाइँ एक मास्क बर्बाद गर्दै हुनुहुन्छ। मास्कको विश्वव्यापी अभाव छ, त्यसैले डब्लुएचओले मानिसहरुलाई मास्क बुद्धिमानीपूर्वक प्रयोग गर्न आग्रह गर्दछ। डब्ल्यूएचओ सल्लाह दिन्छ कि मेडिकल मास्क को तर्कसंगत उपयोग कीमती संसाधनहरुको अनावश्यक बर्बाद र मास्क को गलत उपयोग बाट बच्न आफैलाई र अरुलाई बचाउने सबैभन्दा प्रभावकारी तरीका कोभिड-१९ विरुद्ध बारम्बार आफ्नो हात सफा गर्ने, कोहिनी वा टिश्यु को मोटो संग आफ्नो खाँसी छोप्ने र कम्तीमा १ मिटर (३ फिट) खाँसी वा हाछ्युँ गर्ने मानिसहरु बाट दूरी कायम राख्नु हो।"
                        : "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  changeLanguage
                      ? "के एन्टीबायोटिक्स कोभिड -१९ को रोकथाम वा उपचारमा प्रभावकारी छन्?"
                      : "Are antibiotics effective in preventing or treating the COVID-19?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(changeLanguage
                        ? "होइन। एन्टिबायोटिक भाइरसहरु बिरुद्ध काम गर्दैनन्, उनीहरु मात्र ब्याक्टेरिया संक्रमण मा काम गर्छन्। कोभिड-१९ एक भाइरस को कारण हो, त्यसैले एंटीबायोटिक्स काम गर्दैनन्। कोभिड-१९ को रोकथाम वा उपचारको साधनको रूपमा एन्टिबायोटिक प्रयोग गर्नुहुँदैन। तिनीहरू केवल एक ब्याक्टेरिया संक्रमण को उपचार को लागी एक चिकित्सक द्वारा निर्देशित को रूप मा प्रयोग गरीनु पर्छ।"
                        : "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection."),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
