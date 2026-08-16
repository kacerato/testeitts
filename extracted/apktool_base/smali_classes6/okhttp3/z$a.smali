.class public Lokhttp3/z$a;
.super LGg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LGg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/u$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lokhttp3/u$a;->e(Ljava/lang/String;)Lokhttp3/u$a;

    return-void
.end method

.method public b(Lokhttp3/u$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lokhttp3/u$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    return-void
.end method

.method public c(Lokhttp3/l;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lokhttp3/l;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public d(Lokhttp3/E$a;)I
    .locals 0

    iget p1, p1, Lokhttp3/E$a;->c:I

    return p1
.end method

.method public e(Lokhttp3/k;LKg/c;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lokhttp3/k;->b(LKg/c;)Z

    move-result p1

    return p1
.end method

.method public f(Lokhttp3/k;Lokhttp3/a;LKg/f;)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lokhttp3/k;->d(Lokhttp3/a;LKg/f;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public g(Lokhttp3/a;Lokhttp3/a;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lokhttp3/a;->d(Lokhttp3/a;)Z

    move-result p1

    return p1
.end method

.method public h(Lokhttp3/k;Lokhttp3/a;LKg/f;Lokhttp3/G;)LKg/c;
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lokhttp3/k;->f(Lokhttp3/a;LKg/f;Lokhttp3/G;)LKg/c;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/IllegalArgumentException;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid URL host"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public k(Lokhttp3/z;Lokhttp3/C;)Lokhttp3/e;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lokhttp3/B;->e(Lokhttp3/z;Lokhttp3/C;Z)Lokhttp3/B;

    move-result-object p1

    return-object p1
.end method

.method public l(Lokhttp3/k;LKg/c;)V
    .locals 0

    invoke-virtual {p1, p2}, Lokhttp3/k;->i(LKg/c;)V

    return-void
.end method

.method public m(Lokhttp3/k;)LKg/d;
    .locals 0

    iget-object p1, p1, Lokhttp3/k;->e:LKg/d;

    return-object p1
.end method

.method public n(Lokhttp3/z$b;LIg/f;)V
    .locals 0

    invoke-virtual {p1, p2}, Lokhttp3/z$b;->F(LIg/f;)V

    return-void
.end method

.method public o(Lokhttp3/e;)LKg/f;
    .locals 0

    check-cast p1, Lokhttp3/B;

    invoke-virtual {p1}, Lokhttp3/B;->g()LKg/f;

    move-result-object p1

    return-object p1
.end method

.method public p(Lokhttp3/e;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lokhttp3/B;

    invoke-virtual {p1, p2}, Lokhttp3/B;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method
