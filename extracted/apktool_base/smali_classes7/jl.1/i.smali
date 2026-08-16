.class public Ljl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public final a:Ljl/o;


# direct methods
.method public constructor <init>(Ljl/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljl/i;->a:Ljl/o;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v0}, Ljl/m;->d()Ljl/n;

    move-result-object v0

    invoke-virtual {v0}, Ljl/n;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public b([B)[B
    .locals 12

    iget-object v0, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v0}, Ljl/m;->d()Ljl/n;

    move-result-object v0

    invoke-virtual {v0}, Ljl/n;->b()I

    move-result v1

    invoke-virtual {v0}, Ljl/n;->e()I

    move-result v2

    invoke-virtual {v0}, Ljl/n;->i()I

    move-result v3

    invoke-virtual {v0}, Ljl/n;->f()I

    move-result v4

    new-array v5, v1, [B

    iget-object v6, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v6}, Ljl/o;->e()[B

    move-result-object v6

    invoke-static {v5, v6, v1}, Ljl/q;->l([B[BI)V

    new-array v6, v1, [B

    iget-object v7, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v7}, Ljl/o;->f()[B

    move-result-object v7

    invoke-static {v6, v7, v1}, Ljl/q;->l([B[BI)V

    new-array v7, v1, [S

    invoke-static {v7, p1, v1, v2}, Ljl/q;->x([S[BII)V

    new-array v8, v1, [S

    invoke-static {v8, v7, v5, v1, v2}, Ljl/q;->I([S[S[BII)V

    new-array v5, v1, [S

    const/4 v7, 0x3

    invoke-static {v5, v8, v7, v2}, Ljl/q;->M([S[SII)V

    new-array v8, v1, [B

    invoke-static {v8, v5}, Ljl/q;->Q([B[S)V

    new-array v5, v1, [B

    invoke-static {v5, v8, v6, v1}, Ljl/q;->H([B[B[BI)V

    new-array v6, v1, [B

    invoke-static {v6, v5, v1, v3}, Ljl/q;->b([B[BII)V

    add-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-static {v3, v6, v1}, Ljl/q;->o([B[BI)V

    new-array v5, v1, [S

    iget-object v8, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v8}, Ljl/o;->h()[B

    move-result-object v8

    invoke-static {v5, v8, v1, v2}, Ljl/q;->k([S[BII)V

    new-array v8, v1, [S

    invoke-static {v8, v5, v6, v1, v2}, Ljl/q;->I([S[S[BII)V

    new-array v5, v1, [S

    invoke-static {v5, v8}, Ljl/q;->K([S[S)V

    new-array v6, v4, [B

    invoke-static {v6, v5, v1, v2}, Ljl/q;->y([B[SII)V

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v5, 0x0

    aput-byte v7, v2, v5

    invoke-static {v2, v3}, Ljl/q;->p([B[B)[B

    move-result-object v2

    array-length v8, v2

    const/4 v9, 0x2

    div-int/2addr v8, v9

    iget-object v10, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v10}, Ljl/o;->g()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v8, v10

    new-array v8, v8, [B

    array-length v10, v2

    div-int/2addr v10, v9

    invoke-static {v2, v5, v8, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v10}, Ljl/o;->g()[B

    move-result-object v10

    array-length v2, v2

    div-int/2addr v2, v9

    iget-object v11, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v11}, Ljl/o;->g()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v10, v5, v8, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v1, [B

    aput-byte v9, v2, v5

    invoke-static {v2, v8}, Ljl/q;->p([B[B)[B

    move-result-object v2

    array-length v8, v2

    div-int/2addr v8, v9

    add-int/2addr v8, v4

    new-array v10, v8, [B

    invoke-static {v6, v5, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v2

    div-int/2addr v6, v9

    invoke-static {v2, v5, v10, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v10}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object v2, p0, Ljl/i;->a:Ljl/o;

    invoke-virtual {v2}, Ljl/o;->i()[B

    move-result-object v2

    invoke-static {v3, v2, p1}, Ljl/q;->R([B[BI)V

    new-array v2, v1, [B

    aput-byte v7, v2, v5

    invoke-static {v2, v3}, Ljl/q;->p([B[B)[B

    move-result-object v2

    array-length v3, v2

    div-int/2addr v3, v9

    add-int/2addr v3, v8

    new-array v3, v3, [B

    array-length v4, v2

    div-int/2addr v4, v9

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    div-int/2addr v2, v9

    invoke-static {v10, v5, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v1

    int-to-byte p1, p1

    new-array v1, v1, [B

    aput-byte p1, v1, v5

    invoke-static {v1, v3}, Ljl/q;->p([B[B)[B

    move-result-object p1

    invoke-virtual {v0}, Ljl/n;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v5, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method
