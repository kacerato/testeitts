.class public LHj/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/cert/PKIXParameters;

.field public final b:Ljava/util/Date;

.field public final c:Ljava/util/Date;

.field public d:LHj/t;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHj/s;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHj/o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/o;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LHj/v;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LHj/v$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LHj/v$b;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LHj/v$b;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LHj/v$b;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, LHj/v$b;->j:I

    iput-boolean v0, p0, LHj/v$b;->k:Z

    invoke-static {p1}, LHj/v;->a(LHj/v;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, LHj/v$b;->a:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, LHj/v;->b(LHj/v;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, LHj/v$b;->b:Ljava/util/Date;

    invoke-static {p1}, LHj/v;->c(LHj/v;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, LHj/v$b;->c:Ljava/util/Date;

    invoke-static {p1}, LHj/v;->d(LHj/v;)LHj/t;

    move-result-object v0

    iput-object v0, p0, LHj/v$b;->d:LHj/t;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LHj/v;->e(LHj/v;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LHj/v$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, LHj/v;->f(LHj/v;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, LHj/v$b;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LHj/v;->g(LHj/v;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LHj/v$b;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, LHj/v;->h(LHj/v;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, LHj/v$b;->h:Ljava/util/Map;

    invoke-static {p1}, LHj/v;->i(LHj/v;)Z

    move-result v0

    iput-boolean v0, p0, LHj/v$b;->k:Z

    invoke-static {p1}, LHj/v;->j(LHj/v;)I

    move-result v0

    iput v0, p0, LHj/v$b;->j:I

    invoke-virtual {p1}, LHj/v;->B()Z

    move-result v0

    iput-boolean v0, p0, LHj/v$b;->i:Z

    invoke-virtual {p1}, LHj/v;->v()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LHj/v$b;->l:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LHj/v$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LHj/v$b;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LHj/v$b;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LHj/v$b;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, LHj/v$b;->j:I

    iput-boolean v0, p0, LHj/v$b;->k:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, LHj/v$b;->a:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LHj/t$b;

    invoke-direct {v1, v0}, LHj/t$b;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, LHj/t$b;->a()LHj/t;

    move-result-object v0

    iput-object v0, p0, LHj/v$b;->d:LHj/t;

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, LHj/v$b;->b:Ljava/util/Date;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    iput-object v0, p0, LHj/v$b;->c:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, LHj/v$b;->i:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LHj/v$b;->l:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(LHj/v$b;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, LHj/v$b;->a:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method public static synthetic b(LHj/v$b;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, LHj/v$b;->b:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic c(LHj/v$b;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, LHj/v$b;->c:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic d(LHj/v$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LHj/v$b;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(LHj/v$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LHj/v$b;->f:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic f(LHj/v$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LHj/v$b;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(LHj/v$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LHj/v$b;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic h(LHj/v$b;)LHj/t;
    .locals 0

    iget-object p0, p0, LHj/v$b;->d:LHj/t;

    return-object p0
.end method

.method public static synthetic i(LHj/v$b;)Z
    .locals 0

    iget-boolean p0, p0, LHj/v$b;->i:Z

    return p0
.end method

.method public static synthetic j(LHj/v$b;)Z
    .locals 0

    iget-boolean p0, p0, LHj/v$b;->k:Z

    return p0
.end method

.method public static synthetic k(LHj/v$b;)I
    .locals 0

    iget p0, p0, LHj/v$b;->j:I

    return p0
.end method

.method public static synthetic l(LHj/v$b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LHj/v$b;->l:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public m(LHj/o;)LHj/v$b;
    .locals 1

    iget-object v0, p0, LHj/v$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public n(LHj/s;)LHj/v$b;
    .locals 1

    iget-object v0, p0, LHj/v$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public o(Lhi/E;LHj/o;)LHj/v$b;
    .locals 1

    iget-object v0, p0, LHj/v$b;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Lhi/E;LHj/s;)LHj/v$b;
    .locals 1

    iget-object v0, p0, LHj/v$b;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public q()LHj/v;
    .locals 2

    new-instance v0, LHj/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LHj/v;-><init>(LHj/v$b;LHj/v$a;)V

    return-object v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, LHj/v$b;->i:Z

    return-void
.end method

.method public s(LHj/t;)LHj/v$b;
    .locals 0

    iput-object p1, p0, LHj/v$b;->d:LHj/t;

    return-object p0
.end method

.method public t(Ljava/security/cert/TrustAnchor;)LHj/v$b;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LHj/v$b;->l:Ljava/util/Set;

    return-object p0
.end method

.method public u(Ljava/util/Set;)LHj/v$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "LHj/v$b;"
        }
    .end annotation

    iput-object p1, p0, LHj/v$b;->l:Ljava/util/Set;

    return-object p0
.end method

.method public v(Z)LHj/v$b;
    .locals 0

    iput-boolean p1, p0, LHj/v$b;->k:Z

    return-object p0
.end method

.method public w(I)LHj/v$b;
    .locals 0

    iput p1, p0, LHj/v$b;->j:I

    return-object p0
.end method
