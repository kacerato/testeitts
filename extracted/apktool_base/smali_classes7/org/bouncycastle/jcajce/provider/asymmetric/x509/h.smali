.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;
.super Ljava/security/cert/X509Certificate;
.source "SourceFile"

# interfaces
.implements LIj/a;


# instance fields
.field public b:Ldk/f;

.field public c:Lhi/q;

.field public d:Lhi/l;

.field public e:[Z

.field public f:Ljava/lang/String;

.field public g:[B


# direct methods
.method public constructor <init>(Ldk/f;Lhi/q;Lhi/l;[ZLjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->b:Ldk/f;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->d:Lhi/l;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->e:[Z

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->f:Ljava/lang/String;

    iput-object p6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->g:[B

    return-void
.end method

.method public static k(Lhi/q;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->l(Lhi/q;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-virtual {p0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lhi/E;->g()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lhi/E;->g()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lhi/E;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v1}, Lhi/E;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1}, Lhi/E;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :pswitch_2
    :try_start_2
    sget-object v3, Lgi/e;->V:Lfi/f;

    invoke-virtual {v1}, Lhi/E;->x()Loh/g;

    move-result-object v1

    invoke-static {v3, v1}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    invoke-virtual {v1}, Lfi/d;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1}, Lhi/E;->x()Loh/g;

    move-result-object v1

    check-cast v1, Loh/J;

    invoke-interface {v1}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :goto_3
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Lhi/q;Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->m(Lhi/q;Ljava/lang/String;)Loh/y;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Lhi/q;Ljava/lang/String;)Loh/y;
    .locals 1

    invoke-virtual {p0}, Lhi/q;->E()Lhi/j0;

    move-result-object p0

    invoke-virtual {p0}, Lhi/j0;->v()Lhi/C;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhi/B;->y()Loh/y;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not valid till "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->B()Lhi/o0;

    move-result-object v1

    invoke-virtual {v1}, Lhi/o0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate expired on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->u()Lhi/o0;

    move-result-object v1

    invoke-virtual {v1}, Lhi/o0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Lhi/j0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    return-object v0
.end method

.method public g()Lfi/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->x()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->d:Lhi/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhi/l;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->d:Lhi/l;

    invoke-virtual {v0}, Lhi/l;->y()Loh/s;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    invoke-virtual {v0}, Loh/s;->M()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->E()Lhi/j0;

    move-result-object v1

    invoke-virtual {v1}, Lhi/j0;->v()Lhi/C;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {v1, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v4

    invoke-virtual {v4}, Lhi/B;->B()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    const-string v1, "2.5.29.37"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->l(Lhi/q;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "error processing extended key usage extension"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->m(Lhi/q;Ljava/lang/String;)Loh/y;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error parsing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    sget-object v1, Lhi/B;->j:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->k(Lhi/q;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/j;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->x()Lfi/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/j;-><init>(Lfi/d;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/j0;->z()Loh/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Loh/c;->n()I

    move-result v0

    sub-int/2addr v2, v0

    new-array v0, v2, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eq v4, v2, :cond_1

    div-int/lit8 v5, v4, 0x8

    aget-byte v5, v1, v5

    rem-int/lit8 v6, v4, 0x8

    const/16 v7, 0x80

    ushr-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->x()Lfi/d;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->e:[Z

    invoke-static {v0}, Lorg/bouncycastle/util/a;->x([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->E()Lhi/j0;

    move-result-object v1

    invoke-virtual {v1}, Lhi/j0;->v()Lhi/C;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {v1, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v4

    invoke-virtual {v4}, Lhi/B;->B()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->u()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->B()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->D()Lhi/h0;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/a;->q(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to recover public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->y()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->A()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->z()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    sget-object v1, Lhi/B;->i:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->k(Lhi/q;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/j;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->C()Lfi/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/j;-><init>(Lfi/d;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/j0;->F()Loh/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Loh/c;->n()I

    move-result v0

    sub-int/2addr v2, v0

    new-array v0, v2, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eq v4, v2, :cond_1

    div-int/lit8 v5, v4, 0x8

    aget-byte v5, v1, v5

    rem-int/lit8 v6, v4, 0x8

    const/16 v7, 0x80

    ushr-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->C()Lfi/d;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode subject DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->G()I

    move-result v0

    return v0
.end method

.method public h()Lfi/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->C()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->E()Lhi/j0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/j0;->v()Lhi/C;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/x;

    sget-object v3, Lhi/B;->g:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->u:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->v:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->A:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->t:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->q:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->p:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->x:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->k:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->i:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lhi/B;->s:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v2

    invoke-virtual {v2}, Lhi/B;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/security/PublicKey;Ljava/security/Signature;Loh/g;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->A()Lhi/b;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->E()Lhi/j0;

    move-result-object v1

    invoke-virtual {v1}, Lhi/j0;->B()Lhi/b;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->a(Lhi/b;Lhi/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->i(Ljava/security/Signature;Loh/g;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-static {p2}, LJj/f;->b(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p3

    const/16 v0, 0x200

    invoke-direct {p1, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {p3}, Lhi/q;->E()Lhi/j0;

    move-result-object p3

    const-string v0, "DER"

    invoke-virtual {p3, p1, v0}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "certificate does not verify with supplied key"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    instance-of v0, p1, LHj/e;

    const-string v1, "no matching key found"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v5}, Lhi/q;->A()Lhi/b;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->f(Lhi/b;)Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast p1, LHj/e;

    invoke-virtual {p1}, LHj/e;->b()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->A()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v5}, Lhi/q;->z()Loh/c;

    move-result-object v5

    invoke-virtual {v5}, Loh/c;->J()[B

    move-result-object v5

    invoke-static {v5}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v5

    move v6, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v4, v7, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v7

    invoke-static {v7}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->d(Lhi/b;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    invoke-virtual {v7}, Lhi/b;->x()Loh/g;

    move-result-object v7

    invoke-virtual {v5, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v10

    invoke-static {v10}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v10

    invoke-virtual {v10}, Loh/c;->J()[B

    move-result-object v10

    invoke-virtual {p0, v9, v8, v7, v10}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->i(Ljava/security/PublicKey;Ljava/security/Signature;Loh/g;[B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v2

    move v6, v3

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_1
    if-nez v7, :cond_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    throw v7

    :cond_2
    if-eqz v6, :cond_3

    goto/16 :goto_6

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v5}, Lhi/q;->A()Lhi/b;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->f(Lhi/b;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->A()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v5}, Lhi/q;->z()Loh/c;

    move-result-object v5

    invoke-virtual {v5}, Loh/c;->J()[B

    move-result-object v5

    invoke-static {v5}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v5

    move v6, v4

    :goto_3
    invoke-virtual {v5}, Loh/E;->size()I

    move-result v7

    if-eq v4, v7, :cond_6

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v7

    invoke-static {v7}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->d(Lhi/b;)Ljava/lang/String;

    move-result-object v8

    :try_start_1
    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    invoke-virtual {v7}, Lhi/b;->x()Loh/g;

    move-result-object v7

    invoke-virtual {v5, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v9

    invoke-static {v9}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v9

    invoke-virtual {v9}, Loh/c;->J()[B

    move-result-object v9

    invoke-virtual {p0, p1, v8, v7, v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->i(Ljava/security/PublicKey;Ljava/security/Signature;Loh/g;[B)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v2

    move v6, v3

    goto :goto_4

    :catch_1
    move-exception v7

    goto :goto_4

    :catch_2
    move-object v7, v2

    :goto_4
    if-nez v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    throw v7

    :cond_6
    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    if-eqz v0, :cond_a

    sget-object v0, Lyj/c;->Q:Loh/x;

    move-object v1, p1

    check-cast v1, LHj/e;

    invoke-virtual {v1}, LHj/e;->a()Loh/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, LHj/e;->b()Ljava/util/List;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_9

    :try_start_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v1}, Lhi/q;->A()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSignature()[B

    move-result-object v2

    invoke-virtual {p0, v0, p2, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->i(Ljava/security/PublicKey;Ljava/security/Signature;Loh/g;[B)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "no matching signature found"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->A()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSignature()[B

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->i(Ljava/security/PublicKey;Ljava/security/Signature;Loh/g;[B)V

    :goto_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/j;->h([BLjava/lang/StringBuffer;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->c:Lhi/q;

    invoke-virtual {v3}, Lhi/q;->E()Lhi/j0;

    move-result-object v3

    invoke-virtual {v3}, Lhi/j0;->v()Lhi/C;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "       Extensions: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loh/x;

    invoke-virtual {v3, v5}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v6

    invoke-virtual {v6}, Lhi/B;->y()Loh/y;

    move-result-object v7

    if-eqz v7, :cond_6

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
    sget-object v6, Lhi/B;->k:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v6

    invoke-static {v6}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    sget-object v6, Lhi/B;->g:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v6

    invoke-static {v6}, Lhi/N;->w(Ljava/lang/Object;)Lhi/N;

    move-result-object v6

    goto :goto_1

    :cond_2
    sget-object v6, Lyj/c;->b:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lyj/d;

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v7

    invoke-static {v7}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v7

    invoke-direct {v6, v7}, Lyj/d;-><init>(Loh/c;)V

    goto :goto_1

    :cond_3
    sget-object v6, Lyj/c;->d:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lyj/e;

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v7

    invoke-static {v7}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object v7

    invoke-direct {v6, v7}, Lyj/e;-><init>(Loh/q;)V

    goto :goto_1

    :cond_4
    sget-object v6, Lyj/c;->k:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lyj/g;

    invoke-virtual {v8}, Loh/r;->k()Loh/B;

    move-result-object v7

    invoke-static {v7}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object v7

    invoke-direct {v6, v7}, Lyj/g;-><init>(Loh/q;)V

    goto :goto_1

    :cond_5
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

    goto :goto_2

    :catch_0
    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "*****"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h$a;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->j(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h$b;

    invoke-direct {v0, p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h$b;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->j(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h$c;

    invoke-direct {v0, p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h$c;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;Ljava/security/Provider;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;->j(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/d;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider issue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
