.class public abstract Lorg/bouncycastle/cms/jcajce/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/i0;


# instance fields
.field public c:Ljava/security/PrivateKey;

.field public d:Lorg/bouncycastle/cms/jcajce/c;

.field public e:Lorg/bouncycastle/cms/jcajce/c;

.field public f:Ljava/util/Map;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->e:Lorg/bouncycastle/cms/jcajce/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/w;->g:Z

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/w;->c:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public g(Lhi/b;Lhi/b;[B)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/C;->v(Ljava/lang/Object;)Luh/C;

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->d:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/w;->c:Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/jcajce/c;->i(Lhi/b;Ljava/security/PrivateKey;)LQk/c;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/cms/jcajce/o;

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/x;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/w;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/cms/jcajce/o;->d(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/o;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/o;->b(Lhi/b;[B)LQk/r;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->x(Lhi/b;LQk/r;)Ljava/security/Key;

    move-result-object p1

    iget-boolean p3, p0, Lorg/bouncycastle/cms/jcajce/w;->g:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/w;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->A(Lhi/b;Ljava/security/Key;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    return-object p1

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception unwrapping key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public h(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/w;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/w;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->c(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/w;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public j(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/w;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->d(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/w;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public k(Z)Lorg/bouncycastle/cms/jcajce/w;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/w;->g:Z

    return-object p0
.end method

.method public l(Z)Lorg/bouncycastle/cms/jcajce/w;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/w;->h:Z

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/w;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public n(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/w;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/w;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method
