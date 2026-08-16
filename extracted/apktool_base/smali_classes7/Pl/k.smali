.class public LPl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:LQl/b;

.field public b:[B

.field public c:LBi/y;

.field public d:I

.field public e:I

.field public f:LBi/y;

.field public g:LQl/d;

.field public h:LPl/a;

.field public i:[I

.field public j:[[[B

.field public k:[[B

.field public l:LPl/f;

.field public m:LQl/a;

.field public n:LPl/d;

.field public o:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(LPl/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LQl/b;

    invoke-direct {v0}, LQl/b;-><init>()V

    iput-object v0, p0, LPl/k;->a:LQl/b;

    iput-object p1, p0, LPl/k;->h:LPl/a;

    invoke-interface {p1}, LPl/a;->get()LBi/y;

    move-result-object p1

    iput-object p1, p0, LPl/k;->c:LBi/y;

    iput-object p1, p0, LPl/k;->f:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LPl/k;->d:I

    new-instance p1, LQl/a;

    iget-object v0, p0, LPl/k;->c:LBi/y;

    invoke-direct {p1, v0}, LQl/a;-><init>(LBi/y;)V

    iput-object p1, p0, LPl/k;->m:LQl/a;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LPl/k;->o:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, LPl/g;

    iput-object p1, p0, LPl/k;->n:LPl/d;

    :goto_0
    invoke-virtual {p0}, LPl/k;->e()V

    goto :goto_1

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LPl/k;->o:Ljava/security/SecureRandom;

    check-cast p2, LPl/g;

    iput-object p2, p0, LPl/k;->n:LPl/d;

    goto :goto_0

    :cond_1
    check-cast p2, LPl/h;

    iput-object p2, p0, LPl/k;->n:LPl/d;

    invoke-virtual {p0}, LPl/k;->f()V

    :goto_1
    return-void
.end method

.method public b([B)[B
    .locals 10

    iget v0, p0, LPl/k;->d:I

    new-array v0, v0, [B

    iget-object v0, p0, LPl/k;->g:LQl/d;

    invoke-virtual {v0, p1}, LQl/d;->d([B)[B

    move-result-object p1

    iget-object v0, p0, LPl/k;->a:LQl/b;

    iget-object v1, p0, LPl/k;->j:[[[B

    iget v2, p0, LPl/k;->e:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, LQl/b;->c([[B)[B

    move-result-object v0

    iget-object v1, p0, LPl/k;->a:LQl/b;

    iget-object v2, p0, LPl/k;->i:[I

    iget v3, p0, LPl/k;->e:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, LQl/b;->e(I)[B

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v3, v2, [B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    array-length v6, p1

    invoke-static {p1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length p1, p1

    add-int/2addr v1, p1

    array-length p1, v0

    invoke-static {v0, v5, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [B

    iget v0, p0, LPl/k;->e:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, LPl/k;->a:LQl/b;

    iget-object v4, p0, LPl/k;->j:[[[B

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, LQl/b;->c([[B)[B

    move-result-object v1

    iget-object v4, p0, LPl/k;->a:LQl/b;

    iget-object v6, p0, LPl/k;->i:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, LQl/b;->e(I)[B

    move-result-object v4

    array-length v6, p1

    new-array v7, v6, [B

    array-length v8, p1

    invoke-static {p1, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v4

    add-int/2addr p1, v6

    iget-object v8, p0, LPl/k;->k:[[B

    aget-object v8, v8, v0

    array-length v8, v8

    add-int/2addr p1, v8

    array-length v8, v1

    add-int/2addr p1, v8

    new-array p1, p1, [B

    invoke-static {v7, v5, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v4

    invoke-static {v4, v5, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, LPl/k;->k:[[B

    aget-object v7, v7, v0

    array-length v8, v4

    add-int/2addr v8, v6

    array-length v9, v7

    invoke-static {v7, v5, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v6, v4

    iget-object v4, p0, LPl/k;->k:[[B

    aget-object v4, v4, v0

    array-length v4, v4

    add-int/2addr v6, v4

    array-length v4, v1

    invoke-static {v1, v5, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    invoke-static {p1, v5, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public d([B[B)Z
    .locals 12

    iget-object v0, p0, LPl/k;->f:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget v0, p0, LPl/k;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_4

    new-instance v4, LQl/c;

    iget-object v5, p0, LPl/k;->h:LPl/a;

    invoke-interface {v5}, LPl/a;->get()LBi/y;

    move-result-object v5

    iget-object v6, p0, LPl/k;->l:LPl/f;

    invoke-virtual {v6}, LPl/f;->d()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-direct {v4, v5, v6}, LQl/c;-><init>(LBi/y;I)V

    invoke-virtual {v4}, LQl/c;->c()I

    move-result v5

    iget-object v6, p0, LPl/k;->a:LQl/b;

    invoke-virtual {v6, p2, v3}, LQl/b;->b([BI)I

    move-result v6

    add-int/lit8 v3, v3, 0x4

    new-array v7, v5, [B

    invoke-static {p2, v3, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    invoke-virtual {v4, p1, v7}, LQl/c;->a([B[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OTS Public Key is null in GMSSSignature.verify"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v4, p0, LPl/k;->l:LPl/f;

    invoke-virtual {v4}, LPl/f;->a()[I

    move-result-object v4

    aget v4, v4, v0

    iget v5, p0, LPl/k;->d:I

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v5, v8, v1

    aput v4, v8, v2

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    move v5, v2

    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_1

    aget-object v8, v4, v5

    iget v9, p0, LPl/k;->d:I

    invoke-static {p2, v3, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, LPl/k;->d:I

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, LPl/k;->d:I

    new-array v5, v5, [B

    array-length v5, v4

    shl-int v5, v1, v5

    add-int/2addr v5, v6

    move v6, v2

    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_3

    iget v8, p0, LPl/k;->d:I

    shl-int/lit8 v9, v8, 0x1

    new-array v10, v9, [B

    rem-int/lit8 v11, v5, 0x2

    if-nez v11, :cond_2

    invoke-static {p1, v2, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v4, v6

    iget v8, p0, LPl/k;->d:I

    invoke-static {p1, v2, v10, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_2
    aget-object v11, v4, v6

    invoke-static {v11, v2, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, LPl/k;->d:I

    array-length v11, p1

    invoke-static {p1, v2, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v7

    :goto_3
    iget-object p1, p0, LPl/k;->c:LBi/y;

    invoke-interface {p1, v10, v2, v9}, LBi/y;->update([BII)V

    iget-object p1, p0, LPl/k;->c:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iget-object v8, p0, LPl/k;->c:LBi/y;

    invoke-interface {v8, p1, v2}, LBi/y;->c([BI)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    iget-object p2, p0, LPl/k;->b:[B

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 9

    iget-object v0, p0, LPl/k;->c:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, LPl/k;->n:LPl/d;

    check-cast v0, LPl/g;

    invoke-virtual {v0}, LPl/g;->o()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LPl/g;->h(I)I

    move-result v2

    invoke-virtual {v0, v1}, LPl/g;->l(I)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, LPl/d;->d()LPl/f;

    move-result-object v2

    iput-object v2, p0, LPl/k;->l:LPl/f;

    invoke-virtual {v2}, LPl/f;->c()I

    move-result v2

    iput v2, p0, LPl/k;->e:I

    invoke-virtual {v0}, LPl/g;->g()[[B

    move-result-object v2

    iget v3, p0, LPl/k;->e:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iget v3, p0, LPl/k;->d:I

    new-array v5, v3, [B

    new-array v5, v3, [B

    invoke-static {v2, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LPl/k;->m:LQl/a;

    invoke-virtual {v2, v5}, LQl/a;->c([B)[B

    move-result-object v2

    new-instance v3, LQl/d;

    iget-object v5, p0, LPl/k;->h:LPl/a;

    invoke-interface {v5}, LPl/a;->get()LBi/y;

    move-result-object v5

    iget-object v6, p0, LPl/k;->l:LPl/f;

    invoke-virtual {v6}, LPl/f;->d()[I

    move-result-object v6

    iget v7, p0, LPl/k;->e:I

    sub-int/2addr v7, v4

    aget v6, v6, v7

    invoke-direct {v3, v2, v5, v6}, LQl/d;-><init>([BLBi/y;I)V

    iput-object v3, p0, LPl/k;->g:LQl/d;

    invoke-virtual {v0}, LPl/g;->f()[[[B

    move-result-object v2

    iget v3, p0, LPl/k;->e:I

    new-array v3, v3, [[[B

    iput-object v3, p0, LPl/k;->j:[[[B

    move v3, v1

    :goto_0
    iget v5, p0, LPl/k;->e:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, LPl/k;->j:[[[B

    aget-object v6, v2, v3

    array-length v6, v6

    iget v7, p0, LPl/k;->d:I

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v4

    aput v6, v8, v1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    aput-object v6, v5, v3

    move v5, v1

    :goto_1
    aget-object v6, v2, v3

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-object v6, v6, v5

    iget-object v7, p0, LPl/k;->j:[[[B

    aget-object v7, v7, v3

    aget-object v7, v7, v5

    iget v8, p0, LPl/k;->d:I

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v5, [I

    iput-object v2, p0, LPl/k;->i:[I

    invoke-virtual {v0}, LPl/g;->i()[I

    move-result-object v2

    iget-object v3, p0, LPl/k;->i:[I

    iget v5, p0, LPl/k;->e:I

    invoke-static {v2, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, LPl/k;->e:I

    sub-int/2addr v2, v4

    new-array v2, v2, [[B

    iput-object v2, p0, LPl/k;->k:[[B

    move v2, v1

    :goto_2
    iget v3, p0, LPl/k;->e:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, LPl/g;->m(I)[B

    move-result-object v3

    iget-object v5, p0, LPl/k;->k:[[B

    array-length v6, v3

    new-array v6, v6, [B

    aput-object v6, v5, v2

    array-length v5, v3

    invoke-static {v3, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LPl/g;->p()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more signatures can be generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Private key already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, LPl/k;->c:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, LPl/k;->n:LPl/d;

    check-cast v0, LPl/h;

    invoke-virtual {v0}, LPl/h;->e()[B

    move-result-object v1

    iput-object v1, p0, LPl/k;->b:[B

    invoke-virtual {v0}, LPl/d;->d()LPl/f;

    move-result-object v0

    iput-object v0, p0, LPl/k;->l:LPl/f;

    invoke-virtual {v0}, LPl/f;->c()I

    move-result v0

    iput v0, p0, LPl/k;->e:I

    return-void
.end method
