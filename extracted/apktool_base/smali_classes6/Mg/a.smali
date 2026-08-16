.class public final LMg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLg/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMg/a$g;,
        LMg/a$d;,
        LMg/a$f;,
        LMg/a$b;,
        LMg/a$c;,
        LMg/a$e;
    }
.end annotation


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x40000


# instance fields
.field public final b:Lokhttp3/z;

.field public final c:LKg/f;

.field public final d:LTg/e;

.field public final e:LTg/d;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>(Lokhttp3/z;LKg/f;LTg/e;LTg/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LMg/a;->f:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, LMg/a;->g:J

    iput-object p1, p0, LMg/a;->b:Lokhttp3/z;

    iput-object p2, p0, LMg/a;->c:LKg/f;

    iput-object p3, p0, LMg/a;->d:LTg/e;

    iput-object p4, p0, LMg/a;->e:LTg/d;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/C;J)LTg/x;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LMg/a;->i()LTg/x;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, LMg/a;->k(J)LTg/x;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->e:LTg/d;

    invoke-interface {v0}, LTg/d;->flush()V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->e:LTg/d;

    invoke-interface {v0}, LTg/d;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LMg/a;->c:LKg/f;

    invoke-virtual {v0}, LKg/f;->d()LKg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKg/c;->g()V

    :cond_0
    return-void
.end method

.method public d(Lokhttp3/C;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->c:LKg/f;

    invoke-virtual {v0}, LKg/f;->d()LKg/c;

    move-result-object v0

    invoke-virtual {v0}, LKg/c;->b()Lokhttp3/G;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, LLg/i;->a(Lokhttp3/C;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/C;->e()Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, LMg/a;->p(Lokhttp3/u;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lokhttp3/E;)Lokhttp3/F;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->c:LKg/f;

    iget-object v1, v0, LKg/f;->f:Lokhttp3/r;

    iget-object v0, v0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v1, v0}, Lokhttp3/r;->q(Lokhttp3/e;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, LLg/e;->c(Lokhttp3/E;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, LMg/a;->l(J)LTg/y;

    move-result-object p1

    new-instance v3, LLg/h;

    invoke-static {p1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object p1

    invoke-virtual {p0, p1}, LMg/a;->j(Lokhttp3/v;)LTg/y;

    move-result-object p1

    new-instance v1, LLg/h;

    invoke-static {p1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    return-object v1

    :cond_1
    invoke-static {p1}, LLg/e;->b(Lokhttp3/E;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v5}, LMg/a;->l(J)LTg/y;

    move-result-object p1

    new-instance v1, LLg/h;

    invoke-static {p1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    return-object v1

    :cond_2
    new-instance p1, LLg/h;

    invoke-virtual {p0}, LMg/a;->m()LTg/y;

    move-result-object v1

    invoke-static {v1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    return-object p1
.end method

.method public f(Z)Lokhttp3/E$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LMg/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, LMg/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LLg/k;->b(Ljava/lang/String;)LLg/k;

    move-result-object v0

    new-instance v1, Lokhttp3/E$a;

    invoke-direct {v1}, Lokhttp3/E$a;-><init>()V

    iget-object v3, v0, LLg/k;->a:Lokhttp3/A;

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->n(Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object v1

    iget v3, v0, LLg/k;->b:I

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->g(I)Lokhttp3/E$a;

    move-result-object v1

    iget-object v3, v0, LLg/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->k(Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {p0}, LMg/a;->o()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->j(Lokhttp3/u;)Lokhttp3/E$a;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, LLg/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget p1, v0, LLg/k;->b:I

    if-ne p1, v3, :cond_3

    iput v2, p0, LMg/a;->f:I

    return-object v1

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, LMg/a;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LMg/a;->c:LKg/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public g(LTg/j;)V
    .locals 2

    invoke-virtual {p1}, LTg/j;->k()LTg/z;

    move-result-object v0

    sget-object v1, LTg/z;->d:LTg/z;

    invoke-virtual {p1, v1}, LTg/j;->l(LTg/z;)LTg/j;

    invoke-virtual {v0}, LTg/z;->a()LTg/z;

    invoke-virtual {v0}, LTg/z;->b()LTg/z;

    return-void
.end method

.method public h()Z
    .locals 2

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()LTg/x;
    .locals 3

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, LMg/a;->f:I

    new-instance v0, LMg/a$c;

    invoke-direct {v0, p0}, LMg/a$c;-><init>(LMg/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LMg/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Lokhttp3/v;)LTg/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, LMg/a;->f:I

    new-instance v0, LMg/a$d;

    invoke-direct {v0, p0, p1}, LMg/a$d;-><init>(LMg/a;Lokhttp3/v;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LMg/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)LTg/x;
    .locals 2

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, LMg/a;->f:I

    new-instance v0, LMg/a$e;

    invoke-direct {v0, p0, p1, p2}, LMg/a$e;-><init>(LMg/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LMg/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(J)LTg/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, LMg/a;->f:I

    new-instance v0, LMg/a$f;

    invoke-direct {v0, p0, p1, p2}, LMg/a$f;-><init>(LMg/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LMg/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()LTg/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LMg/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LMg/a;->c:LKg/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, LMg/a;->f:I

    invoke-virtual {v0}, LKg/f;->j()V

    new-instance v0, LMg/a$g;

    invoke-direct {v0, p0}, LMg/a$g;-><init>(LMg/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LMg/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->d:LTg/e;

    iget-wide v1, p0, LMg/a;->g:J

    invoke-interface {v0, v1, v2}, LTg/e;->K1(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LMg/a;->g:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, LMg/a;->g:J

    return-object v0
.end method

.method public o()Lokhttp3/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    :goto_0
    invoke-virtual {p0}, LMg/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LGg/a;->a:LGg/a;

    invoke-virtual {v2, v0, v1}, LGg/a;->a(Lokhttp3/u$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v0

    return-object v0
.end method

.method public p(Lokhttp3/u;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LMg/a;->f:I

    if-nez v0, :cond_1

    iget-object v0, p0, LMg/a;->e:LTg/d;

    invoke-interface {v0, p2}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    invoke-virtual {p1}, Lokhttp3/u;->l()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, LMg/a;->e:LTg/d;

    invoke-virtual {p1, v1}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v2

    invoke-virtual {p1, v1}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v2

    invoke-interface {v2, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LMg/a;->e:LTg/d;

    invoke-interface {p1, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    const/4 p1, 0x1

    iput p1, p0, LMg/a;->f:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LMg/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
