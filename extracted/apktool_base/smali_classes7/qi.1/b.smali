.class public Lqi/b;
.super Loi/d;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {p1}, Lqi/b;->c([Ljava/security/cert/X509Certificate;)[Lli/h;

    move-result-object p1

    invoke-direct {p0, p1}, Loi/d;-><init>([Lli/h;)V

    return-void
.end method

.method public static varargs c([Ljava/security/cert/X509Certificate;)[Lli/h;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Lli/h;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/cert/jcajce/i;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
