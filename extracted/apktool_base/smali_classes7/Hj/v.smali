.class public LHj/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LHj/v$b;
    }
.end annotation


# static fields
.field public static final n:I = 0x0

.field public static final o:I = 0x1


# instance fields
.field public final b:Ljava/security/cert/PKIXParameters;

.field public final c:LHj/t;

.field public final d:Ljava/util/Date;

.field public final e:Ljava/util/Date;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHj/s;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/s;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHj/o;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/o;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Z

.field public final k:Z

.field public final l:I

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LHj/v$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LHj/v$b;->a(LHj/v$b;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, LHj/v$b;->b(LHj/v$b;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, LHj/v;->d:Ljava/util/Date;

    invoke-static {p1}, LHj/v$b;->c(LHj/v$b;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, LHj/v;->e:Ljava/util/Date;

    invoke-static {p1}, LHj/v$b;->d(LHj/v$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LHj/v;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, LHj/v$b;->e(LHj/v$b;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LHj/v;->g:Ljava/util/Map;

    invoke-static {p1}, LHj/v$b;->f(LHj/v$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LHj/v;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, LHj/v$b;->g(LHj/v$b;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LHj/v;->i:Ljava/util/Map;

    invoke-static {p1}, LHj/v$b;->h(LHj/v$b;)LHj/t;

    move-result-object v0

    iput-object v0, p0, LHj/v;->c:LHj/t;

    invoke-static {p1}, LHj/v$b;->i(LHj/v$b;)Z

    move-result v0

    iput-boolean v0, p0, LHj/v;->j:Z

    invoke-static {p1}, LHj/v$b;->j(LHj/v$b;)Z

    move-result v0

    iput-boolean v0, p0, LHj/v;->k:Z

    invoke-static {p1}, LHj/v$b;->k(LHj/v$b;)I

    move-result v0

    iput v0, p0, LHj/v;->l:I

    invoke-static {p1}, LHj/v$b;->l(LHj/v$b;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LHj/v;->m:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(LHj/v$b;LHj/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LHj/v;-><init>(LHj/v$b;)V

    return-void
.end method

.method public static synthetic a(LHj/v;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method public static synthetic b(LHj/v;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, LHj/v;->d:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic c(LHj/v;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, LHj/v;->e:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic d(LHj/v;)LHj/t;
    .locals 0

    iget-object p0, p0, LHj/v;->c:LHj/t;

    return-object p0
.end method

.method public static synthetic e(LHj/v;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LHj/v;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(LHj/v;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LHj/v;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic g(LHj/v;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LHj/v;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(LHj/v;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LHj/v;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic i(LHj/v;)Z
    .locals 0

    iget-boolean p0, p0, LHj/v;->k:Z

    return p0
.end method

.method public static synthetic j(LHj/v;)I
    .locals 0

    iget p0, p0, LHj/v;->l:I

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, LHj/v;->j:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, LHj/v;->k:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LHj/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LHj/v;->h:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LHj/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LHj/v;->f:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, LHj/v;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public p()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LHj/v;->i:Ljava/util/Map;

    return-object v0
.end method

.method public r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lhi/E;",
            "LHj/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LHj/v;->g:Ljava/util/Map;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()LHj/t;
    .locals 1

    iget-object v0, p0, LHj/v;->c:LHj/t;

    return-object v0
.end method

.method public v()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, LHj/v;->m:Ljava/util/Set;

    return-object v0
.end method

.method public w()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, LHj/v;->d:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, LHj/v;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LHj/v;->l:I

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, LHj/v;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method
