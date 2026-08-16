.class public LZk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public a:LZk/a;

.field public b:LZk/f;


# direct methods
.method public constructor <init>(LZk/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZk/b;->b:LZk/f;

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object p1

    invoke-virtual {p0, p1}, LZk/b;->c(LZk/g;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, LZk/b;->b:LZk/f;

    invoke-virtual {v0}, LZk/f;->d()LZk/g;

    move-result-object v0

    invoke-virtual {v0}, LZk/g;->g()I

    move-result v0

    iget-object v1, p0, LZk/b;->b:LZk/f;

    invoke-virtual {v1}, LZk/f;->d()LZk/g;

    move-result-object v1

    invoke-virtual {v1}, LZk/g;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b([B)[B
    .locals 9

    iget-object v0, p0, LZk/b;->a:LZk/a;

    invoke-virtual {v0}, LZk/a;->p()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LZk/b;->b:LZk/f;

    check-cast v1, LZk/h;

    invoke-virtual {v1}, LZk/f;->d()LZk/g;

    move-result-object v2

    invoke-virtual {v2}, LZk/g;->g()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {p1, v8, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v6

    invoke-virtual {v1}, LZk/f;->d()LZk/g;

    move-result-object v2

    invoke-virtual {v2}, LZk/g;->g()I

    move-result v2

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v7

    invoke-virtual {v1}, LZk/h;->e()[B

    move-result-object v3

    invoke-virtual {v1}, LZk/h;->f()[B

    move-result-object v4

    invoke-virtual {v1}, LZk/h;->g()[B

    move-result-object v5

    iget-object v1, p0, LZk/b;->a:LZk/a;

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, LZk/a;->i([B[B[B[B[B[B)V

    iget-object p1, p0, LZk/b;->b:LZk/f;

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object p1

    invoke-virtual {p1}, LZk/g;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    invoke-static {v0, v8, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public final c(LZk/g;)V
    .locals 0

    invoke-virtual {p1}, LZk/g;->a()LZk/a;

    move-result-object p1

    iput-object p1, p0, LZk/b;->a:LZk/a;

    return-void
.end method
