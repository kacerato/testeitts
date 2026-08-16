.class public Lorg/bouncycastle/x509/i;
.super Lorg/bouncycastle/x509/c;
.source "SourceFile"


# static fields
.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String; = "org.bouncycastle.x509.CertPathReviewerMessages"


# instance fields
.field public A:Z

.field public p:Ljava/security/cert/CertPath;

.field public q:Ljava/security/cert/PKIXParameters;

.field public r:Ljava/util/Date;

.field public s:Ljava/util/Date;

.field public t:Ljava/util/List;

.field public u:I

.field public v:[Ljava/util/List;

.field public w:[Ljava/util/List;

.field public x:Ljava/security/cert/TrustAnchor;

.field public y:Ljava/security/PublicKey;

.field public z:Ljava/security/cert/PolicyNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lhi/B;->F:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/i;->B:Ljava/lang/String;

    sget-object v0, Lhi/B;->t:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/i;->C:Ljava/lang/String;

    sget-object v0, Lhi/B;->B:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/i;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/x509/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/x509/c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/x509/i;->Y(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method


# virtual methods
.method public A(Lorg/bouncycastle/i18n/a;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/i;->u:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public B(Lorg/bouncycastle/i18n/a;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public C(Lorg/bouncycastle/i18n/a;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/i;->u:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public D(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    const-string v7, "CertPathReviewer.crlIssuerException"

    const-string v8, "CertPathReviewer.distrPtExtError"

    const-string v9, "CertPathReviewer.crlExtractionError"

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    new-instance v0, Lorg/bouncycastle/x509/m;

    invoke-direct {v0}, Lorg/bouncycastle/x509/m;-><init>()V

    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/x509/c;->f(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :try_start_1
    invoke-static {v0, v2}, Lorg/bouncycastle/x509/h;->a(Lorg/bouncycastle/x509/m;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Lorg/bouncycastle/x509/m;

    invoke-direct {v11}, Lorg/bouncycastle/x509/m;-><init>()V

    invoke-static {v11, v2}, Lorg/bouncycastle/x509/h;->a(Lorg/bouncycastle/x509/m;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509CRL;

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    new-instance v14, Lorg/bouncycastle/i18n/a;

    const-string v15, "CertPathReviewer.noCrlInCertstore"

    move-object/from16 v16, v12

    new-instance v12, Lkj/e;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v12, v0}, Lkj/e;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lkj/e;

    invoke-direct {v0, v13}, Lkj/e;-><init>(Ljava/lang/Object;)V

    invoke-static {v11}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v12, v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v14, v10, v15, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v14, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move-object/from16 v16, v12

    :goto_1
    move-object/from16 v12, v16

    goto :goto_3

    :goto_2
    new-instance v11, Lorg/bouncycastle/i18n/a;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v11, v10, v9, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    const/4 v0, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v15

    new-instance v11, Lkj/d;

    invoke-direct {v11, v13}, Lkj/d;-><init>(Ljava/lang/Object;)V

    new-instance v13, Lkj/d;

    invoke-direct {v13, v15}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v11, v13}, [Ljava/lang/Object;

    move-result-object v11

    if-eqz v15, :cond_3

    invoke-virtual {v4, v15}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_5

    :cond_2
    new-instance v13, Lorg/bouncycastle/i18n/a;

    const-string v14, "CertPathReviewer.localInvalidCRL"

    invoke-direct {v13, v10, v14, v11}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v13, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_4

    :cond_3
    :goto_5
    new-instance v12, Lorg/bouncycastle/i18n/a;

    const-string v13, "CertPathReviewer.localValidCRL"

    invoke-direct {v12, v10, v13, v11}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v12, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    const/4 v11, 0x0

    move/from16 v20, v11

    move-object v11, v0

    move/from16 v0, v20

    :goto_6
    if-nez v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v15, v0

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/x509/i;->L(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v18
    :try_end_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v18, :cond_5

    move-object/from16 v18, v11

    :try_start_3
    new-instance v11, Lorg/bouncycastle/i18n/a;
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 p6, v13

    :try_start_4
    const-string v13, "CertPathReviewer.onlineCRLWrongCA"
    :try_end_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v19, v15

    :try_start_5
    new-instance v15, Lkj/e;

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lkj/e;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lkj/e;

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Lkj/e;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lkj/f;

    invoke-direct {v3, v0}, Lkj/f;-><init>(Ljava/lang/Object;)V

    filled-new-array {v15, v14, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v11, v10, v13, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v15, v19

    goto/16 :goto_c

    :catch_2
    move-exception v0

    :goto_8
    move/from16 v19, v15

    goto :goto_c

    :catch_3
    move-exception v0

    :goto_9
    move-object/from16 p6, v13

    goto :goto_8

    :cond_5
    move-object/from16 v18, v11

    move-object/from16 p6, v13

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v11

    new-instance v13, Lkj/d;

    invoke-direct {v13, v3}, Lkj/d;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lkj/d;

    invoke-direct {v3, v11}, Lkj/d;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lkj/f;

    invoke-direct {v14, v0}, Lkj/f;-><init>(Ljava/lang/Object;)V

    filled-new-array {v13, v3, v14}, [Ljava/lang/Object;

    move-result-object v0

    if-eqz v11, :cond_7

    invoke-virtual {v4, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_a

    :cond_6
    new-instance v3, Lorg/bouncycastle/i18n/a;

    const-string v11, "CertPathReviewer.onlineInvalidCRL"

    invoke-direct {v3, v10, v11, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V
    :try_end_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :cond_7
    :goto_a
    :try_start_6
    new-instance v3, Lorg/bouncycastle/i18n/a;

    const-string v11, "CertPathReviewer.onlineValidCRL"

    invoke-direct {v3, v10, v11, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V
    :try_end_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v11, v17

    const/4 v14, 0x1

    goto :goto_d

    :catch_4
    move-exception v0

    const/4 v15, 0x1

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v18, v11

    goto :goto_9

    :cond_8
    move-object/from16 v18, v11

    move-object/from16 p6, v13

    move/from16 v19, v15

    :goto_b
    move-object/from16 v3, p2

    move-object/from16 v13, p6

    move-object/from16 v11, v18

    move/from16 v15, v19

    goto/16 :goto_7

    :goto_c
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedException;->getErrorMessage()Lorg/bouncycastle/i18n/a;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    move-object/from16 v3, p2

    move-object/from16 v13, p6

    move-object/from16 v11, v18

    goto/16 :goto_7

    :cond_9
    move-object/from16 v18, v11

    move/from16 v19, v15

    move/from16 v14, v19

    goto :goto_d

    :cond_a
    move-object/from16 v18, v11

    move v14, v0

    :goto_d
    if-eqz v11, :cond_1b

    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v3, v0

    const/4 v12, 0x6

    if-le v3, v12, :cond_b

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noCrlSigningPermited"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :cond_c
    :goto_e
    if-eqz v5, :cond_1a

    :try_start_7
    const-string v0, "BC"

    invoke-virtual {v11, v5, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_8
    sget-object v3, Lhi/B;->m:Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v3

    invoke-static {v3}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object v3
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v3, :cond_d

    sget-object v5, Lorg/bouncycastle/x509/c;->o:[Ljava/lang/String;

    invoke-virtual {v3}, Loh/j;->L()I

    move-result v3

    aget-object v3, v5, v3

    move-object/from16 v16, v3

    goto :goto_f

    :catch_6
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.crlReasonExtError"

    invoke-direct {v2, v10, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    const/16 v16, 0x0

    :goto_f
    if-nez v16, :cond_e

    sget-object v3, Lorg/bouncycastle/x509/c;->o:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v16, v3, v5

    :cond_e
    move-object/from16 v3, v16

    new-instance v5, Lorg/bouncycastle/i18n/b;

    invoke-direct {v5, v10, v3}, Lorg/bouncycastle/i18n/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Lorg/bouncycastle/i18n/a;

    new-instance v12, Lkj/d;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v12, v0}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v12, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "CertPathReviewer.revokedAfterValidation"

    invoke-direct {v3, v10, v5, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_10

    :cond_f
    new-instance v2, Lorg/bouncycastle/i18n/a;

    new-instance v3, Lkj/d;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v3, v0}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "CertPathReviewer.certRevoked"

    invoke-direct {v2, v10, v3, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v0

    :cond_10
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.notRevoked"

    invoke-direct {v0, v10, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    :goto_10
    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v4, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Lorg/bouncycastle/i18n/a;

    new-instance v4, Lkj/d;

    invoke-direct {v4, v0}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "CertPathReviewer.crlUpdateAvailable"

    invoke-direct {v3, v10, v4, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v6}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    :cond_11
    :try_start_9
    sget-object v0, Lorg/bouncycastle/x509/c;->h:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v0
    :try_end_9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_d

    :try_start_a
    sget-object v3, Lorg/bouncycastle/x509/c;->i:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v3
    :try_end_a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_c

    if-eqz v3, :cond_14

    new-instance v4, Lorg/bouncycastle/x509/m;

    invoke-direct {v4}, Lorg/bouncycastle/x509/m;-><init>()V

    :try_start_b
    invoke-static {v11}, Lorg/bouncycastle/x509/c;->h(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    check-cast v3, Loh/s;

    invoke-virtual {v3}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    :try_start_c
    sget-object v3, Lorg/bouncycastle/x509/c;->k:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v3

    check-cast v3, Loh/s;

    invoke-virtual {v3}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_9

    :try_start_d
    invoke-static {v4, v2}, Lorg/bouncycastle/x509/h;->a(Lorg/bouncycastle/x509/m;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_8

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    :try_start_e
    sget-object v4, Lorg/bouncycastle/x509/c;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v3
    :try_end_e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_7

    invoke-static {v0, v3}, Lorg/bouncycastle/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_11

    :catch_7
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v10, v8}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :cond_13
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noBaseCRL"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :catch_8
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v10, v9}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :catch_9
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.crlNbrExtError"

    invoke-direct {v2, v10, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :catch_a
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v10, v7}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :cond_14
    :goto_11
    if-eqz v0, :cond_1b

    invoke-static {v0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object v0

    :try_start_f
    sget-object v2, Lorg/bouncycastle/x509/c;->b:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v2

    invoke-static {v2}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object v2
    :try_end_f
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_f .. :try_end_f} :catch_b

    invoke-virtual {v0}, Lhi/L;->E()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lhi/l;->z()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_12

    :cond_15
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.crlOnlyUserCert"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :cond_16
    :goto_12
    invoke-virtual {v0}, Lhi/L;->D()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lhi/l;->z()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_13

    :cond_17
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.crlOnlyCaCert"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :cond_18
    :goto_13
    invoke-virtual {v0}, Lhi/L;->C()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_14

    :cond_19
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.crlOnlyAttrCert"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :catch_b
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.crlBCExtError"

    invoke-direct {v2, v10, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :catch_c
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.deltaCrlExtError"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :catch_d
    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-direct {v0, v10, v8}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :catch_e
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.crlVerifyFailed"

    invoke-direct {v2, v10, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3

    :cond_1a
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :cond_1b
    :goto_14
    if-eqz v14, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noValidCrlFound"

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :catch_f
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v10, v7}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final E()V
    .locals 8

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    iget-object v1, p0, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v3}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v5, Lorg/bouncycastle/x509/c;->f:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->g:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->h:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->i:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->j:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->b:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->d:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/x509/c;->e:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-nez v2, :cond_2

    sget-object v5, Lhi/B;->y:Loh/x;

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    sget-object v5, Lorg/bouncycastle/x509/i;->B:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/x509/i;->a0(Ljava/security/cert/X509Certificate;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_4

    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v6, v3, v4}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_3
    new-instance v3, Lorg/bouncycastle/i18n/a;

    const-string v4, "CertPathReviewer.criticalExtensionError"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v1, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lorg/bouncycastle/i18n/a;

    const-string v5, "CertPathReviewer.unknownCriticalExt"

    new-instance v6, Loh/x;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Loh/x;-><init>(Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :goto_5
    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.certPathCheckerError"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v1, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedException;->getErrorMessage()Lorg/bouncycastle/i18n/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_6
    return-void
.end method

.method public final F()V
    .locals 9

    new-instance v0, Lorg/bouncycastle/jce/provider/H;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/H;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-static {v2}, Lorg/bouncycastle/x509/c;->q(Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v2}, Lorg/bouncycastle/x509/c;->m(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    new-instance v6, Loh/r;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Loh/r;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v6}, Loh/r;->k()Loh/B;

    move-result-object v6

    check-cast v6, Loh/E;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v0, v6}, Lorg/bouncycastle/jce/provider/H;->e(Loh/E;)V
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v0, v6}, Lorg/bouncycastle/jce/provider/H;->c(Loh/E;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    sget-object v3, Lorg/bouncycastle/x509/c;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v3

    check-cast v3, Loh/E;
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v3, :cond_0

    move v6, v4

    :goto_1
    :try_start_6
    invoke-virtual {v3}, Loh/E;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v7

    invoke-static {v7}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v7
    :try_end_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v0, v7}, Lorg/bouncycastle/jce/provider/H;->d(Lhi/E;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/jce/provider/H;->b(Lhi/E;)V
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.notPermittedEmail"

    new-instance v4, Lkj/e;

    invoke-direct {v4, v7}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.subjAltNameExtError"

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v4, "CertPathReviewer.excludedDN"

    new-instance v6, Lkj/e;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v5, v4, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_4
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v4, "CertPathReviewer.notPermittedDN"

    new-instance v6, Lkj/e;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v5, v4, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_5
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v4, "CertPathReviewer.ncSubjectNameError"

    new-instance v6, Lkj/e;

    invoke-direct {v6, v3}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v5, v4, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_0
    :try_start_9
    sget-object v3, Lorg/bouncycastle/x509/c;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v2

    check-cast v2, Loh/E;
    :try_end_9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v2, :cond_2

    :try_start_a
    invoke-static {v2}, Lhi/P;->y(Ljava/lang/Object;)Lhi/P;

    move-result-object v2

    invoke-virtual {v2}, Lhi/P;->z()[Lhi/H;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jce/provider/H;->h([Lhi/H;)V

    :cond_1
    invoke-virtual {v2}, Lhi/P;->x()[Lhi/H;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_2
    array-length v3, v2

    if-eq v4, v3, :cond_2

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jce/provider/H;->a(Lhi/H;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.ncExtError"

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_0

    :goto_3
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedException;->getErrorMessage()Lorg/bouncycastle/i18n/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_3
    return-void
.end method

.method public final G()V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/x509/i;->u:I

    iget-object v1, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-lez v1, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lorg/bouncycastle/x509/c;->q(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-nez v5, :cond_1

    if-gtz v0, :cond_0

    new-instance v5, Lorg/bouncycastle/i18n/a;

    const-string v6, "CertPathReviewer.pathLengthExtended"

    invoke-direct {v5, v3, v6}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :try_start_0
    sget-object v5, Lorg/bouncycastle/x509/c;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v4

    invoke-static {v4}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v4, Lorg/bouncycastle/i18n/a;

    const-string v5, "CertPathReviewer.processLengthConstError"

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lhi/l;->z()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lhi/l;->y()Loh/s;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Loh/s;->M()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CertPathReviewer.totalPathLength"

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/i;->B(Lorg/bouncycastle/i18n/a;)V

    return-void
.end method

.method public final H()V
    .locals 35

    move-object/from16 v1, p0

    const-string v2, "CertPathReviewer.policyExtError"

    iget-object v0, v1, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iget v3, v1, Lorg/bouncycastle/x509/i;->u:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Ljava/util/ArrayList;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v7, "2.5.29.32.0"

    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v15, Lorg/bouncycastle/jce/provider/I;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const-string v14, "2.5.29.32.0"

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/jce/provider/I;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v8, v5, v6

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    iget v8, v1, Lorg/bouncycastle/x509/i;->u:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    iget-object v10, v1, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_2

    :cond_2
    iget v10, v1, Lorg/bouncycastle/x509/i;->u:I

    add-int/2addr v10, v9

    :goto_2
    iget-object v11, v1, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    iget v11, v1, Lorg/bouncycastle/x509/i;->u:I

    add-int/2addr v11, v9

    :goto_3
    :try_start_0
    iget-object v12, v1, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v12, v9

    move-object v15, v4

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_4
    const-string v14, "CertPathReviewer.policyConstExtError"

    const-string v9, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-ltz v12, :cond_2f

    :try_start_1
    iget v4, v1, Lorg/bouncycastle/x509/i;->u:I

    sub-int/2addr v4, v12

    iget-object v6, v1, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v25, v3

    :try_start_2
    sget-object v3, Lorg/bouncycastle/x509/c;->a:Ljava/lang/String;

    invoke-static {v6, v3}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v3

    check-cast v3, Loh/E;
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v26, v14

    const-string v14, "CertPathReviewer.policyQualifierError"

    if-eqz v3, :cond_18

    if-eqz v15, :cond_18

    :try_start_3
    invoke-virtual {v3}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v17

    move-object/from16 v27, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v18

    move-object/from16 v28, v15

    invoke-virtual/range {v18 .. v18}, Lhi/W;->v()Loh/x;

    move-result-object v15

    move-object/from16 v29, v2

    invoke-virtual {v15}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v2, :cond_4

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lhi/W;->x()Loh/E;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/x509/c;->k(Loh/E;)Ljava/util/Set;

    move-result-object v2
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {v4, v5, v15, v2}, Lorg/bouncycastle/x509/c;->t(I[Ljava/util/List;Loh/x;Ljava/util/Set;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v4, v5, v15, v2}, Lorg/bouncycastle/x509/c;->u(I[Ljava/util/List;Loh/x;Ljava/util/Set;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_30

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v9, v14}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    :goto_6
    move-object/from16 v15, v28

    move-object/from16 v2, v29

    goto :goto_5

    :cond_5
    move-object/from16 v29, v2

    move-object/from16 v28, v15

    if-eqz v13, :cond_8

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_8

    :cond_6
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    :goto_8
    move-object v13, v0

    :cond_9
    if-gtz v10, :cond_b

    iget v0, v1, Lorg/bouncycastle/x509/i;->u:I

    if-ge v4, v0, :cond_a

    invoke-static {v6}, Lorg/bouncycastle/x509/c;->q(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v30, v13

    goto/16 :goto_f

    :cond_b
    :goto_9
    invoke-virtual {v3}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v2

    invoke-virtual {v2}, Lhi/W;->v()Loh/x;

    move-result-object v15

    invoke-virtual {v15}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v15, :cond_c

    :try_start_6
    invoke-virtual {v2}, Lhi/W;->x()Loh/E;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/x509/c;->k(Loh/E;)Ljava/util/Set;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v2, v4, -0x1

    :try_start_7
    aget-object v2, v5, v2

    move-object/from16 v30, v13

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v15, v13, :cond_13

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/I;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v32, v2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move/from16 v33, v10

    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_d

    check-cast v2, Ljava/lang/String;

    goto :goto_c

    :cond_d
    instance-of v10, v2, Loh/x;

    if-eqz v10, :cond_11

    check-cast v2, Loh/x;

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/I;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    const/16 v17, 0x0

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/jce/provider/I;

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v17, 0x1

    :cond_e
    move-object/from16 v10, v19

    goto :goto_d

    :cond_f
    if-nez v17, :cond_10

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v34, v11

    new-instance v11, Lorg/bouncycastle/jce/provider/I;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v17, v11

    move/from16 v19, v4

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v24}, Lorg/bouncycastle/jce/provider/I;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v13, v11}, Lorg/bouncycastle/jce/provider/I;->a(Lorg/bouncycastle/jce/provider/I;)V

    aget-object v2, v5, v4

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move/from16 v34, v11

    :goto_e
    move-object/from16 v2, v32

    move/from16 v10, v33

    move/from16 v11, v34

    goto :goto_b

    :cond_11
    move-object/from16 v2, v32

    move/from16 v10, v33

    goto :goto_b

    :cond_12
    move-object/from16 v32, v2

    move/from16 v33, v10

    move/from16 v34, v11

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    :cond_13
    move/from16 v33, v10

    move/from16 v34, v11

    goto :goto_f

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v9, v14}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :goto_f
    add-int/lit8 v0, v4, -0x1

    move-object/from16 v15, v28

    :goto_10
    if-ltz v0, :cond_16

    aget-object v2, v5, v0

    const/4 v10, 0x0

    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_15

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/I;->c()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {v15, v5, v11}, Lorg/bouncycastle/x509/c;->v(Lorg/bouncycastle/jce/provider/I;[Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;

    move-result-object v11

    move-object v15, v11

    if-nez v11, :cond_14

    goto :goto_12

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_15
    :goto_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_16
    invoke-interface {v6}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v2, Lorg/bouncycastle/x509/c;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    aget-object v2, v5, v4

    const/4 v10, 0x0

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_17

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v11, v0}, Lorg/bouncycastle/jce/provider/I;->e(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_17
    move-object/from16 v13, v30

    goto :goto_14

    :cond_18
    move-object/from16 v27, v0

    move-object/from16 v29, v2

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    :goto_14
    if-nez v3, :cond_19

    const/4 v15, 0x0

    :cond_19
    if-gtz v8, :cond_1b

    if-eqz v15, :cond_1a

    goto :goto_15

    :cond_1a
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noValidPolicyTree"

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :cond_1b
    :goto_15
    iget v0, v1, Lorg/bouncycastle/x509/i;->u:I
    :try_end_7
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_0

    if-eq v4, v0, :cond_2d

    :try_start_8
    sget-object v0, Lorg/bouncycastle/x509/c;->c:Ljava/lang/String;

    invoke-static {v6, v0}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v0
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v0, :cond_1e

    :try_start_9
    move-object v2, v0

    check-cast v2, Loh/E;

    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v2}, Loh/E;->size()I

    move-result v10

    if-ge v3, v10, :cond_1e

    invoke-virtual {v2, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v10

    check-cast v10, Loh/E;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Loh/E;->I(I)Loh/g;

    move-result-object v17

    check-cast v17, Loh/x;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Loh/E;->I(I)Loh/g;

    move-result-object v10

    check-cast v10, Loh/x;

    invoke-virtual/range {v17 .. v17}, Loh/x;->J()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_0

    move-object/from16 v17, v2

    const-string v2, "CertPathReviewer.invalidPolicyMapping"

    if-nez v11, :cond_1d

    :try_start_a
    invoke-virtual {v10}, Loh/x;->J()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v17

    goto :goto_16

    :cond_1c
    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1d
    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1e
    if-eqz v0, :cond_24

    check-cast v0, Loh/E;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    :goto_17
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v11

    if-ge v10, v11, :cond_20

    invoke-virtual {v0, v10}, Loh/E;->I(I)Loh/g;

    move-result-object v11

    check-cast v11, Loh/E;

    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v18

    check-cast v18, Loh/x;

    invoke-virtual/range {v18 .. v18}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v13

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Loh/E;->I(I)Loh/g;

    move-result-object v11

    check-cast v11, Loh/x;

    invoke-virtual {v11}, Loh/x;->J()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1f
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    move-object/from16 v13, v18

    goto :goto_17

    :cond_20
    move-object/from16 v18, v13

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_0

    if-lez v34, :cond_21

    :try_start_b
    invoke-static {v4, v5, v3, v2, v6}, Lorg/bouncycastle/x509/c;->r(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_0

    move-object/from16 v10, v29

    goto :goto_1a

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    new-instance v0, Lorg/bouncycastle/i18n/a;

    move-object/from16 v10, v29

    invoke-direct {v0, v9, v10}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_21
    move-object/from16 v10, v29

    if-gtz v34, :cond_22

    invoke-static {v4, v5, v3, v15}, Lorg/bouncycastle/x509/c;->s(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;

    move-result-object v3

    move-object v15, v3

    :cond_22
    :goto_1a
    move-object/from16 v29, v10

    goto :goto_19

    :cond_23
    :goto_1b
    move-object/from16 v10, v29

    goto :goto_1c

    :cond_24
    move-object/from16 v18, v13

    goto :goto_1b

    :goto_1c
    invoke-static {v6}, Lorg/bouncycastle/x509/c;->q(Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_0

    if-nez v0, :cond_28

    if-eqz v8, :cond_25

    add-int/lit8 v8, v8, -0x1

    :cond_25
    if-eqz v34, :cond_26

    add-int/lit8 v11, v34, -0x1

    goto :goto_1d

    :cond_26
    move/from16 v11, v34

    :goto_1d
    if-eqz v33, :cond_27

    add-int/lit8 v0, v33, -0x1

    goto :goto_1e

    :cond_27
    move/from16 v0, v33

    goto :goto_1e

    :cond_28
    move/from16 v0, v33

    move/from16 v11, v34

    :goto_1e
    :try_start_d
    sget-object v2, Lorg/bouncycastle/x509/c;->j:Ljava/lang/String;

    invoke-static {v6, v2}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v2

    check-cast v2, Loh/E;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v2

    :cond_29
    :goto_1f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/M;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v13, 0x1

    if-eq v4, v13, :cond_2a

    goto :goto_1f

    :cond_2a
    const/4 v4, 0x0

    invoke-static {v3, v4}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v3

    invoke-virtual {v3}, Loh/s;->O()I

    move-result v3

    if-ge v3, v11, :cond_29

    move v11, v3

    goto :goto_1f

    :cond_2b
    const/4 v4, 0x0

    invoke-static {v3, v4}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v3

    invoke-virtual {v3}, Loh/s;->O()I

    move-result v3
    :try_end_d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_0

    if-ge v3, v8, :cond_29

    move v8, v3

    goto :goto_1f

    :cond_2c
    :try_start_e
    sget-object v2, Lorg/bouncycastle/x509/c;->g:Ljava/lang/String;

    invoke-static {v6, v2}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v2

    check-cast v2, Loh/s;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Loh/s;->O()I

    move-result v2
    :try_end_e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_0

    if-ge v2, v0, :cond_2e

    move v0, v2

    goto :goto_20

    :catch_5
    :try_start_f
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.policyInhibitExtError"

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_6
    new-instance v0, Lorg/bouncycastle/i18n/a;

    move-object/from16 v2, v26

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_7
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.policyMapExtError"

    invoke-direct {v2, v9, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2d
    move-object/from16 v18, v13

    move-object/from16 v10, v29

    move/from16 v0, v33

    move/from16 v11, v34

    :cond_2e
    :goto_20
    add-int/lit8 v12, v12, -0x1

    move-object v4, v6

    move-object v2, v10

    move-object/from16 v13, v18

    move/from16 v3, v25

    const/4 v6, 0x0

    move v10, v0

    move-object/from16 v0, v27

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v10, v2

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v9, v10}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2f
    move-object/from16 v27, v0

    move/from16 v25, v3

    move-object v2, v14

    move-object/from16 v28, v15

    invoke-static {v4}, Lorg/bouncycastle/x509/c;->q(Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_f
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_0

    if-nez v0, :cond_30

    if-lez v8, :cond_30

    add-int/lit8 v8, v8, -0x1

    :cond_30
    :try_start_10
    sget-object v0, Lorg/bouncycastle/x509/c;->j:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    move v11, v8

    :cond_31
    :goto_21
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/M;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_32

    const/4 v4, 0x0

    goto :goto_21

    :cond_32
    const/4 v4, 0x0

    invoke-static {v3, v4}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v3

    invoke-virtual {v3}, Loh/s;->O()I

    move-result v3
    :try_end_10
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_10 .. :try_end_10} :catch_0

    if-nez v3, :cond_31

    move v11, v4

    goto :goto_21

    :cond_33
    const/4 v4, 0x0

    move v8, v11

    goto :goto_22

    :cond_34
    const/4 v4, 0x0

    :goto_22
    const-string v0, "CertPathReviewer.explicitPolicy"

    if-nez v28, :cond_36

    :try_start_11
    iget-object v2, v1, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v15, 0x0

    goto/16 :goto_2f

    :cond_35
    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v9, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v0, v2, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_36
    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/x509/c;->o(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v11, v4

    move/from16 v3, v25

    :goto_23
    if-ge v11, v3, :cond_39

    aget-object v2, v5, v11

    move v6, v4

    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_38

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/I;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    :goto_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_38
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3a
    iget v0, v1, Lorg/bouncycastle/x509/i;->u:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move-object/from16 v15, v28

    :goto_27
    if-ltz v0, :cond_48

    aget-object v2, v5, v0

    move v11, v4

    :goto_28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_3c

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/I;->c()Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-static {v15, v5, v3}, Lorg/bouncycastle/x509/c;->v(Lorg/bouncycastle/jce/provider/I;[Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;

    move-result-object v15

    :cond_3b
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_3d
    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v9, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v0, v2, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_3e
    move-object/from16 v15, v28

    goto/16 :goto_2f

    :cond_3f
    move/from16 v3, v25

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v11, v4

    :goto_29
    if-ge v11, v3, :cond_43

    aget-object v2, v5, v11

    move v6, v4

    :goto_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_42

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/I;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    :cond_40
    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_40

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_42
    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    :cond_43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v15, v28

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v27

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-static {v15, v5, v2}, Lorg/bouncycastle/x509/c;->v(Lorg/bouncycastle/jce/provider/I;[Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;

    move-result-object v2

    move-object v15, v2

    :cond_44
    move-object/from16 v27, v6

    goto :goto_2c

    :cond_45
    if-eqz v15, :cond_48

    iget v0, v1, Lorg/bouncycastle/x509/i;->u:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_2d
    if-ltz v0, :cond_48

    aget-object v2, v5, v0

    move v11, v4

    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_47

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/I;->c()Z

    move-result v6

    if-nez v6, :cond_46

    invoke-static {v15, v5, v3}, Lorg/bouncycastle/x509/c;->v(Lorg/bouncycastle/jce/provider/I;[Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;

    move-result-object v15

    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_48
    :goto_2f
    if-gtz v8, :cond_4a

    if-eqz v15, :cond_49

    goto :goto_31

    :cond_49
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.invalidPolicy"

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw v2

    :catch_9
    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_11
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_11 .. :try_end_11} :catch_0

    :goto_30
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedException;->getErrorMessage()Lorg/bouncycastle/i18n/a;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_4a
    :goto_31
    return-void
.end method

.method public I(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/x509/i;->D(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method public final J()V
    .locals 25

    move-object/from16 v10, p0

    new-instance v0, Lorg/bouncycastle/i18n/a;

    new-instance v1, Lkj/d;

    iget-object v2, v10, Lorg/bouncycastle/x509/i;->s:Ljava/util/Date;

    invoke-direct {v1, v2}, Lkj/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lkj/d;

    iget-object v3, v10, Lorg/bouncycastle/x509/i;->r:Ljava/util/Date;

    invoke-direct {v2, v3}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v11, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certPathValidDate"

    invoke-direct {v0, v11, v2, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/i;->B(Lorg/bouncycastle/i18n/a;)V

    const/4 v12, 0x1

    :try_start_0
    iget-object v0, v10, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v1, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/bouncycastle/x509/i;->X(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v12, :cond_0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    const-string v3, "CertPathReviewer.conflictingTrustAnchors"

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lkj/e;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v4, v0}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v11, v3, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noTrustAnchorFound"

    new-instance v3, Lkj/e;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v3, v0}, Lkj/e;-><init>(Ljava/lang/Object;)V

    iget-object v0, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v11, v2, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    iget-object v3, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/x509/c;->x(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_2
    :try_start_3
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.trustButInvalidCert"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_3
    :goto_2
    move-object v14, v1

    goto :goto_5

    :goto_3
    new-instance v2, Lorg/bouncycastle/i18n/a;

    new-instance v3, Lkj/e;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkj/e;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lkj/e;

    invoke-direct {v4, v0}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "CertPathReviewer.unknown"

    invoke-direct {v2, v11, v3, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    goto :goto_2

    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedException;->getErrorMessage()Lorg/bouncycastle/i18n/a;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    goto :goto_2

    :goto_5
    const/4 v15, 0x5

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v0}, Lorg/bouncycastle/x509/c;->m(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_6

    :cond_3
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    new-instance v1, Lorg/bouncycastle/i18n/a;

    new-instance v2, Lkj/e;

    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CertPathReviewer.trustDNInvalid"

    invoke-direct {v1, v11, v3, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    const/4 v1, 0x0

    :goto_6
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v2, v0

    if-le v2, v15, :cond_4

    aget-boolean v0, v0, v15

    if-nez v0, :cond_6

    :cond_4
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.trustKeyUsage"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/i;->B(Lorg/bouncycastle/i18n/a;)V

    goto :goto_7

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_8

    :cond_7
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    :goto_8
    :try_start_5
    invoke-static {v2}, Lorg/bouncycastle/x509/c;->d(Ljava/security/PublicKey;)Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    invoke-virtual {v3}, Lhi/b;->x()Loh/g;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    new-instance v3, Lorg/bouncycastle/i18n/a;

    const-string v4, "CertPathReviewer.trustPubKeyError"

    invoke-direct {v3, v11, v4}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lorg/bouncycastle/x509/i;->z(Lorg/bouncycastle/i18n/a;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    iget-object v3, v10, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    move-object v5, v0

    move-object v9, v1

    move-object v8, v2

    move v7, v3

    :goto_a
    if-ltz v7, :cond_19

    iget v0, v10, Lorg/bouncycastle/x509/i;->u:I

    sub-int v6, v0, v7

    iget-object v0, v10, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    const-string v1, "CertPathReviewer.signatureNotVerified"

    if-eqz v8, :cond_9

    :try_start_6
    iget-object v0, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v8, v0}, Lorg/bouncycastle/x509/c;->x(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_c

    :catch_6
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v3, v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v11, v1, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    invoke-virtual {v10, v2, v7}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    goto/16 :goto_c

    :cond_9
    invoke-static {v4}, Lorg/bouncycastle/x509/c;->q(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v2, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/x509/c;->x(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v7}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v3, v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v11, v1, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_a
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v1, "CertPathReviewer.NoIssuerPublicKey"

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lhi/B;->w:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v1}, Lhi/k;->y(Ljava/lang/Object;)Lhi/k;

    move-result-object v1

    invoke-virtual {v1}, Lhi/k;->v()Lhi/F;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lhi/F;->y()[Lhi/E;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v19, v2, v3

    invoke-virtual {v1}, Lhi/k;->x()Ljava/math/BigInteger;

    move-result-object v23

    if-eqz v23, :cond_b

    new-instance v1, Lorg/bouncycastle/i18n/b;

    const-string v2, "missingIssuer"

    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/i18n/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/i18n/b;

    const-string v3, "missingSerial"

    invoke-direct {v2, v11, v3}, Lorg/bouncycastle/i18n/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, " "

    const-string v18, " \""

    const-string v20, "\" "

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    filled-new-array/range {v17 .. v23}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/i18n/c;->l([Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v10, v0, v7}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :goto_c
    :try_start_8
    iget-object v0, v10, Lorg/bouncycastle/x509/i;->s:Ljava/util/Date;

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    :catch_8
    new-instance v0, Lorg/bouncycastle/i18n/a;

    new-instance v1, Lkj/d;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CertPathReviewer.certificateExpired"

    invoke-direct {v0, v11, v2, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    invoke-virtual {v10, v0, v7}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_e

    :catch_9
    new-instance v0, Lorg/bouncycastle/i18n/a;

    new-instance v1, Lkj/d;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CertPathReviewer.certificateNotYetValid"

    invoke-direct {v0, v11, v2, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :goto_e
    iget-object v0, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_9
    sget-object v0, Lorg/bouncycastle/x509/i;->C:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object v0
    :try_end_9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v1, "CertPathReviewer.crlDistPtExtError"

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v7}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_c
    const/4 v0, 0x0

    :goto_f
    :try_start_a
    sget-object v1, Lorg/bouncycastle/x509/i;->D:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v1}, Lhi/j;->y(Ljava/lang/Object;)Lhi/j;

    move-result-object v1
    :try_end_a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    new-instance v1, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.crlAuthInfoAccError"

    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1, v7}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_d
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/i;->M(Lhi/m;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/i;->T(Lhi/j;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lorg/bouncycastle/i18n/a;

    new-instance v3, Lkj/f;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v3, v15}, Lkj/f;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v15, "CertPathReviewer.crlDistPoint"

    invoke-direct {v2, v11, v15, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v7}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    const/4 v15, 0x5

    goto :goto_11

    :cond_e
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lorg/bouncycastle/i18n/a;

    new-instance v3, Lkj/f;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v3, v15}, Lkj/f;-><init>(Ljava/lang/Object;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v15, "CertPathReviewer.ocspLocation"

    invoke-direct {v2, v11, v15, v3}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v7}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_12

    :cond_f
    :try_start_b
    iget-object v2, v10, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    iget-object v15, v10, Lorg/bouncycastle/x509/i;->s:Ljava/util/Date;
    :try_end_b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_d

    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v17, v4

    move-object v4, v15

    move v15, v6

    move-object v6, v8

    move/from16 v18, v7

    move-object v7, v0

    move-object/from16 v24, v8

    move-object v8, v13

    move-object v13, v9

    move/from16 v9, v18

    :try_start_c
    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/x509/i;->I(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_c

    move/from16 v3, v18

    goto :goto_14

    :catch_c
    move-exception v0

    goto :goto_13

    :catch_d
    move-exception v0

    move-object/from16 v17, v4

    move v15, v6

    move/from16 v18, v7

    move-object/from16 v24, v8

    move-object v13, v9

    :goto_13
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedException;->getErrorMessage()Lorg/bouncycastle/i18n/a;

    move-result-object v0

    move/from16 v3, v18

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_14

    :cond_10
    move-object/from16 v17, v4

    move v15, v6

    move v3, v7

    move-object/from16 v24, v8

    move-object v13, v9

    :goto_14
    if-eqz v13, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lorg/bouncycastle/i18n/a;

    invoke-virtual {v13}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CertPathReviewer.certWrongIssuer"

    invoke-direct {v0, v11, v2, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_11
    iget v0, v10, Lorg/bouncycastle/x509/i;->u:I

    if-eq v15, v0, :cond_17

    const-string v0, "CertPathReviewer.noCACert"

    move-object/from16 v1, v17

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    if-ne v2, v12, :cond_12

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v11, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_12
    :try_start_d
    sget-object v2, Lorg/bouncycastle/x509/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v2

    invoke-static {v2}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lhi/l;->z()Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Lorg/bouncycastle/i18n/a;

    invoke-direct {v2, v11, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_15

    :cond_13
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noBasicConstraints"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V
    :try_end_d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.errorProcesingBC"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :cond_14
    :goto_15
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_16

    array-length v2, v0

    const/4 v4, 0x5

    if-le v2, v4, :cond_15

    aget-boolean v0, v0, v4

    if-nez v0, :cond_18

    :cond_15
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.noCertSign"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v4, 0x5

    goto :goto_17

    :cond_17
    move-object/from16 v1, v17

    goto :goto_16

    :cond_18
    :goto_17
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    :try_start_e
    iget-object v0, v10, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-static {v0, v3}, Lorg/bouncycastle/x509/c;->i(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v8
    :try_end_e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    invoke-static {v8}, Lorg/bouncycastle/x509/c;->d(Ljava/security/PublicKey;)Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;
    :try_end_f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_18

    :catch_f
    move-object/from16 v8, v24

    :catch_10
    new-instance v0, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.pubKeyError"

    invoke-direct {v0, v11, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    :goto_18
    add-int/lit8 v7, v3, -0x1

    move-object v5, v1

    move v15, v4

    goto/16 :goto_a

    :cond_19
    move-object/from16 v24, v8

    iput-object v14, v10, Lorg/bouncycastle/x509/i;->x:Ljava/security/cert/TrustAnchor;

    move-object/from16 v2, v24

    iput-object v2, v10, Lorg/bouncycastle/x509/i;->y:Ljava/security/PublicKey;

    return-void
.end method

.method public K()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/x509/i;->A:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/x509/i;->u:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->J()V

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->F()V

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->G()V

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->H()V

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->E()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    const-string v1, "X.509"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object p1, v0

    :goto_1
    return-object p1

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Lorg/bouncycastle/i18n/a;

    new-instance v2, Lkj/e;

    invoke-direct {v2, p1}, Lkj/e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, p1, v0, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.loadCrlDistPointError"

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {p1, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw p1
.end method

.method public M(Lhi/m;)Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lhi/m;->v()[Lhi/y;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lhi/y;->x()Lhi/z;

    move-result-object v3

    invoke-virtual {v3}, Lhi/z;->y()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lhi/z;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v3

    invoke-virtual {v3}, Lhi/F;->y()[Lhi/E;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lhi/E;->g()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lhi/E;->x()Loh/g;

    move-result-object v5

    check-cast v5, Loh/q;

    invoke-virtual {v5}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public N()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public O()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/x509/i;->u:I

    return v0
.end method

.method public P(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public Q()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    return-object v0
.end method

.method public R(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public S()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    return-object v0
.end method

.method public T(Lhi/j;)Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhi/j;->x()[Lhi/a;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lhi/a;->v()Loh/x;

    move-result-object v2

    sget-object v3, Lhi/a;->e:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lhi/a;->u()Lhi/E;

    move-result-object v2

    invoke-virtual {v2}, Lhi/E;->g()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lhi/E;->x()Loh/g;

    move-result-object v2

    check-cast v2, Loh/q;

    invoke-virtual {v2}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public U()Ljava/security/cert/PolicyNode;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->z:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public V()Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->y:Ljava/security/PublicKey;

    return-object v0
.end method

.method public W()Ljava/security/cert/TrustAnchor;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->x:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public X(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/c;->f(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    sget-object v2, Lhi/B;->w:Loh/x;

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Loh/B;->B([B)Loh/B;

    move-result-object v2

    check-cast v2, Loh/y;

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-static {v2}, Loh/B;->B([B)Loh/B;

    move-result-object v2

    invoke-static {v2}, Lhi/k;->y(Ljava/lang/Object;)Lhi/k;

    move-result-object v2

    invoke-virtual {v2}, Lhi/k;->x()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lhi/k;->x()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lhi/k;->A()[B

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Loh/C0;

    invoke-direct {v3, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v3}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/x509/c;->f(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_3
    return-object v0

    :catch_0
    new-instance p1, Lorg/bouncycastle/i18n/a;

    const-string p2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {p2, p1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw p2
.end method

.method public Y(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/x509/i;->A:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/x509/i;->A:Z

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_3

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    const-string p1, "X.509"

    const-string v1, "BC"

    invoke-static {p1, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unable to rebuild certpath"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object p1, p0, Lorg/bouncycastle/x509/i;->p:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/x509/i;->u:I

    iget-object p1, p0, Lorg/bouncycastle/x509/i;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXParameters;

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->r:Ljava/util/Date;

    iget-object p2, p0, Lorg/bouncycastle/x509/i;->q:Ljava/security/cert/PKIXParameters;

    invoke-static {p2, p1}, Lorg/bouncycastle/x509/c;->n(Ljava/security/cert/PKIXParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->s:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->v:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->x:Ljava/security/cert/TrustAnchor;

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->y:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/x509/i;->z:Ljava/security/cert/PolicyNode;

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/x509/CertPathReviewerException;

    new-instance p2, Lorg/bouncycastle/i18n/a;

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v1, "CertPathReviewer.emptyCertPath"

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/a;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certPath was null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object is already initialized!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z()Z
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/x509/i;->K()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final a0(Ljava/security/cert/X509Certificate;I)Z
    .locals 12

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/bouncycastle/x509/i;->B:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/bouncycastle/x509/c;->g(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object p1

    check-cast p1, Loh/E;

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_5

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lii/e;->u(Ljava/lang/Object;)Lii/e;

    move-result-object v4

    sget-object v6, Lii/b;->k5:Loh/x;

    invoke-virtual {v4}, Lii/e;->v()Loh/x;

    move-result-object v7

    invoke-virtual {v6, v7}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Lorg/bouncycastle/i18n/a;

    const-string v5, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v4, p2}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    goto/16 :goto_3

    :cond_0
    sget-object v6, Lii/f;->t5:Loh/x;

    invoke-virtual {v4}, Lii/e;->v()Loh/x;

    move-result-object v7

    invoke-virtual {v6, v7}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v6, Lii/b;->n5:Loh/x;

    invoke-virtual {v4}, Lii/e;->v()Loh/x;

    move-result-object v7

    invoke-virtual {v6, v7}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Lorg/bouncycastle/i18n/a;

    const-string v5, "CertPathReviewer.QcSSCD"

    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v6, Lii/b;->l5:Loh/x;

    invoke-virtual {v4}, Lii/e;->v()Loh/x;

    move-result-object v7

    invoke-virtual {v6, v7}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lii/e;->x()Loh/g;

    move-result-object v4

    invoke-static {v4}, Lii/d;->y(Ljava/lang/Object;)Lii/d;

    move-result-object v4

    invoke-virtual {v4}, Lii/d;->v()Lii/c;

    invoke-virtual {v4}, Lii/d;->u()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4}, Lii/d;->x()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {v4}, Lii/d;->v()Lii/c;

    move-result-object v7

    invoke-virtual {v7}, Lii/c;->y()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lorg/bouncycastle/i18n/a;

    const-string v8, "CertPathReviewer.QcLimitValueAlpha"

    invoke-virtual {v4}, Lii/d;->v()Lii/c;

    move-result-object v9

    invoke-virtual {v9}, Lii/c;->u()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lkj/d;

    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v10, v11}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v9, v10, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v7, v0, v8, v4}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v7, Lorg/bouncycastle/i18n/a;

    const-string v8, "CertPathReviewer.QcLimitValueNum"

    invoke-virtual {v4}, Lii/d;->v()Lii/c;

    move-result-object v9

    invoke-virtual {v9}, Lii/c;->x()I

    move-result v9

    invoke-static {v9}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lkj/d;

    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v10, v11}, Lkj/d;-><init>(Ljava/lang/Object;)V

    filled-new-array {v9, v10, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v7, v0, v8, v4}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0, v7, p2}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V

    goto :goto_3

    :cond_4
    new-instance v3, Lorg/bouncycastle/i18n/a;

    const-string v6, "CertPathReviewer.QcUnknownStatement"

    invoke-virtual {v4}, Lii/e;->v()Loh/x;

    move-result-object v7

    new-instance v8, Lkj/e;

    invoke-direct {v8, v4}, Lkj/e;-><init>(Ljava/lang/Object;)V

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v6, v4}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3, p2}, Lorg/bouncycastle/x509/i;->C(Lorg/bouncycastle/i18n/a;I)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    xor-int/lit8 p1, v3, 0x1

    return p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/i18n/a;

    const-string v2, "CertPathReviewer.QcStatementExtError"

    invoke-direct {p1, v0, v2}, Lorg/bouncycastle/i18n/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/x509/i;->A(Lorg/bouncycastle/i18n/a;I)V

    return v1
.end method

.method public final y([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public z(Lorg/bouncycastle/i18n/a;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/i;->w:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
