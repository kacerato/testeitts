.class public Lorg/bouncycastle/jce/provider/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String; = "2.5.29.32.0"

.field public static final o:Ljava/lang/String;

.field public static final p:I = 0x5

.field public static final q:I = 0x6

.field public static final r:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Lhi/B;->u:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->a:Ljava/lang/String;

    sget-object v0, Lhi/B;->k:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->b:Ljava/lang/String;

    sget-object v0, Lhi/B;->v:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->c:Ljava/lang/String;

    sget-object v0, Lhi/B;->i:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->d:Ljava/lang/String;

    sget-object v0, Lhi/B;->s:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->e:Ljava/lang/String;

    sget-object v0, Lhi/B;->g:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->f:Ljava/lang/String;

    sget-object v0, Lhi/B;->A:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->g:Ljava/lang/String;

    sget-object v0, Lhi/B;->q:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->h:Ljava/lang/String;

    sget-object v0, Lhi/B;->p:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->i:Ljava/lang/String;

    sget-object v0, Lhi/B;->x:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->j:Ljava/lang/String;

    sget-object v0, Lhi/B;->z:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->k:Ljava/lang/String;

    sget-object v0, Lhi/B;->t:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->l:Ljava/lang/String;

    sget-object v0, Lhi/B;->w:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->m:Ljava/lang/String;

    sget-object v0, Lhi/B;->l:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->o:Ljava/lang/String;

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

    sput-object v0, Lorg/bouncycastle/jce/provider/f;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I[Ljava/util/List;Loh/x;Ljava/util/Set;)Z
    .locals 12

    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/I;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/bouncycastle/jce/provider/I;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v4, v0

    move v6, p0

    move-object v8, v3

    move-object v9, p3

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/jce/provider/I;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/jce/provider/I;->a(Lorg/bouncycastle/jce/provider/I;)V

    aget-object p0, p1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static B(I[Ljava/util/List;Loh/x;Ljava/util/Set;)V
    .locals 11

    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.5.29.32.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/bouncycastle/jce/provider/I;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v0

    move v5, p0

    move-object v7, v2

    move-object v8, p3

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/jce/provider/I;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/jce/provider/I;->a(Lorg/bouncycastle/jce/provider/I;)V

    aget-object p0, p1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static C(Lorg/bouncycastle/jce/provider/I;[Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;
    .locals 2

    invoke-virtual {p2}, Lorg/bouncycastle/jce/provider/I;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/I;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    :goto_0
    array-length p2, p1

    if-ge p0, p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    aput-object p2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v0, p2}, Lorg/bouncycastle/jce/provider/I;->d(Lorg/bouncycastle/jce/provider/I;)V

    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/f;->D([Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)V

    return-object p0
.end method

.method public static D([Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/I;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/I;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/I;->getChildren()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/I;

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/f;->D([Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static E(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(LHj/r;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/bouncycastle/x509/l;

    const/4 v0, 0x0

    const-string v1, "\""

    const-string v2, "No CRLs found for issuer \""

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/x509/l;

    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/bouncycastle/x509/l;->f()Lorg/bouncycastle/x509/b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/x509/b;->b()[Ljava/security/Principal;

    move-result-object p2

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v1

    invoke-virtual {p0}, LHj/r;->b()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_0
    check-cast p2, Ljava/security/cert/X509Certificate;

    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lgi/e;->V:Lfi/f;

    invoke-static {p2}, Lorg/bouncycastle/jce/provider/J;->e(Ljava/security/cert/X509Certificate;)Lfi/d;

    move-result-object p2

    invoke-interface {v2, p2}, Lfi/f;->g(Lfi/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v1

    invoke-virtual {p0}, LHj/r;->b()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_1
    return-void
.end method

.method public static b(Ljava/util/Set;LHj/t;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/util/t;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/util/t;

    :try_start_0
    invoke-interface {v0, p1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Problem while picking certificates from X.509 store."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    check-cast v0, Ljava/security/cert/CertStore;

    :try_start_1
    invoke-static {p1, v0}, LHj/t;->c(LHj/t;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Problem while picking certificates from certificate store."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static c(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "LHj/s;",
            ">;)",
            "Ljava/util/Collection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->e(Ljava/security/cert/X509Certificate;)Lfi/d;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v1, Lorg/bouncycastle/jce/provider/f;->m:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-static {p0}, Lhi/k;->y(Ljava/lang/Object;)Lhi/k;

    move-result-object p0

    invoke-virtual {p0}, Lhi/k;->A()[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Loh/C0;

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    new-instance p0, LHj/t$b;

    invoke-direct {p0, v0}, LHj/t$b;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {p0}, LHj/t$b;->a()LHj/t;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_2
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/jce/provider/f;->b(Ljava/util/Set;LHj/t;Ljava/util/List;)V

    invoke-static {v0, p0, p2}, Lorg/bouncycastle/jce/provider/f;->b(Ljava/util/Set;LHj/t;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuer certificate cannot be searched."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(LHj/u;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    invoke-virtual {p0}, LHj/u;->a()LHj/v;

    move-result-object p0

    invoke-virtual {p0}, LHj/v;->u()LHj/t;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    invoke-virtual {p0}, LHj/v;->n()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/jce/provider/f;->b(Ljava/util/Set;LHj/t;Ljava/util/List;)V

    invoke-virtual {p0}, LHj/v;->m()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lorg/bouncycastle/jce/provider/f;->b(Ljava/util/Set;LHj/t;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, LHj/t;->b()Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "No certificate found matching targetConstraints."

    invoke-direct {p0, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Error finding target certificate."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static e(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/jce/provider/f;->f(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    goto :goto_1

    :catch_0
    :cond_1
    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    if-eqz v7, :cond_1

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v5

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v7

    invoke-virtual {v5, v7}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v6, :cond_0

    :try_start_1
    invoke-static {p0, v6, p2}, Lorg/bouncycastle/jce/provider/f;->E(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v2

    move-object v6, v3

    goto :goto_0

    :cond_4
    if-nez v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "TrustAnchor found but certificate validation failed."

    invoke-direct {p0, p1, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_6
    :goto_2
    return-object v3
.end method

.method public static g([BLjava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/s;",
            ">;)",
            "Ljava/util/List<",
            "LHj/s;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-static {p0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object p0

    invoke-virtual {p0}, Lhi/F;->y()[Lhi/E;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHj/s;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static h(Lhi/m;Ljava/util/Map;Ljava/util/Date;Ldk/f;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhi/m;",
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/o;",
            ">;",
            "Ljava/util/Date;",
            "Ldk/f;",
            ")",
            "Ljava/util/List<",
            "LHj/o;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lhi/m;->v()[Lhi/y;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

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
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "org.bouncycastle.x509.enableCRLDP"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_1
    const-string p1, "X.509"

    invoke-interface {p3, p1}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move p3, v1

    :goto_2
    array-length v2, p0

    if-ge p3, v2, :cond_6

    aget-object v2, p0, p3

    invoke-virtual {v2}, Lhi/y;->x()Lhi/z;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lhi/z;->y()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lhi/z;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v2

    invoke-virtual {v2}, Lhi/F;->y()[Lhi/E;

    move-result-object v2

    move v3, v1

    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lhi/E;->g()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    :try_start_2
    new-instance v5, Ljava/net/URI;

    invoke-virtual {v4}, Lhi/E;->x()Loh/g;

    move-result-object v4

    check-cast v4, Loh/J;

    invoke-interface {v4}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v5}, Lorg/bouncycastle/jce/provider/i;->a(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)LHj/o;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot create certificate factory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    return-object v0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Distribution points could not be read."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static i(Ljava/security/PublicKey;)Lhi/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p0

    invoke-virtual {p0}, Lhi/h0;->u()Lhi/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Subject public key cannot be decoded."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static j(Lhi/y;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lhi/y;->v()Lhi/F;

    move-result-object p0

    invoke-virtual {p0}, Lhi/F;->y()[Lhi/E;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    aget-object v1, p0, p1

    invoke-virtual {v1}, Lhi/E;->g()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_0
    aget-object v1, p0, p1

    invoke-virtual {v1}, Lhi/E;->x()Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lhi/y;->x()Lhi/z;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfi/d;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Cannot decode CRL issuer information."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-void

    :cond_4
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/U;->d(Ljava/security/cert/X509CRL;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/jce/provider/f;->r(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/J;->d(Ljava/security/cert/X509CRL;)Lfi/d;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/J;->h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/J;->c(Ljava/lang/Object;)Lfi/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_2
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/J;->c(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/J;->d(Ljava/security/cert/X509CRL;)Lfi/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/f;->r(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Ljava/security/cert/X509Extension;->hasUnsupportedCriticalExtension()Z

    move-result p1

    if-nez p1, :cond_5

    :try_start_1
    sget-object p1, Lhi/B;->m:Loh/x;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jce/provider/f;->n(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Reason code CRL entry extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL entry has unsupported critical extensions."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Loh/j;->L()I

    move-result p1

    :goto_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_8

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/16 p0, 0xa

    if-ne p1, p0, :cond_9

    :cond_8
    invoke-virtual {p3, p1}, Lorg/bouncycastle/jce/provider/g;->c(I)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/bouncycastle/jce/provider/g;->d(Ljava/util/Date;)V

    :cond_9
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Failed check for indirect CRL."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static l(LHj/r;Lhi/y;Ljava/lang/Object;LHj/v;Ljava/util/Date;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Lorg/bouncycastle/jce/provider/J;->c(Ljava/lang/Object;)Lfi/d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/jce/provider/f;->j(Lhi/y;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p2, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :cond_0
    new-instance p1, LHj/p$b;

    invoke-direct {p1, v0}, LHj/p$b;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LHj/p$b;->h(Z)LHj/p$b;

    move-result-object p1

    invoke-virtual {p1}, LHj/p$b;->g()LHj/p;

    move-result-object p1

    invoke-virtual {p3}, LHj/v;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, LHj/v;->k()Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p4, v0, p3}, Lorg/bouncycastle/jce/provider/C;->a(LHj/p;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jce/provider/f;->a(LHj/r;Ljava/util/Set;Ljava/lang/Object;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Could not get issuer information from distribution point."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static m(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Ldk/f;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509CRL;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "LHj/o;",
            ">;",
            "Ldk/f;",
            ")",
            "Ljava/util/Set;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/J;->d(Ljava/security/cert/X509CRL;)Lfi/d;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v1, Lorg/bouncycastle/jce/provider/f;->o:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/bouncycastle/jce/provider/f;->n(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    move-object v1, v2

    :goto_0
    :try_start_2
    sget-object v3, Lorg/bouncycastle/jce/provider/f;->h:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    new-instance v2, LHj/p$b;

    invoke-direct {v2, v0}, LHj/p$b;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {v2, p1}, LHj/p$b;->j([B)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LHj/p$b;->k(Z)V

    invoke-virtual {v2, v1}, LHj/p$b;->l(Ljava/math/BigInteger;)V

    invoke-virtual {v2}, LHj/p$b;->g()LHj/p;

    move-result-object v0

    invoke-static {v0, p0, p2, p3}, Lorg/bouncycastle/jce/provider/C;->a(LHj/p;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "org.bouncycastle.x509.enableCRLDP"

    invoke-static {p3}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :try_start_3
    const-string p3, "X.509"

    invoke-interface {p4, p3}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p1}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object p1

    invoke-virtual {p1}, Lhi/m;->v()[Lhi/y;

    move-result-object p1

    const/4 p4, 0x0

    move v1, p4

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lhi/y;->x()Lhi/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lhi/z;->y()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lhi/z;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v2

    invoke-virtual {v2}, Lhi/F;->y()[Lhi/E;

    move-result-object v2

    move v3, p4

    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lhi/E;->g()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    :try_start_4
    new-instance v5, Ljava/net/URI;

    invoke-virtual {v4}, Lhi/E;->x()Loh/g;

    move-result-object v4

    check-cast v4, Loh/J;

    invoke-interface {v4}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p0, v5}, Lorg/bouncycastle/jce/provider/i;->a(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)LHj/o;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, p0, v5, v4}, Lorg/bouncycastle/jce/provider/C;->a(LHj/p;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot create certificate factory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509CRL;

    invoke-static {p2}, Lorg/bouncycastle/jce/provider/f;->v(Ljava/security/cert/X509CRL;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    return-object p0

    :catch_3
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension value could not be read."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_6
    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CRL number extension could not be extracted from CRL."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Cannot extract issuer from CRL."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static n(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lorg/bouncycastle/jce/provider/f;->p(Ljava/lang/String;[B)Loh/B;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static o(Ljava/util/List;ILdk/f;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "DSA parameters cannot be inherited from previous certificate."

    if-ge p1, v1, :cond_4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    instance-of v3, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    new-instance p1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :try_start_0
    const-string p0, "DSA"

    invoke-interface {p2, p0}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {p0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {p0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Ljava/lang/String;[B)Loh/B;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final q(Loh/E;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1}, Loh/A;->b(Ljava/io/OutputStream;)Loh/A;

    move-result-object v2

    invoke-virtual {p0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/g;

    invoke-virtual {v2, v3}, Loh/A;->x(Loh/g;)V

    new-instance v3, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy qualifier info cannot be decoded."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static r(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const-string v0, "Date of cert gen extension could not be read."

    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    sub-int/2addr p3, v1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    if-nez p3, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    sget-object p2, Luj/a;->e:Loh/x;

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Loh/n;->I()Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Date from date of cert gen extension could not be parsed."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static t(LHj/v;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    invoke-virtual {p0}, LHj/v;->w()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static u(Ljava/util/Set;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static v(Ljava/security/cert/X509CRL;)Z
    .locals 1

    invoke-interface {p0}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jce/provider/N;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static w(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jce/provider/f;->f(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static x(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static y(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    aget-object v2, p1, p0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, v3, Lorg/bouncycastle/jce/provider/I;->c:Ljava/util/Set;

    goto/16 :goto_4

    :cond_1
    aget-object v2, p1, p0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.5.29.32.0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jce/provider/f;->a:Ljava/lang/String;

    invoke-static {p4, v2}, Lorg/bouncycastle/jce/provider/f;->n(Ljava/security/cert/X509Extension;Ljava/lang/String;)Loh/B;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v2}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v6}, Lhi/W;->v()Loh/x;

    move-result-object v7

    invoke-virtual {v7}, Loh/x;->J()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v6}, Lhi/W;->x()Loh/E;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jce/provider/f;->q(Loh/E;)Ljava/util/Set;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v6, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy qualifier info set could not be built."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Policy information cannot be decoded."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p4}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p4}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/jce/provider/f;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    move v8, v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/I;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v10, Lorg/bouncycastle/jce/provider/I;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    move-object v1, v10

    move v3, p0

    move-object v5, v9

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/jce/provider/I;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Lorg/bouncycastle/jce/provider/I;->a(Lorg/bouncycastle/jce/provider/I;)V

    aget-object v0, p1, p0

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Certificate policies cannot be decoded."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :goto_4
    return-void
.end method

.method public static z(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;
    .locals 6

    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/I;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/I;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/jce/provider/I;->d(Lorg/bouncycastle/jce/provider/I;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, p0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jce/provider/I;

    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/I;->c()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p3, p1, v4}, Lorg/bouncycastle/jce/provider/f;->C(Lorg/bouncycastle/jce/provider/I;[Ljava/util/List;Lorg/bouncycastle/jce/provider/I;)Lorg/bouncycastle/jce/provider/I;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method
