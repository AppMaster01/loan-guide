// ignore_for_file: camel_case_types, invalid_use_of_protected_member, sized_box_for_whitespace, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Ad Controller/Google_Ads.dart';
import '../../Ad Controller/Tap Controller.dart';
import '../../Media_Qury/Media.dart';

class Epf_Service extends StatefulWidget {
  const Epf_Service({super.key});

  @override
  State<Epf_Service> createState() => _Epf_ServiceState();
}

class _Epf_ServiceState extends State<Epf_Service> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: () =>
        backbuttoncontroller.showBackbuttonad(context, '/Epf_Service', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Epf_Service', '');

        }, "EPF Service"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: TEXT.value.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(context, '/EPF_Service_Discription', '/Epf_Service', [TEXT.value[index],EPF_Online_Descrip.value[index]]);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: controllerContainer.getPiker(
                                  double.infinity,
                                  100,
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        SizedBox(height: ScreenSize.fSize_10()),
                                        Row(
                                          children: [
                                            SizedBox(
                                                width: ScreenSize.fSize_15()),
                                            Container(
                                              width: ScreenSize
                                                      .horizontalBlockSize! *
                                                  70,
                                              child: controllerTextlibra.getPiker(
                                                  """${TEXT.value[index]}""",
                                                  0xff000000,
                                                  FontWeight.w600,
                                                  4),
                                            ),
                                            SizedBox(
                                                width: ScreenSize.fSize_10()),
                                            controllerImage.getPiker(
                                                "assert/Icon/Arrow - Right.png",
                                                5)
                                          ],
                                        ),
                                        SizedBox(height: ScreenSize.fSize_10()),
                                      ],
                                    ),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Epf_Service')
          ],
        ),
      ),
    );
  }

  var TEXT = [
    "Establishment Registration",
    "KYC Updation",
    "ECR/Return and Payments",
    "Online Claims Account Transfer",
    " E-Passbook",
    "UMANG",
    "Sharam Suvidha Common ECR",
    "Pensioners Portal",
    "International Workers Portal",
  ].obs;
  var EPF_Online_Descrip = [
    """➙  An Employee Provident Fund is an initiative designed to offer social security benefits to employees of a particular organization, building stronger employee-employer bonds. In order to enjoy these benefits to the hilt, employers need to follow a set of rules and guidelines laid out, with registration forming the first step.

✤ Employers need to provide the following details to successfully register themselves.

➙ Name and address of company

➙ Head office and branch details

➙ Mention date of incorporation/registration of company

➙ Fill up details of employees – total employee strength

➙ Activity the business/enterprise is involved in – i.e. manufacturing, production, service, etc.

➙ Legal details – This pertains to legal status of a company, i.e. whether it is a private firm/public company, partnership or society, etc.

➙ Owner details, including designation and address of Directors and partners

➙ Particulars related to wage component of employees, i.e. total wage disbursed during a month

➙ Details of bank with whom company has banking relationship

➙ PAN details

➙ Basic details of employ

✤ Documents required for EPF Registration Online :

➙ Copy of partnership deed if the company is a registered partnership firm

➙ A copy of the Certificate of incorporation for a Public or Private Limited Company. This should be issued by the Registrar of Companies

➙ Societies should furnish a copy of their registration certificate

➙ Public and Private Limited Companies need to submit a copy of memorandum and Articles of Association

➙ Societies should furnish a copy of the rules and objects of the society

➙ All legal documents which might be required under the Income Tax Act

➙ PAN details of company

➙ Partition deed

➙ Proof of incorporation – first sales invoice/ license issued by competent authorities

➙ Salary details of employees

➙ Balance sheet details""",
    """➙  Upload KYC details in EPF UAN :
To upload the KYC document on the EPF UAN, follow the steps mentioned below:

✤ Visit the EPFOs member portal http://uanmembers.epfoservices.in/

✤ Once the page is displayed on your screen, click on profile on the top bar. From the drop down list, click on upload KYC document.

✤ Once you have clicked on that, select the KYC information you wish to update.

✤ Next, you will have to upload a scanned self-attested copy of the KYC document. The document should be either in jpg, pdf or png format, and keep in mind that the maximum file size of your KYC document does not exceed 300 KB.

✤ Once you have uploaded the document, the status of your KYC document will show as pending. Only once your employer has verified the document and approved of it, the status will show as approved by employer.

✤ Once your employer has approved your document, you will receive an SMS confirming the same.

✤ From then on, the verification process when you make a claim will be much faster and you can expect an approval in no time.

✤ Process of embedding KYC details in EPF UAN :

✤ Once your employer has verified and found the details matching and legitimate, he/she will digitally attest the document.

✤ Once your document has been approved, authorities of the EPFO will then verify your approved document to see if there is any mismatch, discrepancies and so on.

✤ If your documents hasnt been approved you can contact the EPFOs helpline - 1800 118 005 -or mail them at uanepf@epfindia.gov.in.

✤ Once this is all done, if you raise a claim, the verification process will be done in no time and your personal KYC details will be embedded in the EPF UAN system.""",
    """✤ UMANG :

➙ Unified Mobile Application for New-age Governance (UMANG) app was launched in November 2017 as a means of creating a common portal for all the facilities offered by the government. Additionally, other government developed programmes such as the Aadhaar and Digilocker are integrated with the app.

➙ Umang offers over 180 government services to its users. One of these is the services offered by the EPFO. The EPF service on the UMANG app allows users to access information about their EPF account. This service is extended to both employers and employees. Though the EPFO tab on the UMANG app, employees can file claims for EPF withdrawal as well as track the status of their claims. Some of the requirements for using this facility is having your Aadhaar linked to the app, as well as an active UAN.

➙ UMANG service has been made available on multiple channels like mobile application, web, IVR and SMS which can be accessed through smartphones, feature phones, tablets and desktops. UMANG has been created with a thought to add convenience to your lifestyle. UMANG will revolutionize the way how an Indian citizen avails government services today, because it leverages the current accelerated internet and smartphone penetration in our country.""",
    """➙  ECR/Returns and Payments :

 ✤ Step 1: Login to EPFO portal using your ECR portal credentials: Once logged in, you can check the details of Establishment Name,Establishment ID, Exemption Status (PF, Pension, EDLI), Establishment Address and PF office.

✤ Step 2: To upload ECR, go to Payments tab >> ECR [UPLOAD]

✤ Step 3: On next screen, i.e. ECR File Upload, click on ECR Help File to view the ECR file format To upload the ECR, select the Wage Month and Salary Disbursal Date.

✤ Step 4: Select your ECR text file to be uploaded. An ECR text file appears like the one below:

✤ Step 5: Select the remaining fields like File Type (Select ECR), Contribution Rate % (Default value is 12%), add comment, and click on Upload Button:

✤ Step 6: Once uploaded, the file will be validated by the portal against the pre-defined conditions. Once validation is successful, you can see the following screen with Validation Successful message: Click on Verify button to generate TRRN (Temporary Return Reference Number).

✤ Step 7: Generate ECR summary sheet by clicking on Prepare Challan button

✤ Step 8: On the next screen, you can adjust “Total EDLI Contributions (ER Share A/C 21)” (if required), enter Administration & Inspection Charges for “Total EPF Charges (A/C 2)” & “Total EDLI Charges (A/C 22).” Once done, click on Generate Challan Button.

✤ Step 9: From the challan list page that follows, click on “Finalize” icon after reviewing the Total Amount, under Draft Challan List. You can also download Acknowledgment File and Receipt File under “In-Process Challan List”.

✤ Step 10: The finalized ECR (Electronic Challan-cum-Receipt) will look similar to this:

✤ Step 11: Once finalized, you can go ahead and make the payment. Click on “Pay” button to make the payment:

✤ Step 12: Please select Payment Mode as “Online”, and select the bank from the list from which you wish to make the payment. Once selected, click on “Continue” and this will navigate you to payment gateway for completing the payment.""",
    """➙   We bring you steps that you must follow while applying for online EPF transfer.

✤ Step 1: Go to the EPFO website, epfindia.com.

✤ Step 2: The home page will show a section called online transfer claim portal. Click on it.

✤ Step 3: Before logging in, check if you can apply online. If not, you will have to submit a physical copy of Form 13 to either your present or your previous employer.

✤ Step 4: After checking the eligibility, log in and go to the claims section. There, click on request for transfer of funds.

✤ Step 5: Form 13 will open. Fill your PF numbers with both previous and current employers and click on click here to get details. The name and address of the establishment, the PF account held by the EPFO and your name will appear on the screen.

✤ Step 6: Your date of joining, date of leaving and father/spouses name also appear. This is to make sure that the money is transferred to the right account.

✤ Step 7: You will be asked if you want to get the claim attested through your previous employer or your present employer

✤ Step 8: You will have to type the characters shown in the text box and click on Get Pin. You will then have to agree to the declaration in the form by clicking on I Agree.

✤ Step 9: Enter the PIN received on the registered mobile. The application is submitted.

✤ Step 10: Tracking ID is generated.

✤ Step 11: The form will be saved in the system. You have to take a printout of its PDF version, sign it and submit it to the employer within 15 days.

✤ Step 12: Note down the contact details of people authorised to sign on the form. These are shown after the form is submitted.

✤ Step 13: Present and previous employers will verify your details electronically.

✤ Step 14: Once approval comes from both employers, funds are credited to the members account by the EPFO branch office.

✤ Step 15: The employer plays an important role in this process by verifying the authenticity and signature of the employee.

✤ The EPFO keeps you updated through SMSes. You can also track the application through the EPFO website.""",
    """➙  E-Passbook :

✤ To avail the e-Passbook facility, you will have to compulsorily register on the EPFO official website. The following details will have to be filled in while registering:

➙ Your mobile number

➙ PAN number

➙ Aadhar Card number

➙ National Population Register number

➙ Bank account number

➙ Voter ID

➙ Driving license

➙ Passport number

➙ Ration Card number

➙ Your name as on the official documents

➙ Email ID

➙ You will get a captcha image, which you must type in the box provided and you will get the PIN.

➙ The PIN will be received on your registered mobile number via SMS. After you submit the form, you will get a confirmation on your registered mobile and it completes the registration process. You can then login to the EPFO Member Portal and check your EPF status online.

✤ The following is the process to generate your EPF e-Passbook:

➙ Once you have logged in to the member portal, you will get a screen that you can alter your details and also download e-Passbook from this page.

➙ When you select download, you will be asked to select the state and you will have to select the PF office of that state.

➙ If you have no idea which is your PF office, you can find the details at http://epf-india.co.in/ .

➙ You can then enter the EPF account number and your name that is the same as in your EPFO records.

➙ Fill in the captcha details and avail the PIN number.

➙ Enter the pin number that you receive on your registered mobile number via SMS.

➙ Finally hit the button – Get Detail. You can then download the PDF e-Passbook.


✤ Remember the following while downloading EPF e-Passbook:
➙ Only one mobile number can be used for one registration.

➙ You can however edit the mobile number later on.

➙ You can see only one EPF account under one establishment.

➙ You can transfer old EPF account to the new one.

➙ You will not be able to see settled or inoperative accounts.

➙ You can register using different ID proofs and mobile number to check the details of the different accounts.

➙ Your EPF e-Passbook will contain the month and date wise transactions made in your account from the year in which the annual accounts were updated for the establishment.""",
    """➙  In order to link an establishment with your account you need to be registered at USSP, follow below steps:

✤ To get started using the Shram Suvidha Portal right away, just type the following address into your web browser or click on the link below. https://shramsuvidha.gov.in

✤ Search establishment LIN to link an establishment: Check establishment LIN through know your LIN option at portal main page menu.

✤ If you find establishment LIN here, login to your Shram Suvidha account at portal home page. Below screen will be displayed, here enter login details:

1. user id

2. password

3. verification code Click on the submit button to view the landing page.

✤ After login, you will see a menu at left hand side. Choose Link Establishment option from menu.

✤ Now you will see link establishment form, fill out LIN number, previous representative contact details (registered mobile number and registered email id).

✤ If you dont have mobile/email of previous representative, fill LIN number and choose generate authorization letter option. Meet your regional head with generated letter.""",
    """➙  Procedure for Generating Jeevan Pramaan / Digital Life Certificate :

✤ Pre-Requisites for Digital Life Certificate Generation

✤ The pensioner must have a Aadhaar number

✤ The pensioner must have an existing mobile number

✤ Registration of the Aadhaar number with Pension Disbursing Agency ( bank Post Office etc) should have been done already

✤ Biometric device (list of supported devices is given on the JP portal)

✤ PC with Windows 7.0 & above Android Mobile/Tablet 4.0 & above

✤ Internet Connectivity""",
    """✤ What is a CoC?
 Employees who are going on an assignment to a country with which India has an operational Social Security Agreement are exempted from contributing towards social security schemes in the other country (host country) if a CoC has been obtained from the EPFO.

✤ Steps under the new online process :

✤ EPFO has issued a user manual detailing the steps to be followed by the employee and the employer to apply for a CoC as per the new online process. Here is the step by step process for applying for a CoC. For employee:

➙ 1. Visit the international workers portal on the EPFO website: https://iwu.epfindia.gov.in/iwu/ and select APPLICATION FOR COC.

➙ 2. Mention Universal Account Number (UAN) and select appropriate member ID.

➙ 3. Complete and submit the application. A reference number of the application will be generated upon submission and the pre-filled application will be available for download and print.

➙ 4. Download and print the application. Sign the application and upload it along with a copy of ones passport.

➙ To upload the signed application, visit the international workers portal and select UPLOAD SIGNED APPLICATION FOR COC. The employee can download the pre-filled application from here as well.

✤ For employer:

Once the employee has uploaded the signed application, the employer needs to follow these steps:
➙ 1. Visit the international workers portal and login using the same login credential used for the Unified Portal (Employer).

➙ 2. Select Certificate of Coverage from the tab Application.

➙ 3. Select the appropriate Reference Number to get the signed application uploaded by the employee, verify all the details and approve / reject the application accordingly.

➙ 4. Once the application is approved, download the application signed by the employee. To download, select Signed applications-Members under the tab Downloads.

➙ 5. Take a print of the downloaded application and sign with date and stamp at the appropriate place.

➙ 6. Upload the duly signed and stamped application. To upload, select Signed applications-Employer under the tab Upload.

➙ Once the signed copy of the application is uploaded, the relevant PF office will process the application and generate the CoC accordingly.

➙ Both employee and employer can track the status of the application from the international workers portal by selecting TRACK APPLICATION FOR COC and providing application reference number and date of birth of the employee.""",
  ].obs;

}
