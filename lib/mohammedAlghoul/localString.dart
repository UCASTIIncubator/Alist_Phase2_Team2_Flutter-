import 'package:get/get.dart';
class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'hello': 'Future Name Or Mobile Number',
      'phone':'Enter Phone Number',
      'Points':'Points',
      'Total':'Total',
      'Covert':'Covert',
      'password':'Create A Strong Password',
      'Transfer_Points':'Transfer Points',
      'Reset_password':'Transfer Points',
      'New_password':'New password',
      'New_password_Again':' New password Again',
      'Choose_Place':' Choose A Place',
      'Redeem_Points':' Redeem Points',
      'content':'''Your password must be at least 6 characters
and should include a combination of numbers,
 letters and special characters ( % @ \$ ! )'''

    },
    'ar': {
      'hello': 'اسم المستقبل أو رقم جوال',
      'phone':'ادخل الرقم الذي تريد ارسال النقاط اليه',
      'Points':"النقاط",
      'Total':'المجموع',
      'Covert':'تحويل',
      'password':"أنشئ كلمة مرور قوية",
      'Transfer_Points':'تحويل النقاط',
      'Reset_password':'أعد تعيين كلمة المرور',
      'New_password':' كلمة المرور الجديدة',
      'Choose_Place':' اختر مكانا',
      'Redeem_Points':'استبدال النقاط',
      'New_password_Again':' كلمة المرور الجديدة مرة اخري',
      'content':'''يجب أن تتكون كلمة المرور الخاصة بك من 6 أحرف على الأقل
ويجب أن تتضمن مجموعة من الأرقام ،
  الحروف والأحرف الخاصة ( % @ \$ ! )'''
    }
  };
}