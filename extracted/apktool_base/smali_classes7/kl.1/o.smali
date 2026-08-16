.class public Lkl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:Lkl/m;

.field public b:Lkl/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lkl/m;

    iput-object p2, p0, Lkl/o;->a:Lkl/m;

    goto :goto_0

    :cond_0
    check-cast p2, Lkl/n;

    iput-object p2, p0, Lkl/o;->b:Lkl/n;

    :goto_0
    return-void
.end method

.method public b([B)[B
    .locals 4

    iget-object v0, p0, Lkl/o;->a:Lkl/m;

    invoke-virtual {v0}, Lkl/k;->d()Lkl/l;

    move-result-object v0

    invoke-virtual {v0}, Lkl/l;->a()Lkl/h;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Lkl/h;->H(I)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lkl/o;->a:Lkl/m;

    invoke-virtual {v2}, Lkl/m;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lkl/h;->v([B[B[B)V

    invoke-virtual {v0}, Lkl/h;->I()I

    move-result v2

    new-array v2, v2, [B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0}, Lkl/h;->I()I

    move-result v0

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public d([B[B)Z
    .locals 3

    iget-object v0, p0, Lkl/o;->b:Lkl/n;

    invoke-virtual {v0}, Lkl/k;->d()Lkl/l;

    move-result-object v0

    invoke-virtual {v0}, Lkl/l;->a()Lkl/h;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [B

    array-length v2, p2

    invoke-static {v2}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p2

    iget-object v2, p0, Lkl/o;->b:Lkl/n;

    invoke-virtual {v2}, Lkl/n;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lkl/h;->x([B[B[B)Z

    move-result p2

    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method
