.class public abstract LB2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB2/q;


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)LB2/r;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, v1, p1}, Lw2/H;->k(ZLjava/lang/String;I)V

    invoke-interface {p0}, LB2/q;->i()LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public b([B)LB2/p;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LB2/c;->k([BII)LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public c(I)LB2/p;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LB2/c;->a(I)LB2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LB2/r;->putInt(I)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public d(J)LB2/p;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LB2/c;->a(I)LB2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LB2/r;->putLong(J)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;LB2/n;)LB2/p;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LB2/n<",
            "-TT;>;)",
            "LB2/p;"
        }
    .end annotation

    invoke-interface {p0}, LB2/q;->i()LB2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LB2/r;->i(Ljava/lang/Object;LB2/n;)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/p;
    .locals 1

    invoke-interface {p0}, LB2/q;->i()LB2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LB2/r;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;)LB2/p;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, LB2/c;->a(I)LB2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LB2/r;->d(Ljava/lang/CharSequence;)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/nio/ByteBuffer;)LB2/p;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, LB2/c;->a(I)LB2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LB2/r;->f(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public k([BII)LB2/p;
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lw2/H;->f0(III)V

    invoke-virtual {p0, p3}, LB2/c;->a(I)LB2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LB2/r;->e([BII)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method
