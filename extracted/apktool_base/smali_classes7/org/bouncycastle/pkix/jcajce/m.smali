.class public Lorg/bouncycastle/pkix/jcajce/m;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/jcajce/m$c;,
        Lorg/bouncycastle/pkix/jcajce/m$d;
    }
.end annotation


# static fields
.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static s:Ljava/util/logging/Logger;

.field public static final t:[Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/t<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ldk/f;

.field public final i:Z

.field public final j:J

.field public final k:J

.field public final l:Ljava/util/Date;

.field public m:Ljava/util/Date;

.field public n:Ljavax/security/auth/x500/X500Principal;

.field public o:Ljava/security/PublicKey;

.field public p:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Lorg/bouncycastle/pkix/jcajce/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/m;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pkix/jcajce/m$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->a(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->d(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->g:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->e(Lorg/bouncycastle/pkix/jcajce/m$c;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->d:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->f(Lorg/bouncycastle/pkix/jcajce/m$c;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->e:I

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->g(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->c:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->h(Lorg/bouncycastle/pkix/jcajce/m$c;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->i:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->i(Lorg/bouncycastle/pkix/jcajce/m$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->j:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->j(Lorg/bouncycastle/pkix/jcajce/m$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->k:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->k(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->l:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->b(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ldk/k;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->b(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/security/Provider;

    move-result-object p1

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->h:Ldk/f;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->c(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ldk/i;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/m$c;->c(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ldk/d;

    invoke-direct {p1}, Ldk/d;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m;->h:Ldk/f;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pkix/jcajce/m$c;Lorg/bouncycastle/pkix/jcajce/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/m;-><init>(Lorg/bouncycastle/pkix/jcajce/m$c;)V

    return-void
.end method

.method public static e(Lhi/m;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhi/m;",
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/o;",
            ">;)",
            "Ljava/util/List<",
            "LHj/o;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lhi/m;->v()[Lhi/y;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lhi/y;->x()Lhi/z;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lhi/z;->y()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lhi/z;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v3

    invoke-virtual {v3}, Lhi/F;->y()[Lhi/E;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LHj/o;

    if-eqz v5, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v0, "could not read distribution points could not be read"

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/security/cert/CertStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Ljava/security/cert/CertStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/m$a;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/m$a;-><init>(Lorg/bouncycastle/pkix/jcajce/m;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    return-void
.end method

.method public final b(Ljava/util/List;Lorg/bouncycastle/util/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/bouncycastle/util/t<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/m$b;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/m$b;-><init>(Lorg/bouncycastle/pkix/jcajce/m;Ljava/util/List;)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    return-void
.end method

.method public c(LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Ldk/f;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lhi/B;->t:Loh/x;

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v13, Lorg/bouncycastle/pkix/jcajce/b;

    invoke-direct {v13}, Lorg/bouncycastle/pkix/jcajce/b;-><init>()V

    new-instance v14, Lorg/bouncycastle/pkix/jcajce/i;

    invoke-direct {v14}, Lorg/bouncycastle/pkix/jcajce/i;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0xb

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lhi/m;->v()[Lhi/y;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v8, :cond_2

    new-instance v1, LHj/v$b;

    move-object/from16 v7, p1

    invoke-direct {v1, v7}, LHj/v$b;-><init>(LHj/v;)V

    :try_start_2
    invoke-virtual/range {p1 .. p1}, LHj/v;->q()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/m;->e(Lhi/m;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHj/o;

    invoke-virtual {v1, v2}, LHj/v$b;->m(LHj/o;)LHj/v$b;
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, LHj/v$b;->q()LHj/v;

    move-result-object v6

    move-object/from16 v5, p2

    invoke-static {v6, v5}, Lorg/bouncycastle/pkix/jcajce/j;->m(LHj/v;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v16

    move-object v0, v10

    move v4, v11

    move/from16 v17, v4

    :goto_1
    array-length v1, v8

    if-ge v4, v1, :cond_1

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v1

    if-ne v1, v9, :cond_1

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/i;->e()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_3
    aget-object v1, v8, v4
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v20, v8

    move-object v8, v13

    move v15, v9

    move-object v9, v14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    :try_start_4
    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/h;->a(Lhi/y;LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/b;Lorg/bouncycastle/pkix/jcajce/i;Ljava/util/List;Ldk/f;)V
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v17, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move v15, v9

    :goto_2
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move v9, v15

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move v15, v9

    goto :goto_5

    :goto_3
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no additional CRL locations could be decoded from CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v15, v9

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read distribution points"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v1

    if-ne v1, v15, :cond_3

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/i;->e()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    new-instance v2, Lhi/y;

    new-instance v3, Lhi/z;

    new-instance v4, Lhi/F;

    new-instance v5, Lhi/E;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    const/4 v6, 0x4

    invoke-direct {v5, v6, v1}, Lhi/E;-><init>(ILoh/g;)V

    invoke-direct {v4, v5}, Lhi/F;-><init>(Lhi/E;)V

    const/4 v1, 0x0

    invoke-direct {v3, v1, v4}, Lhi/z;-><init>(ILoh/g;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1, v1}, Lhi/y;-><init>(Lhi/z;Lhi/c0;Lhi/F;)V

    invoke-virtual/range {p1 .. p1}, LHj/v;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LHj/v;

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/h;->a(Lhi/y;LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/b;Lorg/bouncycastle/pkix/jcajce/i;Ljava/util/List;Ldk/f;)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v17, 0x1

    goto :goto_6

    :catch_4
    move-exception v0

    :cond_3
    :goto_6
    if-nez v17, :cond_5

    const-string v1, "no valid CRL found"

    if-eqz v0, :cond_4

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v0

    if-ne v0, v15, :cond_8

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/i;->e()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v0

    if-ne v0, v15, :cond_6

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pkix/jcajce/b;->c(I)V

    :cond_6
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v0

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v1, "certificate status could not be determined"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate [issuer=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\",serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",subject=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\"] revoked after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/pkix/jcajce/m;->t:[Ljava/lang/String;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/b;->a()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-boolean p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->d:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->o:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m;->p:Ljava/security/cert/X509Certificate;

    return-void

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->c:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->p:Ljava/security/cert/X509Certificate;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->o:Ljava/security/PublicKey;

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no trust anchor found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/m;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->l:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    move v2, v1

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/m;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    sget-object v3, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/m;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    invoke-virtual {p0, p2, v3}, Lorg/bouncycastle/pkix/jcajce/m;->a(Ljava/util/List;Ljava/security/cert/CertStore;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_c

    :cond_6
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/m;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-instance v9, LHj/v$b;

    invoke-direct {v9, v0}, LHj/v$b;-><init>(Ljava/security/cert/PKIXParameters;)V

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->e:I

    invoke-virtual {v9, v0}, LHj/v$b;->w(I)LHj/v$b;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_9

    sget-object v2, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/util/t;

    invoke-virtual {p0, p2, v2}, Lorg/bouncycastle/pkix/jcajce/m;->b(Ljava/util/List;Lorg/bouncycastle/util/t;)V

    :cond_8
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/m$d;

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/m;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/util/t;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/jcajce/m$d;-><init>(Lorg/bouncycastle/util/t;)V

    invoke-virtual {v9, v2}, LHj/v$b;->m(LHj/o;)LHj/v$b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v10, "\""

    if-eqz v0, :cond_a

    sget-object p2, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "configured with 0 pre-loaded CRLs"

    invoke-virtual {p2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v0, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configuring with CRL for issuer \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configured with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pre-loaded CRLs"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_c
    :goto_6
    invoke-virtual {v9}, LHj/v$b;->q()LHj/v;

    move-result-object v1

    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->l:Ljava/util/Date;

    invoke-static {v1, p2}, Lorg/bouncycastle/pkix/jcajce/j;->m(LHj/v;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->m:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/m;->p:Ljava/security/cert/X509Certificate;

    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/m;->o:Ljava/security/PublicKey;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/m;->h:Ldk/f;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/m;->c(LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Ldk/f;)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception p1

    goto/16 :goto_b

    :goto_7
    sget-object v1, Lhi/B;->t:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_13

    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-static {p1, v1}, Lorg/bouncycastle/pkix/jcajce/j;->h(Ljava/security/cert/X509Extension;Loh/x;)Loh/B;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/m;->h:Ldk/f;

    invoke-virtual {p0, v2, p2, v1, v3}, Lorg/bouncycastle/pkix/jcajce/m;->d(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Loh/B;Ldk/f;)Ljava/util/Set;

    move-result-object p2
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    :try_start_3
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/m$d;

    new-instance v1, Lorg/bouncycastle/util/e;

    invoke-direct {v1, p2}, Lorg/bouncycastle/util/e;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/m$d;-><init>(Lorg/bouncycastle/util/t;)V

    invoke-virtual {v9, v0}, LHj/v$b;->m(LHj/o;)LHj/v$b;

    invoke-virtual {v9}, LHj/v$b;->q()LHj/v;

    move-result-object v1

    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->l:Ljava/util/Date;

    invoke-static {v1, p2}, Lorg/bouncycastle/pkix/jcajce/j;->m(LHj/v;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m;->m:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/m;->p:Ljava/security/cert/X509Certificate;

    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/m;->o:Ljava/security/PublicKey;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/m;->h:Ldk/f;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/m;->c(LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Ldk/f;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception p1

    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_d
    iget-boolean p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->i:Z

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/m;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/pkix/jcajce/m;->k:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_f

    cmp-long v1, v4, v2

    if-ltz v1, :cond_e

    goto :goto_8

    :cond_e
    throw v0

    :cond_f
    :goto_8
    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->j:J

    cmp-long v0, v2, v0

    const-string v1, "soft failing for issuer: \""

    if-gez v0, :cond_10

    sget-object v0, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m;->p:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/m;->o:Ljava/security/PublicKey;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_12
    throw v0

    :catch_4
    move-exception p1

    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_13
    throw v0

    :goto_b
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error setting up baseParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final d(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Loh/B;Ldk/f;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Date;",
            "Loh/B;",
            "Ldk/f;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object v0

    invoke-virtual {v0}, Lhi/m;->v()[Lhi/y;

    move-result-object v1

    :try_start_0
    const-string v0, "X.509"

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    new-instance v4, LHj/p$b;

    invoke-direct {v4, v0}, LHj/p$b;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {v4}, LHj/p$b;->g()LHj/p;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v0, v1

    if-eq v7, v0, :cond_4

    aget-object v0, v1, v7

    invoke-virtual {v0}, Lhi/y;->x()Lhi/z;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lhi/z;->y()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0}, Lhi/z;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v0

    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    array-length v0, v8

    if-eq v9, v0, :cond_3

    aget-object v0, v8, v9

    invoke-virtual {v0}, Lhi/E;->g()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_1

    :try_start_1
    new-instance v10, Ljava/net/URI;

    invoke-virtual {v0}, Lhi/E;->x()Loh/g;

    move-result-object v0

    check-cast v0, Loh/J;

    invoke-interface {v0}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v11, p0

    :try_start_2
    iget-object v0, v11, Lorg/bouncycastle/pkix/jcajce/m;->l:Ljava/util/Date;

    invoke-static {v3, v0, v10}, Lorg/bouncycastle/pkix/jcajce/c;->a(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)LHj/o;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v13, p2

    :try_start_3
    invoke-static {v4, v13, v12, v0}, Lorg/bouncycastle/pkix/jcajce/e;->b(LHj/p;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    const/4 v10, 0x0

    :goto_2
    sget-object v12, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v12, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    const-string v15, " ignored: "

    const-string v6, "CrlDP "

    if-eqz v12, :cond_0

    sget-object v12, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_0
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move-object/from16 v11, p0

    :cond_2
    move-object/from16 v13, p2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v11, p0

    return-object v5

    :catch_3
    move-exception v0

    move-object/from16 v11, p0

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const-string v3, "could not create certFact: "

    if-eqz v1, :cond_5

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/m;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    return-object v1
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m;->m:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m;->n:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "forward processing not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
