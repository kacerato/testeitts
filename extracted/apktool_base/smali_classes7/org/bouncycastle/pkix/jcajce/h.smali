.class public Lorg/bouncycastle/pkix/jcajce/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:I = 0x5

.field public static final g:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/h;->a:Ljava/lang/String;

    sget-object v0, Lhi/B;->z:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/h;->b:Ljava/lang/String;

    sget-object v0, Lhi/B;->p:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/h;->c:Ljava/lang/String;

    sget-object v0, Lhi/B;->k:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/h;->d:Ljava/lang/String;

    sget-object v0, Lhi/B;->w:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lhi/y;LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/b;Lorg/bouncycastle/pkix/jcajce/i;Ljava/util/List;Ldk/f;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;,
            Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, LHj/v;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, LHj/v;->k()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v11, v10, v0, v2}, Lorg/bouncycastle/pkix/jcajce/j;->f(Lhi/y;Ljava/lang/Object;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x0

    move/from16 v16, v0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p7 .. p7}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v2

    const/16 v8, 0xb

    if-ne v2, v8, :cond_9

    invoke-virtual/range {p8 .. p8}, Lorg/bouncycastle/pkix/jcajce/i;->e()Z

    move-result v2

    if-nez v2, :cond_9

    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/security/cert/X509CRL;

    invoke-static {v7, v1}, Lorg/bouncycastle/pkix/jcajce/h;->g(Ljava/security/cert/X509CRL;Lhi/y;)Lorg/bouncycastle/pkix/jcajce/i;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/bouncycastle/pkix/jcajce/i;->c(Lorg/bouncycastle/pkix/jcajce/i;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v7

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v15, v6

    move-object/from16 v6, p1

    move-object/from16 v17, v14

    move-object v14, v7

    move-object/from16 v7, p9

    move-object/from16 v18, v0

    move v0, v8

    move-object/from16 v8, p10

    :try_start_1
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pkix/jcajce/h;->h(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;LHj/v;Ljava/util/List;Ldk/f;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v14, v2}, Lorg/bouncycastle/pkix/jcajce/h;->i(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, LHj/v;->C()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, LHj/v;->m()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LHj/v;->k()Ljava/util/List;

    move-result-object v4

    invoke-static {v10, v14, v3, v4}, Lorg/bouncycastle/pkix/jcajce/j;->g(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/pkix/jcajce/h;->j(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, LHj/v;->x()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "No valid CRL for current time found."

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    invoke-static {v1, v11, v14}, Lorg/bouncycastle/pkix/jcajce/h;->d(Lhi/y;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v1, v11, v14}, Lorg/bouncycastle/pkix/jcajce/h;->e(Lhi/y;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v2, v14, v9}, Lorg/bouncycastle/pkix/jcajce/h;->f(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;LHj/v;)V

    invoke-static {v10, v2, v11, v12, v9}, Lorg/bouncycastle/pkix/jcajce/h;->k(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/b;LHj/v;)V

    invoke-static {v10, v14, v11, v12}, Lorg/bouncycastle/pkix/jcajce/h;->l(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/b;)V

    invoke-virtual/range {p7 .. p7}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_4

    invoke-virtual {v12, v0}, Lorg/bouncycastle/pkix/jcajce/b;->c(I)V

    :cond_4
    invoke-virtual {v13, v15}, Lorg/bouncycastle/pkix/jcajce/i;->a(Lorg/bouncycastle/pkix/jcajce/i;)V

    invoke-interface {v14}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lhi/B;->p:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "CRL contains unsupported critical extensions."

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lhi/B;->p:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "Delta CRL contains unsupported critical extension."

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    :goto_4
    move/from16 v16, v4

    move-object/from16 v14, v17

    move-object/from16 v0, v18

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v14

    :goto_5
    move-object/from16 v14, v17

    goto/16 :goto_0

    :cond_9
    move-object/from16 v18, v0

    if-eqz v16, :cond_a

    return-void

    :cond_a
    throw v18

    :cond_b
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(LHj/v;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, LHj/v;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lhi/B;->z:Loh/x;

    invoke-static {p2, v1}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p2

    invoke-static {p2}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object p2
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez p2, :cond_0

    :try_start_1
    invoke-static {p3, v1}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p2

    invoke-static {p2}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object p2
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LHj/v;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_2
    invoke-virtual {p0}, LHj/v;->q()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/pkix/jcajce/j;->c(Lhi/m;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p0}, LHj/v;->m()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p3, p0, v1}, Lorg/bouncycastle/pkix/jcajce/j;->g(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Exception obtaining delta CRLs."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static c(LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    const/4 p1, 0x1

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    invoke-virtual {v0, p3}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :try_start_0
    invoke-virtual {p4}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance p3, LHj/p$b;

    invoke-direct {p3, v0}, LHj/p$b;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {p3, p1}, LHj/p$b;->h(Z)LHj/p$b;

    move-result-object p3

    invoke-virtual {p3}, LHj/p$b;->g()LHj/p;

    move-result-object p3

    invoke-virtual {p0}, LHj/v;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, LHj/v;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {p3, p2, v0, v1}, Lorg/bouncycastle/pkix/jcajce/e;->b(LHj/p;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, LHj/v;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, LHj/v;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, LHj/v;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p4, v1, p0}, Lorg/bouncycastle/pkix/jcajce/j;->g(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Exception obtaining delta CRLs."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/Set;

    const/4 p2, 0x0

    aput-object p3, p0, p2

    aput-object v0, p0, p1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot extract issuer from CRL."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(Lhi/y;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-static {p2, v0}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object v0

    invoke-virtual {v0}, Lhi/L;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object p0

    invoke-virtual {p0}, Lhi/F;->y()[Lhi/E;

    move-result-object p0

    move p1, v2

    :goto_1
    array-length p2, p0

    if-ge v2, p2, :cond_2

    aget-object p2, p0, v2

    invoke-virtual {p2}, Lhi/E;->g()I

    move-result p2

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    :try_start_0
    aget-object p2, p0, v2

    invoke-virtual {p2}, Lhi/E;->x()Loh/g;

    move-result-object p2

    invoke-interface {p2}, Loh/g;->r()Loh/B;

    move-result-object p2

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-static {p2, v3}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    move p1, v1

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    move v1, p1

    goto :goto_4

    :cond_5
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    if-eqz v1, :cond_8

    return-void

    :cond_8
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Cannot find matching CRL issuer for certificate."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lhi/y;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-static {p2, v0}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lhi/L;->x()Lhi/z;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object v1

    invoke-virtual {v1}, Lhi/L;->x()Lhi/z;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lhi/z;->y()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lhi/z;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v3

    invoke-virtual {v3}, Lhi/F;->y()[Lhi/E;

    move-result-object v3

    move v5, v4

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lhi/z;->y()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    :try_start_1
    invoke-virtual {p2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p2

    invoke-virtual {p2}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loh/g;

    invoke-virtual {v3, v6}, Loh/h;->a(Loh/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lhi/z;->x()Loh/g;

    move-result-object p2

    invoke-virtual {v3, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Lhi/E;

    new-instance v1, Loh/G0;

    invoke-direct {v1, v3}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    invoke-direct {p2, v1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_2
    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Could not read CRL issuer."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lhi/y;->x()Lhi/z;

    move-result-object p2

    const-string v1, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lhi/y;->x()Lhi/z;

    move-result-object p2

    invoke-virtual {p2}, Lhi/z;->y()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lhi/z;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v3

    invoke-virtual {v3}, Lhi/F;->y()[Lhi/E;

    move-result-object v3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p2}, Lhi/z;->y()I

    move-result v6

    if-ne v6, v5, :cond_6

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object p0

    invoke-virtual {p0}, Lhi/F;->y()[Lhi/E;

    move-result-object p0

    :goto_5
    move-object v3, p0

    goto :goto_6

    :cond_4
    new-array p0, v5, [Lhi/E;

    :try_start_2
    new-instance v3, Lhi/E;

    move-object v5, p1

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v5

    invoke-direct {v3, v5}, Lhi/E;-><init>(Lfi/d;)V

    aput-object v3, p0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :goto_6
    move p0, v4

    :goto_7
    array-length v5, v3

    if-ge p0, v5, :cond_6

    aget-object v5, v3, p0

    invoke-virtual {v5}, Lhi/E;->x()Loh/g;

    move-result-object v5

    invoke-interface {v5}, Loh/g;->r()Loh/B;

    move-result-object v5

    invoke-static {v5}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v5

    invoke-virtual {v5}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v5

    new-instance v6, Loh/h;

    invoke-direct {v6}, Loh/h;-><init>()V

    :goto_8
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Loh/g;

    invoke-virtual {v6, v7}, Loh/h;->a(Loh/g;)V

    goto :goto_8

    :cond_5
    invoke-virtual {p2}, Lhi/z;->x()Loh/g;

    move-result-object v5

    invoke-virtual {v6, v5}, Loh/h;->a(Loh/g;)V

    new-instance v5, Lhi/E;

    new-instance v7, Loh/G0;

    invoke-direct {v7, v6}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v7}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v6

    invoke-direct {v5, v6}, Lhi/E;-><init>(Lfi/d;)V

    aput-object v5, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Could not read certificate issuer."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    if-eqz v3, :cond_8

    :goto_9
    array-length p0, v3

    if-ge v4, p0, :cond_8

    aget-object p0, v3, v4

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_b

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_8
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {p0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object p0

    invoke-virtual {p0}, Lhi/F;->y()[Lhi/E;

    move-result-object p0

    :goto_a
    array-length p2, p0

    if-ge v4, p2, :cond_b

    aget-object p2, p0, v4

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {p0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_b
    :try_start_3
    move-object p0, p1

    check-cast p0, Ljava/security/cert/X509Extension;

    sget-object p2, Lhi/B;->k:Loh/x;

    invoke-static {p0, p2}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    instance-of p1, p1, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Lhi/L;->E()Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lhi/l;->z()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_c

    :cond_e
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "CA Cert CRL only contains user certificates."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_c
    invoke-virtual {v0}, Lhi/L;->D()Z

    move-result p1

    if-eqz p1, :cond_11

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lhi/l;->z()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_d

    :cond_10
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "End CRL only contains CA certificates."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_d
    invoke-virtual {v0}, Lhi/L;->C()Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_e

    :cond_12
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Basic constraints extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_13
    :goto_e
    return-void

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static f(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;LHj/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-static {p1, v0}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object v1

    invoke-static {v1}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {p2}, LHj/v;->C()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :try_start_1
    invoke-static {p0, v0}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p2

    invoke-static {p2}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_1

    if-nez p2, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_0
    :try_start_2
    sget-object p2, Lhi/B;->w:Loh/x;

    invoke-static {p1, p2}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p1
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {p0, p2}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p0
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Delta CRL authority key identifier is null."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "CRL authority key identifier is null."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "complete CRL issuer does not match delta CRL issuer"

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "issuing distribution point extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static g(Ljava/security/cert/X509CRL;Lhi/y;)Lorg/bouncycastle/pkix/jcajce/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-static {p0, v0}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhi/L;->A()Lhi/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhi/y;->A()Lhi/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/i;

    invoke-virtual {p1}, Lhi/y;->A()Lhi/c0;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkix/jcajce/i;-><init>(Lhi/c0;)V

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/i;

    invoke-virtual {p0}, Lhi/L;->A()Lhi/c0;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/pkix/jcajce/i;-><init>(Lhi/c0;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/jcajce/i;->d(Lorg/bouncycastle/pkix/jcajce/i;)Lorg/bouncycastle/pkix/jcajce/i;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lhi/L;->A()Lhi/c0;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lhi/y;->A()Lhi/c0;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pkix/jcajce/i;->b:Lorg/bouncycastle/pkix/jcajce/i;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lhi/y;->A()Lhi/c0;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p1, Lorg/bouncycastle/pkix/jcajce/i;->b:Lorg/bouncycastle/pkix/jcajce/i;

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/i;

    invoke-virtual {p1}, Lhi/y;->A()Lhi/c0;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkix/jcajce/i;-><init>(Lhi/c0;)V

    move-object p1, v0

    :goto_0
    if-nez p0, :cond_4

    sget-object p0, Lorg/bouncycastle/pkix/jcajce/i;->b:Lorg/bouncycastle/pkix/jcajce/i;

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/i;

    invoke-virtual {p0}, Lhi/L;->A()Lhi/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pkix/jcajce/i;-><init>(Lhi/c0;)V

    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Lorg/bouncycastle/pkix/jcajce/i;->d(Lorg/bouncycastle/pkix/jcajce/i;)Lorg/bouncycastle/pkix/jcajce/i;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v0, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static h(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;LHj/v;Ljava/util/List;Ldk/f;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    new-instance p1, Ljava/security/cert/X509CertSelector;

    invoke-direct {p1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    new-instance p0, LHj/t$b;

    invoke-direct {p0, p1}, LHj/t$b;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {p0}, LHj/t$b;->a()LHj/t;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_1
    invoke-virtual {p4}, LHj/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/bouncycastle/pkix/jcajce/j;->b(Ljava/util/LinkedHashSet;LHj/t;Ljava/util/List;)V

    invoke-virtual {p4}, LHj/v;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/bouncycastle/pkix/jcajce/j;->b(Ljava/util/LinkedHashSet;LHj/t;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v3, "PKIX"

    invoke-interface {p6, v3}, Ldk/f;->t(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v3

    new-instance v4, Ljava/security/cert/X509CertSelector;

    invoke-direct {v4}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {v4, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    new-instance v5, LHj/v$b;

    invoke-direct {v5, p4}, LHj/v$b;-><init>(LHj/v;)V

    new-instance v6, LHj/t$b;

    invoke-direct {v6, v4}, LHj/t$b;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v6}, LHj/t$b;->a()LHj/t;

    move-result-object v4

    invoke-virtual {v5, v4}, LHj/v$b;->s(LHj/t;)LHj/v$b;

    move-result-object v4

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, LHj/v$b;->r(Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, LHj/v$b;->r(Z)V

    :goto_1
    new-instance v5, LHj/u$b;

    invoke-virtual {v4}, LHj/v$b;->q()LHj/v;

    move-result-object v4

    invoke-direct {v5, v4}, LHj/u$b;-><init>(LHj/v;)V

    invoke-virtual {v5}, LHj/u$b;->e()LHj/u;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v2, p6}, Lorg/bouncycastle/pkix/jcajce/j;->k(Ljava/util/List;ILdk/f;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_2
    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "CertPath for CRL signer failed to validate."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p3

    if-eqz p3, :cond_4

    array-length p4, p3

    const/4 p5, 0x6

    if-le p4, p5, :cond_3

    aget-boolean p3, p3, p5

    if-nez p3, :cond_4

    :cond_3
    new-instance p2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p3, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {p2, p3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    goto :goto_7

    :cond_6
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Cannot find a valid issuer certificate."

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    if-nez p2, :cond_8

    goto :goto_8

    :cond_8
    throw p2

    :cond_9
    :goto_8
    return-object p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "Issuer certificate for CRL cannot be searched."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p2, "subject criteria for certificate selector to find issuer certificate for CRL could not be set"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static i(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Cannot verify CRL."

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static j(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string p1, "Cannot verify delta CRL."

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static k(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/b;LHj/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    invoke-virtual {p4}, LHj/v;->C()Z

    move-result p4

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pkix/jcajce/j;->e(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/b;)V

    :cond_0
    return-void
.end method

.method public static l(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    invoke-virtual {p3}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pkix/jcajce/j;->e(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/b;)V

    :cond_0
    return-void
.end method
