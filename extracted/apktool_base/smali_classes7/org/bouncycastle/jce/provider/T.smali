.class public Lorg/bouncycastle/jce/provider/T;
.super Ljava/security/cert/X509CRLEntry;
.source "SourceFile"


# instance fields
.field public b:Lhi/i0$b;

.field public c:Lfi/d;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lhi/i0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/T;->c:Lfi/d;

    return-void
.end method

.method public constructor <init>(Lhi/i0$b;ZLfi/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/jce/provider/T;->d(ZLfi/d;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/T;->c:Lfi/d;

    return-void
.end method


# virtual methods
.method public final a(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Z)Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {v0, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v4

    invoke-virtual {v4}, Lhi/B;->B()Z

    move-result v4

    if-ne p1, v4, :cond_0

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(ZLfi/d;)Lfi/d;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object p1, Lhi/B;->r:Loh/x;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/T;->a(Loh/x;)Lhi/B;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object p1

    invoke-virtual {p1}, Lhi/F;->y()[Lhi/E;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_3

    aget-object v1, p1, p2

    invoke-virtual {v1}, Lhi/E;->g()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lhi/E;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jce/provider/T;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/jce/provider/T;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    iget-object p1, p1, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p0}, Ljava/security/cert/X509CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->c:Lfi/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/T;->c:Lfi/d;

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/T;->c(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/T;->a(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lhi/B;->y()Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/T;->c(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->x()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->y()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/T;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/T;->e:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/T;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/T;->e:Z

    :cond_0
    iget v0, p0, Lorg/bouncycastle/jce/provider/T;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "      userCertificate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/T;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "       revocationDate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/T;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "       certificateIssuer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/T;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/T;->b:Lhi/i0$b;

    invoke-virtual {v3}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "   crlEntryExtensions:"

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loh/x;

    invoke-virtual {v3, v5}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v6

    invoke-virtual {v6}, Lhi/B;->y()Loh/y;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lhi/B;->y()Loh/y;

    move-result-object v7

    invoke-virtual {v7}, Loh/y;->H()[B

    move-result-object v7

    new-instance v8, Loh/r;

    invoke-direct {v8, v7}, Loh/r;-><init>([B)V

    const-string v7, "                       critical("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lhi/B;->B()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ") "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    sget-object v6, Lhi/B;->m:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v6

    invoke-static {v6}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object v6

    invoke-static {v6}, Lhi/o;->u(Ljava/lang/Object;)Lhi/o;

    move-result-object v6

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    sget-object v6, Lhi/B;->r:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Certificate issuer: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v6

    invoke-static {v6}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v6

    invoke-static {v6}, Lei/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "*****"

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
