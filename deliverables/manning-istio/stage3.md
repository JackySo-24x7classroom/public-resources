# Encrypting End-User Traffic

> The deliverable for this milestone is the output of the command “openssl s_client -connect $INGRESS:443 -servername marketplace.boutiquestore.com -CAfile root.crt” which verifies that the ingress gateway is configured with the correct TLS certificate and the openssl client can verify the certificate root of trust and successfully complete a TLS handshake.

```bash
$  openssl s_client -connect $INGRESS:443 -servername marketplace.boutiquestore.com -CAfile root.crt
CONNECTED(00000003)
depth=1 O = boutiquestore Inc., CN = boutiquestore.com
verify return:1
depth=0 CN = marketplace.boutiquestore.com, O = boutique store
verify return:1
---
Certificate chain
 0 s:CN = marketplace.boutiquestore.com, O = boutique store
   i:O = boutiquestore Inc., CN = boutiquestore.com
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIC7jCCAdYCAQAwDQYJKoZIhvcNAQELBQAwOTEbMBkGA1UECgwSYm91dGlxdWVz
dG9yZSBJbmMuMRowGAYDVQQDDBFib3V0aXF1ZXN0b3JlLmNvbTAeFw0yMTA5MTMw
NTQ3MTRaFw0yMjA5MTMwNTQ3MTRaMEExJjAkBgNVBAMMHW1hcmtldHBsYWNlLmJv
dXRpcXVlc3RvcmUuY29tMRcwFQYDVQQKDA5ib3V0aXF1ZSBzdG9yZTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBANBcR0Rs09ixNFePpl4XgLVUMNVVg81o
O0Rz12PkxlWeWqUtVCyhy5iEQOJj+20j1TRnlLcpBKZ29Qt1CZsEWYmXuVU8n2ik
eSoJmvLnrEvJpFXEBIKZwb9cXEgINmNgG2CmtT8U733MuQ776C57GoiGZKKuSfDM
SFo5e2TTvhhZ8TYyY9j0Tk9vd9rgB+Kz3paWsOIoklU/0t1npcGKzfhgXJakC514
zdELBhgaSZhLuAOmTJetBRxV4MLuqWYtUeo3Yfyvn0/nDIdB78KQ2Og2bIX2tYUz
hs/5iJrn9pAG+ZAg1Zt0CnlrYpjrqteF1oGe4KTGkmOy//D05GbNjN8CAwEAATAN
BgkqhkiG9w0BAQsFAAOCAQEAUIEJmo3Z9SNoIx1aUCt+yOcZjjuyB+L2B4BvJdR5
gY8EGxQwZ/WGGdRj6F/Kb5Ts6o+gzBDH1JGrimcSSLPkDraHoeYrOw1l5E84sxL+
qh8Yvh7H+8M4KjSHEzZCMhgdAboZpFPLmRQYf/BjpBpJdvbex0ih9ATs9agGUCTL
yjFTvK+HCBZ7s79jbc4gYxozCY3kTMZjAme3L+35sZYKw2ZK/TEiz24eisdCHq7o
2yMvyEDrgzM0+bWbhPxPHphhUq2XvP1N74URbdLmEdAiTeC8MJf8/N0EVGeVgde+
Z8SNHecGzdZ5eH9dAuFnU8Dd6lphoiy1Z6edDERjxXYD0g==
-----END CERTIFICATE-----
subject=CN = marketplace.boutiquestore.com, O = boutique store

issuer=O = boutiquestore Inc., CN = boutiquestore.com

---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: RSA-PSS
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 1244 bytes and written 401 bytes
Verification: OK
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 2048 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 0 (ok)
---
```
