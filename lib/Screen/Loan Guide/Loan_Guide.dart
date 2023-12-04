
// ignore_for_file: camel_case_types, invalid_use_of_protected_member, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Widget_Controller/Controller.dart';

class Loan_Guide extends StatefulWidget {
  const Loan_Guide({super.key});

  @override
  State<Loan_Guide> createState() => _Loan_GuideState();
}

class _Loan_GuideState extends State<Loan_Guide> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Loan_Guide', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Loan_Guide', '');
        }, "Loan Guide"),
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
                        itemCount: Title.value.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(
                                  context,
                                  '/LoanDescription',
                                  '/Loan_Guide',
                                  [Title.value[index], details.value[index]]);
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
                                                  Title.value[index],
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
            banner.getBN('/Loan_Guide')
          ],
        ),
      ),
    );
  }

  var Title = [
    "What is Persnoal Loan",
    "What purpose can it be Used?",
    "Which Eligibility criteria for loan",
    "How much can one borrow?",
    "From which bank institution should one borrow?",
    "How do bank decide on the maximum loan amount?",
    "What are the common rates for loan?",
    "Key document required when appling for a loan?",
    "Differene between part payment, prepayment and preclosure",
    "Loan approval process",
    "Credit report and score",
    "How is having a higher credit score beneficial?",
  ].obs;
  var details = [
    """➙  Simply put, it is an unsecured loan taken by individuals from a bank or a non-banking financial company (NBFC) to meet their personal needs. It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc.

➙  Unlike a home or a car loan, a personal loan is not secured against any asset. As it is unsecured and the borrower does not put up collateral like gold or property to avail it, the lender, in case of a default, cannot auction.Simply put, it is an unsecured loan taken by individuals from a bank or a non-banking financial company (NBFC) to meet their personal needs.

➙  It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc. Unlike a home or a car loan, a personal loan is not secured against any asset.

➙  As it is unsecured and the borrower does not put up collateral like gold or property to avail it, the lender, in case of a default, cannot auction.Simply put, it is an unsecured loan taken by individuals from a bank or a non-banking financial company (NBFC) to meet their personal needs.

➙  It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc. Unlike a home or a car loan, a personal loan is not secured against any asset. As it is unsecured and the borrower does not put up collateral like gold or property to avail it, the lender, in case of a default, cannot auction.

➙  Simply put, it is an unsecured loan taken by individuals from a bank or a non-banking financial company (NBFC) to meet their personal needs. It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc. Unlike a home or a car loan, a personal loan is not secured against any asset.

➙  As it is unsecured and the borrower does not put up collateral like gold or property to avail it, the lender, in case of a default, cannot auction.""",
    """➙  It can be used for any personal financial need and the bank will not monitor its use.

➙  It can be utilised for renovating your home, marriage-related expenses, a family vacation, your childs education, purchasing latest electronic gadgets or home appliances, meeting unexpected medical expenses or any other emergencies.

➙  Personal loans are also useful when it comes to investing in business, fixing your car, down payment of new house, etc. """,
    """➙  Although it varies from bank to bank, the general criteria include your age, occupation, income, capacity to repay the loan and place of residence. To avail of a personal loan, you must have a regular income source, whether you are a salaried individual, self-employed business person or a professional.

➙  An individuals eligibility is also affected by the company he is employed with, his credit history, etc. """,
    """➙  It usually depends on your income and varies based on whether you are salaried or self–employed. Usually, the banks restrict the loan amount such that your EMI is not more than 40–50% of your monthly income.

➙  Any existing loans that are being serviced by the applicant are also considered when calculating the personal loan amount.

➙  For the self employed, the loan value is determined on the basis of the profit earned as per the most recent acknowledged profit/Loss statement, while taking into ac… """,
    """➙  It is good to compare the offers of various banks before you settle on one. Some key factors to consider when deciding on a loan provider include interest rates, loan tenure, processing fees, etc. """,
    """➙  Although the loan sanctioning criteria may differ from one bank to another, some key factors determining the maximum loan amount that can be sanctioned to you include your credit score, current income level as well as liabilities.

➙  A high credit score (closer to 900) means you have serviced your previous loans and/or credit card dues properly, leading the lenders to feel that you are a safe borrower, leading to a higher loan amount being sanctioned. Your current income level and liabil .. """,
    """➙  Being unsecured loans, personal loans have a higher interest rate than those on secured home and car loans.

➙  At present, many leading banks and NBFCs offer such loans at interest rates of as low as 11.49%. However, the rate applicable to a borrower is contingent on key factors, including credit score, income level, loan amount and tenure, previous relationship (savings account, loans or credit cards) with the lender, etc """,
    """➙  Though the documentation requirements vary from one financial institution to another, some key documents you will have to provide with your personal loan application include:
*Income proof (salary slip for salaried/recent acknowledged ITR for self-employed)
*Address proof documents
*Identity proof documents
*Certified copies of degree/licence (in case of self-employed individuals) """,
    """➙  Part payment: This amount is less than the full loan principal amount and is made before the loan amount becomes due.
*Prepayment: When you pay off your loan in part before it becomes due as per the EMI schedule.

➙  The prepayment amount may or may not be equal to the total due amount. Prepayment charges are usually in 2–5% range of the outstanding loan amount.

➙  Additionally, many banks do not allow prepayment/preclosure of loan before a specified number of EMIs have been completed.
*Preclosure: It refers to completely paying off a personal loan before the loan tenure has ended. Just like prepayment charge, preclosure charges range from 2– 5% of the loan amount. """,
    """➙  The approval is at the sole discretion of the loan sanctioning officer whose decision is based on the criteria specified by the bank/financial institution

➙  The entire process can take between 48 hours and about two weeks. Once all the necessary documents are submitted and the verification process is completed, the loan, if sanctioned, is disbursed within seven working days by the bank.

➙  Do keep all necessary documents ready along with PDC and/or signed ECS form to avoid delays in loan processing .. """,
    """➙  Since a personal loan is an unsecured loan, therefore your credit history usually plays a significant role in the approval process.

➙  Equifax, Experian and CIBIL TransUnion are the three credit reporting agencies that operate in India.

➙  All 3 have tie-ups with lenders and provide their credit rating services to help lenders evaluate prospective borrowers.

➙  Experian India has collaboration with Union Bank of India, Sundaram Finance, Punjab National Bank, Magna Finance, Indian Bank, Axis Ba .. """,
    """➙  A higher credit score indicates that you have a good track record with respect to loans.

➙  Therefore, if your credit score is high (more than 750 in case of CIBIL TransUnion), your chances of being granted a loan are much.

➙  Additionally, you may be able to negotiate benefits such as a lower interest rate, higher loan amount, waiver of processing charges, etc., by leveraging your high credit score. """,
  ].obs;
}
