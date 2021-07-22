# Under 'AllSigned' execution policy, a self-signed certificate is needed to sign and run self-written scripts

## Generate new code signing certificate
$params = @{
     Subject = 'CN=PowerShell Code Signing Cert (self-signed), O=fracsinus'
     Type = 'CodeSigning'
     CertStoreLocation = 'Cert:\CurrentUser\My'
     HashAlgorithm = 'sha256'
}
$cert = New-SelfSignedCertificate @params

## Add the new cert to Root and TrustedPublisher stores
$exported = Export-Certificate -Cert $cert -FilePath $home\self_cert.cer
Import-Certificate -FilePath $exported -CertStoreLocation Cert:\CurrentUser\Root
Import-Certificate -FilePath $exported -CertStoreLocation Cert:\CurrentUser\TrustedPublisher
Remove-Item $exported

## Or, manually add new cert to Root and TrustedPublisher using certmgr.msc