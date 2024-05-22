<?php


//the subject
//$sub = "mail from me hi hi hi ";
//msg
//$msg = "hi every one it is me ibtisam ";
//rec
//$rec = "ibtisamkharrosheh@gmail.com";
//mail($rec, $sub, $msg);


//$to = "dmarah206@gmail.com";

//$receiver = "ahlamkharrousheh@hotmail.com";
$subject = "email test via php using localhost";
$body ="hi, there ... this is a test email sender from localhost";
//$sender = "From:ibtisamkharrosheh@gmail.com";
//if (mail($receiver, $subject, $body, $sender)) {
 //   echo "Email sent successfully $receiver";
//} else {
 //  echo "Error sending email";
//}
//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

# ------------------
# Create a campaign
# ------------------
# Include the Sendinblue library
//require_once(__DIR__ . "/APIv3-php-library/autoload.php");
# Instantiate the client
//SendinBlue\Client\Configuration::getDefaultConfiguration()->setApiKey("api-key", "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");
//$api_instance = new SendinBlue\Client\Api\EmailCampaignsApi();
//$emailCampaigns = new \SendinBlue\Client\Model\CreateEmailCampaign();
//# Define the campaign settings
//$email_campaigns['name'] = "Campaign sent via the API";
//$email_campaigns['subject'] = "My subject";
//$email_campaigns['sender'] = array("name": "From name", "email":"anshuman.kashyap@sendinblue.com");
//$email_campaigns['type'] = "classic";
//# Content that will be sent
//"htmlContent"=> "Congratulations! You successfully sent this example campaign via the Sendinblue API.",
//# Select the recipients
//"recipients"=> array("listIds"=> [2, 7]),
//# Schedule the sending in one hour
//"scheduledAt"=> "2018-01-01 00:00:01"
//);
//# Make the call to the client
//try {
//    $result = $api_instance->createEmailCampaign($emailCampaigns);
//    print_r($result);
//} catch (Exception $e) {
//    echo 'Exception when calling EmailCampaignsApi->createEmailCampaign: ', $e->getMessage(), PHP_EOL;
//}
////*****iyad
$to = "ibtisamkharrosheh@gmail.com";
//$subject = "My subject to my project";
//$txt = "Hello world!";
//$headers = "From: master@example.com" . "\r\n" .
//    "CC: somebodyelse@example.com";

//mail($to,$subject,$txt,$headers);
//*******iyad
if(isset($_POST['message']) and isset($_POST['name']) and isset($_POST['email']) and isset($_POST['send'])){
    $name = $_POST['name'];
    $emailUser = $_POST['email'];
    $message = $_POST['message'];
    $headers = "From:" .$emailUser. "\r\n" .
        "CC: somebodyelse@example.com";

    $Subject = "MESSAGE FROM:" . $name;
  //  if(mail($to, $Subject, $message, $headers)){
   //     header("location:contactt.php");
  //  }
    if($name == '' ){
        echo "field empty";
    }
    elseif ($message == ''){
        echo "message null";
    }
    elseif ($emailUser == ''){
        echo "email null";
    }
    else{
        if(mail($to, $Subject, $message, $headers)){
                header("location:contactt.php");
             }
        else{
            print_r(" not send email ") ;
        }
    }
}



//if(isset($_POST['send'])) {
//
//    $body = $_POST["message"];
//    $name = $_POST["name"];
//    $subject = "Message From: " . $name;
//    $email = $_POST["email"];
//    $receiver = $email;
//    $sender = "From:ibtisamkharrosheh@gmail.com";
//    if (mail($receiver, $subject, $body)) {
//
//       // header("location:contactt.php");
//        echo $receiver . "Message sent successfully";
//    } else {
//        echo "Message not send";
//    }
//}
//else{
//    echo "There is an empty field";
//}




?>















