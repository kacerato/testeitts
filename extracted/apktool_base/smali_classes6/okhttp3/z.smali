.class public Lokhttp3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/e$a;
.implements Lokhttp3/I$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/z$b;
    }
.end annotation


# static fields
.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/A;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final b:Lokhttp3/p;

.field public final c:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/A;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
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

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lokhttp3/r$c;

.field public final i:Ljava/net/ProxySelector;

.field public final j:Lokhttp3/n;

.field public final k:Lokhttp3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final l:LIg/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final m:Ljavax/net/SocketFactory;

.field public final n:Ljavax/net/ssl/SSLSocketFactory;

.field public final o:LRg/c;

.field public final p:Ljavax/net/ssl/HostnameVerifier;

.field public final q:Lokhttp3/g;

.field public final r:Lokhttp3/b;

.field public final s:Lokhttp3/b;

.field public final t:Lokhttp3/k;

.field public final u:Lokhttp3/q;

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lokhttp3/A;->HTTP_2:Lokhttp3/A;

    sget-object v1, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    filled-new-array {v0, v1}, [Lokhttp3/A;

    move-result-object v0

    invoke-static {v0}, LGg/c;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/z;->D:Ljava/util/List;

    sget-object v0, Lokhttp3/l;->h:Lokhttp3/l;

    sget-object v1, Lokhttp3/l;->j:Lokhttp3/l;

    filled-new-array {v0, v1}, [Lokhttp3/l;

    move-result-object v0

    invoke-static {v0}, LGg/c;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/z;->E:Ljava/util/List;

    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    sput-object v0, LGg/a;->a:LGg/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/z$b;

    invoke-direct {v0}, Lokhttp3/z$b;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/z;-><init>(Lokhttp3/z$b;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/z$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lokhttp3/z$b;->a:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/z;->b:Lokhttp3/p;

    .line 4
    iget-object v0, p1, Lokhttp3/z$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/z;->c:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lokhttp3/z$b;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/z;->d:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lokhttp3/z$b;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/z;->e:Ljava/util/List;

    .line 7
    iget-object v1, p1, Lokhttp3/z$b;->e:Ljava/util/List;

    invoke-static {v1}, LGg/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z;->f:Ljava/util/List;

    .line 8
    iget-object v1, p1, Lokhttp3/z$b;->f:Ljava/util/List;

    invoke-static {v1}, LGg/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z;->g:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lokhttp3/z$b;->g:Lokhttp3/r$c;

    iput-object v1, p0, Lokhttp3/z;->h:Lokhttp3/r$c;

    .line 10
    iget-object v1, p1, Lokhttp3/z$b;->h:Ljava/net/ProxySelector;

    iput-object v1, p0, Lokhttp3/z;->i:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Lokhttp3/z$b;->i:Lokhttp3/n;

    iput-object v1, p0, Lokhttp3/z;->j:Lokhttp3/n;

    .line 12
    iget-object v1, p1, Lokhttp3/z$b;->j:Lokhttp3/c;

    iput-object v1, p0, Lokhttp3/z;->k:Lokhttp3/c;

    .line 13
    iget-object v1, p1, Lokhttp3/z$b;->k:LIg/f;

    iput-object v1, p0, Lokhttp3/z;->l:LIg/f;

    .line 14
    iget-object v1, p1, Lokhttp3/z$b;->l:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lokhttp3/z;->m:Ljavax/net/SocketFactory;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/l;

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v3}, Lokhttp3/l;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p1, Lokhttp3/z$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, LGg/c;->D()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lokhttp3/z;->u(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 20
    invoke-static {v0}, LRg/c;->b(Ljavax/net/ssl/X509TrustManager;)LRg/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->o:LRg/c;

    goto :goto_2

    .line 21
    :cond_4
    :goto_1
    iput-object v0, p0, Lokhttp3/z;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    iget-object v0, p1, Lokhttp3/z$b;->n:LRg/c;

    iput-object v0, p0, Lokhttp3/z;->o:LRg/c;

    .line 23
    :goto_2
    iget-object v0, p0, Lokhttp3/z;->n:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 24
    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/z;->n:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, LPg/f;->g(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 25
    :cond_5
    iget-object v0, p1, Lokhttp3/z$b;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/z;->p:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    iget-object v0, p1, Lokhttp3/z$b;->p:Lokhttp3/g;

    iget-object v1, p0, Lokhttp3/z;->o:LRg/c;

    invoke-virtual {v0, v1}, Lokhttp3/g;->g(LRg/c;)Lokhttp3/g;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->q:Lokhttp3/g;

    .line 27
    iget-object v0, p1, Lokhttp3/z$b;->q:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/z;->r:Lokhttp3/b;

    .line 28
    iget-object v0, p1, Lokhttp3/z$b;->r:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/z;->s:Lokhttp3/b;

    .line 29
    iget-object v0, p1, Lokhttp3/z$b;->s:Lokhttp3/k;

    iput-object v0, p0, Lokhttp3/z;->t:Lokhttp3/k;

    .line 30
    iget-object v0, p1, Lokhttp3/z$b;->t:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/z;->u:Lokhttp3/q;

    .line 31
    iget-boolean v0, p1, Lokhttp3/z$b;->u:Z

    iput-boolean v0, p0, Lokhttp3/z;->v:Z

    .line 32
    iget-boolean v0, p1, Lokhttp3/z$b;->v:Z

    iput-boolean v0, p0, Lokhttp3/z;->w:Z

    .line 33
    iget-boolean v0, p1, Lokhttp3/z$b;->w:Z

    iput-boolean v0, p0, Lokhttp3/z;->x:Z

    .line 34
    iget v0, p1, Lokhttp3/z$b;->x:I

    iput v0, p0, Lokhttp3/z;->y:I

    .line 35
    iget v0, p1, Lokhttp3/z$b;->y:I

    iput v0, p0, Lokhttp3/z;->z:I

    .line 36
    iget v0, p1, Lokhttp3/z$b;->z:I

    iput v0, p0, Lokhttp3/z;->A:I

    .line 37
    iget v0, p1, Lokhttp3/z$b;->A:I

    iput v0, p0, Lokhttp3/z;->B:I

    .line 38
    iget p1, p1, Lokhttp3/z$b;->B:I

    iput p1, p0, Lokhttp3/z;->C:I

    .line 39
    iget-object p1, p0, Lokhttp3/z;->f:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 40
    iget-object p1, p0, Lokhttp3/z;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/z;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/z;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v0

    invoke-virtual {v0}, LPg/f;->m()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    invoke-static {v0, p0}, LGg/c;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lokhttp3/z;->A:I

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/z;->x:Z

    return v0
.end method

.method public C()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public D()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lokhttp3/z;->B:I

    return v0
.end method

.method public a(Lokhttp3/C;)Lokhttp3/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lokhttp3/B;->e(Lokhttp3/z;Lokhttp3/C;Z)Lokhttp3/B;

    move-result-object p1

    return-object p1
.end method

.method public b(Lokhttp3/C;Lokhttp3/J;)Lokhttp3/I;
    .locals 7

    new-instance v6, LSg/a;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lokhttp3/z;->C:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LSg/a;-><init>(Lokhttp3/C;Lokhttp3/J;Ljava/util/Random;J)V

    invoke-virtual {v6, p0}, LSg/a;->m(Lokhttp3/z;)V

    return-object v6
.end method

.method public c()Lokhttp3/b;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->s:Lokhttp3/b;

    return-object v0
.end method

.method public d()Lokhttp3/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/z;->k:Lokhttp3/c;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lokhttp3/z;->y:I

    return v0
.end method

.method public f()Lokhttp3/g;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->q:Lokhttp3/g;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lokhttp3/z;->z:I

    return v0
.end method

.method public h()Lokhttp3/k;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->t:Lokhttp3/k;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/z;->e:Ljava/util/List;

    return-object v0
.end method

.method public j()Lokhttp3/n;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->j:Lokhttp3/n;

    return-object v0
.end method

.method public k()Lokhttp3/p;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->b:Lokhttp3/p;

    return-object v0
.end method

.method public l()Lokhttp3/q;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->u:Lokhttp3/q;

    return-object v0
.end method

.method public m()Lokhttp3/r$c;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->h:Lokhttp3/r$c;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/z;->w:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/z;->v:Z

    return v0
.end method

.method public p()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/z;->f:Ljava/util/List;

    return-object v0
.end method

.method public r()LIg/f;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->k:Lokhttp3/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lokhttp3/c;->b:LIg/f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/z;->l:LIg/f;

    :goto_0
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/z;->g:Ljava/util/List;

    return-object v0
.end method

.method public t()Lokhttp3/z$b;
    .locals 1

    new-instance v0, Lokhttp3/z$b;

    invoke-direct {v0, p0}, Lokhttp3/z$b;-><init>(Lokhttp3/z;)V

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lokhttp3/z;->C:I

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/z;->d:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/z;->c:Ljava/net/Proxy;

    return-object v0
.end method

.method public y()Lokhttp3/b;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->r:Lokhttp3/b;

    return-object v0
.end method

.method public z()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lokhttp3/z;->i:Ljava/net/ProxySelector;

    return-object v0
.end method
