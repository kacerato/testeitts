.class public Lorg/bouncycastle/cert/jcajce/n;
.super Lli/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Ljava/security/PublicKey;)V
    .locals 7

    .line 1
    invoke-interface {p6}, Ljava/security/Key;->getEncoded()[B

    move-result-object p6

    invoke-static {p6}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Ljava/security/PublicKey;)V
    .locals 7

    .line 3
    invoke-interface {p6}, Ljava/security/Key;->getEncoded()[B

    move-result-object p6

    invoke-static {p6}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0}, Lli/n;-><init>(Lli/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Ljava/security/PublicKey;)V
    .locals 7

    .line 5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cert/jcajce/n;-><init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V
    .locals 7

    .line 6
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cert/jcajce/n;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V
    .locals 7

    .line 7
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    invoke-virtual {p5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v5

    invoke-interface {p6}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V

    return-void
.end method


# virtual methods
.method public s(Loh/x;ZLjava/security/cert/X509Certificate;)Lorg/bouncycastle/cert/jcajce/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p1, p2, v0}, Lli/n;->g(Loh/x;ZLli/h;)Lli/n;

    return-object p0
.end method
