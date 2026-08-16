.class public final Lokhttp3/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public a:Lokhttp3/p;

.field public b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/A;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lokhttp3/r$c;

.field public h:Ljava/net/ProxySelector;

.field public i:Lokhttp3/n;

.field public j:Lokhttp3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public k:LIg/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public l:Ljavax/net/SocketFactory;

.field public m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public n:LRg/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Lokhttp3/g;

.field public q:Lokhttp3/b;

.field public r:Lokhttp3/b;

.field public s:Lokhttp3/k;

.field public t:Lokhttp3/q;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/z$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/z$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lokhttp3/p;

    invoke-direct {v0}, Lokhttp3/p;-><init>()V

    iput-object v0, p0, Lokhttp3/z$b;->a:Lokhttp3/p;

    .line 5
    sget-object v0, Lokhttp3/z;->D:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/z$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lokhttp3/z;->E:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/z$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lokhttp3/r;->a:Lokhttp3/r;

    invoke-static {v0}, Lokhttp3/r;->k(Lokhttp3/r;)Lokhttp3/r$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$b;->g:Lokhttp3/r$c;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, LQg/a;

    invoke-direct {v0}, LQg/a;-><init>()V

    iput-object v0, p0, Lokhttp3/z$b;->h:Ljava/net/ProxySelector;

    .line 10
    :cond_0
    sget-object v0, Lokhttp3/n;->a:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/z$b;->i:Lokhttp3/n;

    .line 11
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$b;->l:Ljavax/net/SocketFactory;

    .line 12
    sget-object v0, LRg/e;->a:LRg/e;

    iput-object v0, p0, Lokhttp3/z$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 13
    sget-object v0, Lokhttp3/g;->c:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/z$b;->p:Lokhttp3/g;

    .line 14
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/z$b;->q:Lokhttp3/b;

    .line 15
    iput-object v0, p0, Lokhttp3/z$b;->r:Lokhttp3/b;

    .line 16
    new-instance v0, Lokhttp3/k;

    invoke-direct {v0}, Lokhttp3/k;-><init>()V

    iput-object v0, p0, Lokhttp3/z$b;->s:Lokhttp3/k;

    .line 17
    sget-object v0, Lokhttp3/q;->a:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/z$b;->t:Lokhttp3/q;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lokhttp3/z$b;->u:Z

    .line 19
    iput-boolean v0, p0, Lokhttp3/z$b;->v:Z

    .line 20
    iput-boolean v0, p0, Lokhttp3/z$b;->w:Z

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lokhttp3/z$b;->x:I

    const/16 v1, 0x2710

    .line 22
    iput v1, p0, Lokhttp3/z$b;->y:I

    .line 23
    iput v1, p0, Lokhttp3/z$b;->z:I

    .line 24
    iput v1, p0, Lokhttp3/z$b;->A:I

    .line 25
    iput v0, p0, Lokhttp3/z$b;->B:I

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/z$b;->e:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/z$b;->f:Ljava/util/List;

    .line 29
    iget-object v2, p1, Lokhttp3/z;->b:Lokhttp3/p;

    iput-object v2, p0, Lokhttp3/z$b;->a:Lokhttp3/p;

    .line 30
    iget-object v2, p1, Lokhttp3/z;->c:Ljava/net/Proxy;

    iput-object v2, p0, Lokhttp3/z$b;->b:Ljava/net/Proxy;

    .line 31
    iget-object v2, p1, Lokhttp3/z;->d:Ljava/util/List;

    iput-object v2, p0, Lokhttp3/z$b;->c:Ljava/util/List;

    .line 32
    iget-object v2, p1, Lokhttp3/z;->e:Ljava/util/List;

    iput-object v2, p0, Lokhttp3/z$b;->d:Ljava/util/List;

    .line 33
    iget-object v2, p1, Lokhttp3/z;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p1, Lokhttp3/z;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p1, Lokhttp3/z;->h:Lokhttp3/r$c;

    iput-object v0, p0, Lokhttp3/z$b;->g:Lokhttp3/r$c;

    .line 36
    iget-object v0, p1, Lokhttp3/z;->i:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/z$b;->h:Ljava/net/ProxySelector;

    .line 37
    iget-object v0, p1, Lokhttp3/z;->j:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/z$b;->i:Lokhttp3/n;

    .line 38
    iget-object v0, p1, Lokhttp3/z;->l:LIg/f;

    iput-object v0, p0, Lokhttp3/z$b;->k:LIg/f;

    .line 39
    iget-object v0, p1, Lokhttp3/z;->k:Lokhttp3/c;

    iput-object v0, p0, Lokhttp3/z$b;->j:Lokhttp3/c;

    .line 40
    iget-object v0, p1, Lokhttp3/z;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/z$b;->l:Ljavax/net/SocketFactory;

    .line 41
    iget-object v0, p1, Lokhttp3/z;->n:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/z$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 42
    iget-object v0, p1, Lokhttp3/z;->o:LRg/c;

    iput-object v0, p0, Lokhttp3/z$b;->n:LRg/c;

    .line 43
    iget-object v0, p1, Lokhttp3/z;->p:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/z$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 44
    iget-object v0, p1, Lokhttp3/z;->q:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/z$b;->p:Lokhttp3/g;

    .line 45
    iget-object v0, p1, Lokhttp3/z;->r:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/z$b;->q:Lokhttp3/b;

    .line 46
    iget-object v0, p1, Lokhttp3/z;->s:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/z$b;->r:Lokhttp3/b;

    .line 47
    iget-object v0, p1, Lokhttp3/z;->t:Lokhttp3/k;

    iput-object v0, p0, Lokhttp3/z$b;->s:Lokhttp3/k;

    .line 48
    iget-object v0, p1, Lokhttp3/z;->u:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/z$b;->t:Lokhttp3/q;

    .line 49
    iget-boolean v0, p1, Lokhttp3/z;->v:Z

    iput-boolean v0, p0, Lokhttp3/z$b;->u:Z

    .line 50
    iget-boolean v0, p1, Lokhttp3/z;->w:Z

    iput-boolean v0, p0, Lokhttp3/z$b;->v:Z

    .line 51
    iget-boolean v0, p1, Lokhttp3/z;->x:Z

    iput-boolean v0, p0, Lokhttp3/z$b;->w:Z

    .line 52
    iget v0, p1, Lokhttp3/z;->y:I

    iput v0, p0, Lokhttp3/z$b;->x:I

    .line 53
    iget v0, p1, Lokhttp3/z;->z:I

    iput v0, p0, Lokhttp3/z$b;->y:I

    .line 54
    iget v0, p1, Lokhttp3/z;->A:I

    iput v0, p0, Lokhttp3/z$b;->z:I

    .line 55
    iget v0, p1, Lokhttp3/z;->B:I

    iput v0, p0, Lokhttp3/z$b;->A:I

    .line 56
    iget p1, p1, Lokhttp3/z;->C:I

    iput p1, p0, Lokhttp3/z$b;->B:I

    return-void
