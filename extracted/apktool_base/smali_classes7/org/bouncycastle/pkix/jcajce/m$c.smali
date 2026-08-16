.class public Lorg/bouncycastle/pkix/jcajce/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/jcajce/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/t<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:I

.field public f:Ljava/security/Provider;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:J

.field public j:J

.field public k:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->e:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->k:Ljava/util/Date;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->a:Ljava/util/Set;

    new-instance v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->e:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->k:Ljava/util/Date;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->e:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->k:Ljava/util/Date;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->a:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/security/Provider;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->f:Ljava/security/Provider;

    return-object p0
.end method

.method public static synthetic c(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lorg/bouncycastle/pkix/jcajce/m$c;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->d:Z

    return p0
.end method

.method public static synthetic f(Lorg/bouncycastle/pkix/jcajce/m$c;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->e:I

    return p0
.end method

.method public static synthetic g(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->a:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic h(Lorg/bouncycastle/pkix/jcajce/m$c;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->h:Z

    return p0
.end method

.method public static synthetic i(Lorg/bouncycastle/pkix/jcajce/m$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->i:J

    return-wide v0
.end method

.method public static synthetic j(Lorg/bouncycastle/pkix/jcajce/m$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->j:J

    return-wide v0
.end method

.method public static synthetic k(Lorg/bouncycastle/pkix/jcajce/m$c;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->k:Ljava/util/Date;

    return-object p0
.end method


# virtual methods
.method public l(Ljava/security/cert/CertStore;)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public m(Lorg/bouncycastle/util/t;)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/t<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Lorg/bouncycastle/pkix/jcajce/m$c;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public n()Lorg/bouncycastle/pkix/jcajce/m;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pkix/jcajce/m;-><init>(Lorg/bouncycastle/pkix/jcajce/m$c;Lorg/bouncycastle/pkix/jcajce/m$a;)V

    return-object v0
.end method

.method public o(Z)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->d:Z

    return-object p0
.end method

.method public p(Ljava/util/Date;)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->k:Ljava/util/Date;

    return-object p0
.end method

.method public q(ZJ)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->h:Z

    iput-wide p2, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->i:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->j:J

    return-object p0
.end method

.method public r(ZJ)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 4

    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->h:Z

    const-wide/16 v0, 0x3

    mul-long/2addr v0, p2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->i:J

    iput-wide p2, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->j:J

    return-object p0
.end method

.method public s(I)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->e:I

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public u(Ljava/security/Provider;)Lorg/bouncycastle/pkix/jcajce/m$c;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/m$c;->f:Ljava/security/Provider;

    return-object p0
.end method
