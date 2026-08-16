.class public Lgl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public a:Lgl/d;

.field public b:Lgl/i;


# direct methods
.method public constructor <init>(Lgl/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl/e;->b:Lgl/i;

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgl/e;->c(Lgl/j;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lgl/e;->b:Lgl/i;

    invoke-virtual {v0}, Lgl/i;->d()Lgl/j;

    move-result-object v0

    invoke-virtual {v0}, Lgl/j;->h()I

    move-result v0

    iget-object v1, p0, Lgl/e;->b:Lgl/i;

    invoke-virtual {v1}, Lgl/i;->d()Lgl/j;

    move-result-object v1

    invoke-virtual {v1}, Lgl/j;->f()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x50

    return v0
.end method

.method public b([B)[B
    .locals 3

    iget-object v0, p0, Lgl/e;->a:Lgl/d;

    invoke-virtual {v0}, Lgl/d;->k()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lgl/e;->b:Lgl/i;

    check-cast v1, Lgl/k;

    invoke-virtual {v1}, Lgl/k;->e()[B

    move-result-object v1

    iget-object v2, p0, Lgl/e;->a:Lgl/d;

    invoke-virtual {v2, v0, p1, v1}, Lgl/d;->a([B[B[B)V

    iget-object p1, p0, Lgl/e;->b:Lgl/i;

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->c()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public final c(Lgl/j;)V
    .locals 0

    invoke-virtual {p1}, Lgl/j;->b()Lgl/d;

    move-result-object p1

    iput-object p1, p0, Lgl/e;->a:Lgl/d;

    return-void
.end method