.end method


# virtual methods
.method public A(Lokhttp3/b;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->q:Lokhttp3/b;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxyAuthenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(Ljava/net/ProxySelector;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->h:Ljava/net/ProxySelector;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxySelector == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->z:I

    return-object p0
.end method

.method public D(Ljava/time/Duration;)Lokhttp3/z$b;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->z:I

    return-object p0
.end method

.method public E(Z)Lokhttp3/z$b;
    .locals 0

    iput-boolean p1, p0, Lokhttp3/z$b;->w:Z

    return-object p0
.end method

.method public F(LIg/f;)V
    .locals 0
    .param p1    # LIg/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/z$b;->k:LIg/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/z$b;->j:Lokhttp3/c;

    return-void
.end method

.method public G(Ljavax/net/SocketFactory;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->l:Ljavax/net/SocketFactory;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "socketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v0

    invoke-virtual {v0, p1}, LPg/f;->c(Ljavax/net/ssl/SSLSocketFactory;)LRg/c;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$b;->n:LRg/c;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/z$b;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, LRg/c;->b(Ljavax/net/ssl/X509TrustManager;)LRg/c;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$b;->n:LRg/c;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trustManager == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sslSocketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->A:I

    return-object p0
.end method

.method public K(Ljava/time/Duration;)Lokhttp3/z$b;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->A:I

    return-object p0
.end method

.method public a(Lokhttp3/w;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lokhttp3/z$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lokhttp3/w;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lokhttp3/z$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lokhttp3/b;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->r:Lokhttp3/b;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lokhttp3/z;
    .locals 1

    new-instance v0, Lokhttp3/z;

    invoke-direct {v0, p0}, Lokhttp3/z;-><init>(Lokhttp3/z$b;)V

    return-object v0
.end method

.method public e(Lokhttp3/c;)Lokhttp3/z$b;
    .locals 0
    .param p1    # Lokhttp3/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/z$b;->j:Lokhttp3/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/z$b;->k:LIg/f;

    return-object p0
.end method

.method public f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->x:I

    return-object p0
.end method

.method public g(Ljava/time/Duration;)Lokhttp3/z$b;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->x:I

    return-object p0
.end method

.method public h(Lokhttp3/g;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->p:Lokhttp3/g;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificatePinner == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->y:I

    return-object p0
.end method

.method public j(Ljava/time/Duration;)Lokhttp3/z$b;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->y:I

    return-object p0
.end method

.method public k(Lokhttp3/k;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->s:Lokhttp3/k;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Ljava/util/List;)Lokhttp3/z$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;)",
            "Lokhttp3/z$b;"
        }
    .end annotation

    invoke-static {p1}, LGg/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public m(Lokhttp3/n;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->i:Lokhttp3/n;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookieJar == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Lokhttp3/p;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->a:Lokhttp3/p;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lokhttp3/q;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->t:Lokhttp3/q;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dns == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lokhttp3/r;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lokhttp3/r;->k(Lokhttp3/r;)Lokhttp3/r$c;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$b;->g:Lokhttp3/r$c;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lokhttp3/r$c;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->g:Lokhttp3/r$c;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListenerFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Z)Lokhttp3/z$b;
    .locals 0

    iput-boolean p1, p0, Lokhttp3/z$b;->v:Z

    return-object p0
.end method

.method public s(Z)Lokhttp3/z$b;
    .locals 0

    iput-boolean p1, p0, Lokhttp3/z$b;->u:Z

    return-object p0
.end method

.method public t(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/z$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lokhttp3/z$b;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/z$b;->e:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/z$b;->f:Ljava/util/List;

    return-object v0
.end method

.method public w(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;
    .locals 1

    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->B:I

    return-object p0
.end method

.method public x(Ljava/time/Duration;)Lokhttp3/z$b;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/z$b;->B:I

    return-object p0
.end method

.method public y(Ljava/util/List;)Lokhttp3/z$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/A;",
            ">;)",
            "Lokhttp3/z$b;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lokhttp3/A;->H2_PRIOR_KNOWLEDGE:Lokhttp3/A;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Lokhttp3/A;->HTTP_1_0:Lokhttp3/A;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lokhttp3/A;->SPDY_3:Lokhttp3/A;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$b;->c:Ljava/util/List;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(Ljava/net/Proxy;)Lokhttp3/z$b;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/z$b;->b:Ljava/net/Proxy;

    return-object p0
.end method
