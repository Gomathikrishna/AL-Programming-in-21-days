//Day 20 - Interface
//Defines the method and no implementation
//Implemented using codeunits - using implement methods
//reduce dependency, code reusability, support polymorphism
interface "IpaymentProcess"
{
    procedure processPayment(amount: Decimal): Text;
}

codeunit 50101 CreditCardPaymentProcessor implements IpaymentProcess
{
    procedure processPayment(amount: Decimal): Text;
    var
        ConfirmataionMessage: Label 'Oayment of %1 processed via credit card';
    begin
        //code to process payment
        exit(StrSubstNo(ConfirmataionMessage, amount));
    end;
}
