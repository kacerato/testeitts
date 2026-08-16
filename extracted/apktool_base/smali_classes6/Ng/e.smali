.class public final LNg/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLg/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNg/e$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "connection"

.field public static final h:Ljava/lang/String; = "host"

.field public static final i:Ljava/lang/String; = "keep-alive"

.field public static final j:Ljava/lang/String; = "proxy-connection"

.field public static final k:Ljava/lang/String; = "transfer-encoding"

.field public static final l:Ljava/lang/String; = "te"

.field public static final m:Ljava/lang/String; = "encoding"

.field public static final n:Ljava/lang/String; = "upgrade"

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lokhttp3/w$a;

.field public final c:LKg/f;

.field public final d:LNg/f;

.field public e:LNg/h;

.field public final f:Lokhttp3/A;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGg/c;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LNg/e;->o:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGg/c;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LNg/e;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;Lokhttp3/w$a;LKg/f;LNg/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LNg/e;->b:Lokhttp3/w$a;

    iput-object p3, p0, LNg/e;->c:LKg/f;

    iput-object p4, p0, LNg/e;->d:LNg/f;

    invoke-virtual {p1}, Lokhttp3/z;->w()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lokhttp3/A;->H2_PRIOR_KNOWLEDGE:Lokhttp3/A;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lokhttp3/A;->HTTP_2:Lokhttp3/A;

    :goto_0
    iput-object p2, p0, LNg/e;->f:Lokhttp3/A;

    return-void
.end method

.method public static g(Lokhttp3/C;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/C;",
            ")",
            "Ljava/util/List<",
            "LNg/b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/C;->e()Lokhttp3/u;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/u;->l()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, LNg/b;

    sget-object v3, LNg/b;->k:LTg/f;

    invoke-virtual {p0}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LNg/b;-><init>(LTg/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LNg/b;

    sget-object v3, LNg/b;->l:LTg/f;

    invoke-virtual {p0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v4

    invoke-static {v4}, LLg/i;->c(Lokhttp3/v;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LNg/b;-><init>(LTg/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, LNg/b;

    sget-object v4, LNg/b;->n:LTg/f;

    invoke-direct {v3, v4, v2}, LNg/b;-><init>(LTg/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, LNg/b;

    sget-object v3, LNg/b;->m:LTg/f;

    invoke-virtual {p0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/v;->P()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LNg/b;-><init>(LTg/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lokhttp3/u;->l()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    invoke-virtual {v0, v2}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v3

    sget-object v4, LNg/e;->o:Ljava/util/List;

    invoke-virtual {v3}, LTg/f;->b0()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, LNg/b;

    invoke-virtual {v0, v2}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, LNg/b;-><init>(LTg/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static h(Lokhttp3/u;Lokhttp3/A;)Lokhttp3/E$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    invoke-virtual {p0}, Lokhttp3/u;->l()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LLg/k;->b(Ljava/lang/String;)LLg/k;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget-object v6, LNg/e;->p:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, LGg/a;->a:LGg/a;

    invoke-virtual {v6, v0, v4, v5}, LGg/a;->b(Lokhttp3/u$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p0, Lokhttp3/E$a;

    invoke-direct {p0}, Lokhttp3/E$a;-><init>()V

    invoke-virtual {p0, p1}, Lokhttp3/E$a;->n(Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object p0

    iget p1, v2, LLg/k;->b:I

    invoke-virtual {p0, p1}, Lokhttp3/E$a;->g(I)Lokhttp3/E$a;

    move-result-object p0

    iget-object p1, v2, LLg/k;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/E$a;->k(Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object p0

    invoke-virtual {v0}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/E$a;->j(Lokhttp3/u;)Lokhttp3/E$a;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lokhttp3/C;J)LTg/x;
    .locals 0

    iget-object p1, p0, LNg/e;->e:LNg/h;

    invoke-virtual {p1}, LNg/h;->l()LTg/x;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/e;->d:LNg/f;

    invoke-virtual {v0}, LNg/f;->flush()V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/e;->e:LNg/h;

    invoke-virtual {v0}, LNg/h;->l()LTg/x;

    move-result-object v0

    invoke-interface {v0}, LTg/x;->close()V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, LNg/e;->e:LNg/h;

    if-eqz v0, :cond_0

    sget-object v1, LNg/a;->CANCEL:LNg/a;

    invoke-virtual {v0, v1}, LNg/h;->h(LNg/a;)V

    :cond_0
    return-void
.end method

.method public d(Lokhttp3/C;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/e;->e:LNg/h;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, LNg/e;->g(Lokhttp3/C;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, LNg/e;->d:LNg/f;

    invoke-virtual {v1, p1, v0}, LNg/f;->n(Ljava/util/List;Z)LNg/h;

    move-result-object p1

    iput-object p1, p0, LNg/e;->e:LNg/h;

    invoke-virtual {p1}, LNg/h;->p()LTg/z;

    move-result-object p1

    iget-object v0, p0, LNg/e;->b:Lokhttp3/w$a;

    invoke-interface {v0}, Lokhttp3/w$a;->a()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, LTg/z;->h(JLjava/util/concurrent/TimeUnit;)LTg/z;

    iget-object p1, p0, LNg/e;->e:LNg/h;

    invoke-virtual {p1}, LNg/h;->y()LTg/z;

    move-result-object p1

    iget-object v0, p0, LNg/e;->b:Lokhttp3/w$a;

    invoke-interface {v0}, Lokhttp3/w$a;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, LTg/z;->h(JLjava/util/concurrent/TimeUnit;)LTg/z;

    return-void
.end method

.method public e(Lokhttp3/E;)Lokhttp3/F;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/e;->c:LKg/f;

    iget-object v1, v0, LKg/f;->f:Lokhttp3/r;

    iget-object v0, v0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v1, v0}, Lokhttp3/r;->q(Lokhttp3/e;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, LLg/e;->b(Lokhttp3/E;)J

    move-result-wide v1

    new-instance p1, LNg/e$a;

    iget-object v3, p0, LNg/e;->e:LNg/h;

    invoke-virtual {v3}, LNg/h;->m()LTg/y;

    move-result-object v3

    invoke-direct {p1, p0, v3}, LNg/e$a;-><init>(LNg/e;LTg/y;)V

    new-instance v3, LLg/h;

    invoke-static {p1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    return-object v3
.end method

.method public f(Z)Lokhttp3/E$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/e;->e:LNg/h;

    invoke-virtual {v0}, LNg/h;->v()Lokhttp3/u;

    move-result-object v0

    iget-object v1, p0, LNg/e;->f:Lokhttp3/A;

    invoke-static {v0, v1}, LNg/e;->h(Lokhttp3/u;Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, LGg/a;->a:LGg/a;

    invoke-virtual {p1, v0}, LGg/a;->d(Lokhttp3/E$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method
