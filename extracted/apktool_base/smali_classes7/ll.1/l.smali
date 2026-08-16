.class public Lll/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# static fields
.field public static final g:I = 0x10000


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:I

.field public c:Lll/a;

.field public d:Lll/g;

.field public e:LBi/y;

.field public f:Lll/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lll/a;

    invoke-direct {v0}, Lll/a;-><init>()V

    iput-object v0, p0, Lll/l;->c:Lll/a;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lll/l;->a:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, Lll/g;

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Lll/g;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p1}, Lll/g;->e()Lll/h;

    move-result-object v0

    invoke-virtual {v0}, Lll/h;->d()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p2, Lll/c;

    invoke-virtual {p1}, Lll/g;->e()Lll/h;

    move-result-object v1

    invoke-virtual {v1}, Lll/h;->a()LBi/y;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lll/c;-><init>([BLBi/y;)V

    iput-object p2, p0, Lll/l;->a:Ljava/security/SecureRandom;

    :goto_0
    invoke-virtual {p1}, Lll/g;->e()Lll/h;

    move-result-object p2

    invoke-virtual {p2}, Lll/h;->l()Lll/n;

    move-result-object p2

    iput-object p2, p0, Lll/l;->f:Lll/n;

    iput-object p1, p0, Lll/l;->d:Lll/g;

    goto :goto_1

    :cond_1
    check-cast p2, Lll/g;

    iput-object p2, p0, Lll/l;->d:Lll/g;

    invoke-virtual {p2}, Lll/g;->e()Lll/h;

    move-result-object p1

    invoke-virtual {p1}, Lll/h;->l()Lll/n;

    move-result-object p1

    iput-object p1, p0, Lll/l;->f:Lll/n;

    :goto_1
    iget-object p1, p0, Lll/l;->d:Lll/g;

    invoke-virtual {p1}, Lll/g;->d()I

    move-result p1

    iput p1, p0, Lll/l;->b:I

    iget-object p1, p0, Lll/l;->d:Lll/g;

    invoke-virtual {p1}, Lll/g;->e()Lll/h;

    move-result-object p1

    invoke-virtual {p1}, Lll/h;->a()LBi/y;

    move-result-object p1

    iput-object p1, p0, Lll/l;->e:LBi/y;

    return-void
.end method

.method public b([B)[B
    .locals 0

    invoke-virtual {p0, p1}, Lll/l;->e([B)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B[B)Z
    .locals 6

    iget-object v0, p0, Lll/l;->e:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lll/l;->e:LBi/y;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lll/l;->e:LBi/y;

    invoke-interface {p1, v0, v3}, LBi/y;->c([BI)I

    iget-object p1, p0, Lll/l;->d:Lll/g;

    invoke-virtual {p1}, Lll/g;->e()Lll/h;

    move-result-object p1

    invoke-virtual {p1}, Lll/h;->e()I

    move-result p1

    iget-object v1, p0, Lll/l;->d:Lll/g;

    invoke-virtual {v1}, Lll/g;->e()Lll/h;

    move-result-object v1

    invoke-virtual {v1}, Lll/h;->f()I

    move-result v1

    new-instance v2, Lll/k;

    iget-object v4, p0, Lll/l;->d:Lll/g;

    invoke-virtual {v4}, Lll/g;->e()Lll/h;

    move-result-object v4

    invoke-direct {v2, v4}, Lll/k;-><init>(Lll/h;)V

    array-length v4, p2

    invoke-static {p2, v1, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    iget-object v5, p0, Lll/l;->e:LBi/y;

    new-array p1, p1, [B

    invoke-static {v5, v0, v4, p1}, Lll/m;->m(LBi/y;[B[B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lll/l;->f([B)[S

    move-result-object p1

    invoke-static {p2, v3, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p2

    invoke-static {p2}, Lll/m;->d([B)[S

    move-result-object p2

    sget-object v0, Lll/l$a;->a:[I

    iget-object v1, p0, Lll/l;->f:Lll/n;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No valid version. Please choose one of the following: classic, circumzenithal, compressed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lll/l;->d:Lll/g;

    check-cast v0, Lll/j;

    invoke-virtual {v2, v0, p2}, Lll/k;->d(Lll/j;[S)[S

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lll/l;->d:Lll/g;

    check-cast v0, Lll/j;

    invoke-virtual {v2, v0, p2}, Lll/k;->c(Lll/j;[S)[S

    move-result-object p2

    :goto_1
    invoke-static {p1, p2}, Lll/m;->e([S[S)Z

    move-result p1

    return p1
.end method

.method public final e([B)[B
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lll/l;->e:LBi/y;

    invoke-interface {v2}, LBi/y;->f()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, v0, Lll/l;->e:LBi/y;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, v4}, LBi/y;->update([BII)V

    iget-object v1, v0, Lll/l;->e:LBi/y;

    invoke-interface {v1, v2, v5}, LBi/y;->c([BI)I

    iget-object v1, v0, Lll/l;->d:Lll/g;

    invoke-virtual {v1}, Lll/g;->e()Lll/h;

    move-result-object v1

    invoke-virtual {v1}, Lll/h;->j()I

    move-result v1

    iget-object v3, v0, Lll/l;->d:Lll/g;

    invoke-virtual {v3}, Lll/g;->e()Lll/h;

    move-result-object v3

    invoke-virtual {v3}, Lll/h;->h()I

    move-result v3

    iget-object v4, v0, Lll/l;->d:Lll/g;

    invoke-virtual {v4}, Lll/g;->e()Lll/h;

    move-result-object v4

    invoke-virtual {v4}, Lll/h;->i()I

    move-result v4

    iget-object v6, v0, Lll/l;->d:Lll/g;

    invoke-virtual {v6}, Lll/g;->e()Lll/h;

    move-result-object v6

    invoke-virtual {v6}, Lll/h;->e()I

    move-result v6

    iget-object v7, v0, Lll/l;->d:Lll/g;

    invoke-virtual {v7}, Lll/g;->e()Lll/h;

    move-result-object v7

    invoke-virtual {v7}, Lll/h;->f()I

    move-result v7

    iget-object v8, v0, Lll/l;->d:Lll/g;

    check-cast v8, Lll/i;

    iget-object v9, v0, Lll/l;->e:LBi/y;

    iget-object v10, v8, Lll/i;->e:[B

    invoke-interface {v9}, LBi/y;->f()I

    move-result v11

    new-array v11, v11, [B

    invoke-static {v9, v10, v2, v11}, Lll/m;->m(LBi/y;[B[B[B)[B

    move-result-object v9

    new-instance v10, Lll/c;

    invoke-virtual {v8}, Lll/g;->e()Lll/h;

    move-result-object v11

    invoke-virtual {v11}, Lll/h;->a()LBi/y;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lll/c;-><init>([BLBi/y;)V

    iput-object v10, v0, Lll/l;->a:Ljava/security/SecureRandom;

    new-array v9, v1, [S

    new-array v10, v3, [S

    new-array v11, v4, [S

    new-array v12, v4, [S

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v15, 0x1

    aput v3, v14, v15

    aput v4, v14, v5

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[S

    move/from16 p1, v7

    new-array v7, v13, [I

    aput v4, v7, v15

    const/16 v16, 0x0

    aput v4, v7, v16

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    invoke-virtual {v8}, Lll/g;->e()Lll/h;

    move-result-object v7

    invoke-virtual {v7}, Lll/h;->c()I

    move-result v7

    new-array v7, v7, [B

    new-array v15, v6, [S

    new-array v13, v3, [S

    const/16 v17, 0x0

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v15

    move-object/from16 v12, v17

    const/4 v13, 0x0

    :goto_0
    const/high16 v15, 0x10000

    if-nez v12, :cond_4

    if-ge v13, v15, :cond_4

    new-array v12, v1, [B

    iget-object v15, v0, Lll/l;->a:Ljava/security/SecureRandom;

    invoke-virtual {v15, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v21, v2

    if-ge v15, v1, :cond_0

    aget-byte v2, v12, v15

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v9, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v21

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    new-array v12, v2, [I

    const/4 v2, 0x1

    aput v3, v12, v2

    const/4 v2, 0x0

    aput v3, v12, v2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v1, :cond_3

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v3, :cond_2

    move-object/from16 v22, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_1

    move/from16 v23, v6

    iget-object v6, v8, Lll/i;->k:[[[S

    aget-object v6, v6, v15

    aget-object v6, v6, v12

    aget-short v6, v6, v7

    move-object/from16 v24, v5

    aget-short v5, v9, v12

    invoke-static {v6, v5}, Lll/b;->x(SS)S

    move-result v5

    aget-object v6, v2, v15

    move-object/from16 v25, v14

    aget-short v14, v6, v7

    invoke-static {v14, v5}, Lll/b;->a(SS)S

    move-result v5

    aput-short v5, v6, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v23

    move-object/from16 v5, v24

    move-object/from16 v14, v25

    goto :goto_4

    :cond_1
    move-object/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v25, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v22

    goto :goto_3

    :cond_2
    move-object/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v25, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v25, v14

    iget-object v5, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v5, v2}, Lll/a;->e([[S)[[S

    move-result-object v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v21

    move-object/from16 v5, v24

    goto/16 :goto_0

    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v25, v14

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    iget-object v5, v0, Lll/l;->c:Lll/a;

    iget-object v6, v8, Lll/i;->j:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v9}, Lll/a;->k([[S[S)S

    move-result v5

    aput-short v5, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_9

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_8

    iget-object v6, v0, Lll/l;->c:Lll/a;

    iget-object v7, v8, Lll/i;->l:[[[S

    aget-object v7, v7, v5

    invoke-virtual {v6, v7, v9}, Lll/a;->k([[S[S)S

    move-result v6

    aput-short v6, v11, v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v3, :cond_6

    iget-object v7, v8, Lll/i;->m:[[[S

    aget-object v7, v7, v5

    aget-object v7, v7, v2

    aget-short v7, v7, v6

    aget-short v14, v9, v2

    invoke-static {v7, v14}, Lll/b;->x(SS)S

    move-result v7

    aget-object v14, v25, v5

    aget-short v15, v14, v6

    invoke-static {v15, v7}, Lll/b;->a(SS)S

    move-result v7

    aput-short v7, v14, v6

    add-int/lit8 v6, v6, 0x1

    const/high16 v15, 0x10000

    goto :goto_8

    :cond_6
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v4, :cond_7

    iget-object v7, v8, Lll/i;->n:[[[S

    aget-object v7, v7, v5

    aget-object v7, v7, v2

    aget-short v7, v7, v6

    aget-short v14, v9, v2

    invoke-static {v7, v14}, Lll/b;->x(SS)S

    move-result v7

    aget-object v14, v24, v5

    aget-short v15, v14, v6

    invoke-static {v15, v7}, Lll/b;->a(SS)S

    move-result v7

    aput-short v7, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/high16 v15, 0x10000

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/high16 v15, 0x10000

    goto :goto_6

    :cond_9
    move/from16 v2, v23

    new-array v5, v2, [B

    move-object/from16 v6, v18

    :goto_a
    if-nez v17, :cond_e

    const/high16 v7, 0x10000

    if-ge v13, v7, :cond_e

    const/4 v7, 0x2

    new-array v6, v7, [I

    const/4 v14, 0x1

    aput v4, v6, v14

    const/4 v15, 0x0

    aput v4, v6, v15

    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    iget-object v15, v0, Lll/l;->a:Ljava/security/SecureRandom;

    move-object/from16 v7, v22

    invoke-virtual {v15, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v15, v0, Lll/l;->e:LBi/y;

    move-object/from16 v14, v21

    invoke-static {v15, v14, v7, v5}, Lll/m;->m(LBi/y;[B[B[B)[B

    move-result-object v15

    invoke-virtual {v0, v15}, Lll/l;->f([B)[S

    move-result-object v15

    move-object/from16 v18, v5

    iget-object v5, v0, Lll/l;->c:Lll/a;

    iget-object v14, v8, Lll/i;->f:[[S

    invoke-static {v15, v3, v2}, Lorg/bouncycastle/util/a;->c0([SII)[S

    move-result-object v7

    invoke-virtual {v5, v14, v7}, Lll/a;->i([[S[S)[S

    move-result-object v5

    iget-object v7, v0, Lll/l;->c:Lll/a;

    invoke-static {v15, v3}, Lorg/bouncycastle/util/a;->V([SI)[S

    move-result-object v14

    invoke-virtual {v7, v14, v5}, Lll/a;->c([S[S)[S

    move-result-object v5

    move-object/from16 v14, v20

    const/4 v7, 0x0

    invoke-static {v5, v7, v14, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v15, v3, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lll/l;->c:Lll/a;

    invoke-static {v14, v3}, Lorg/bouncycastle/util/a;->V([SI)[S

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Lll/a;->c([S[S)[S

    move-result-object v5

    iget-object v7, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v7, v12, v5}, Lll/a;->i([[S[S)[S

    move-result-object v5

    iget-object v7, v0, Lll/l;->c:Lll/a;

    move-object/from16 v15, v25

    invoke-virtual {v7, v15, v5}, Lll/a;->i([[S[S)[S

    move-result-object v7

    move-object/from16 v20, v10

    const/4 v10, 0x0

    :goto_b
    move-object/from16 v23, v12

    if-ge v10, v4, :cond_a

    iget-object v12, v0, Lll/l;->c:Lll/a;

    move-object/from16 v25, v15

    iget-object v15, v8, Lll/i;->o:[[[S

    aget-object v15, v15, v10

    invoke-virtual {v12, v15, v5}, Lll/a;->k([[S[S)S

    move-result v12

    aput-short v12, v19, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, v23

    move-object/from16 v15, v25

    goto :goto_b

    :cond_a
    move-object/from16 v25, v15

    iget-object v10, v0, Lll/l;->c:Lll/a;

    move-object/from16 v12, v19

    invoke-virtual {v10, v7, v12}, Lll/a;->c([S[S)[S

    move-result-object v7

    iget-object v10, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v10, v7, v11}, Lll/a;->c([S[S)[S

    move-result-object v7

    iget-object v10, v0, Lll/l;->c:Lll/a;

    invoke-static {v14, v3, v2}, Lorg/bouncycastle/util/a;->c0([SII)[S

    move-result-object v15

    invoke-virtual {v10, v7, v15}, Lll/a;->c([S[S)[S

    move-result-object v7

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v3, :cond_d

    const/4 v15, 0x0

    :goto_d
    move/from16 v19, v2

    if-ge v15, v4, :cond_c

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v4, :cond_b

    move-object/from16 v26, v11

    iget-object v11, v8, Lll/i;->p:[[[S

    aget-object v11, v11, v15

    aget-object v11, v11, v10

    aget-short v11, v11, v2

    move-object/from16 v27, v12

    aget-short v12, v5, v10

    invoke-static {v11, v12}, Lll/b;->x(SS)S

    move-result v11

    aget-object v12, v6, v15

    move-object/from16 v17, v5

    aget-short v5, v12, v2

    invoke-static {v5, v11}, Lll/b;->a(SS)S

    move-result v5

    aput-short v5, v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v17

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    goto :goto_e

    :cond_b
    move-object/from16 v17, v5

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v19

    goto :goto_d

    :cond_c
    move-object/from16 v17, v5

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_d
    move/from16 v19, v2

    move-object/from16 v17, v5

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    iget-object v2, v0, Lll/l;->c:Lll/a;

    move-object/from16 v5, v24

    invoke-virtual {v2, v6, v5}, Lll/a;->a([[S[[S)[[S

    move-result-object v2

    iget-object v6, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v6, v2, v7}, Lll/a;->m([[S[S)[S

    move-result-object v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v10, v20

    move-object/from16 v12, v23

    move-object/from16 v17, v2

    move-object/from16 v20, v14

    move/from16 v2, v19

    move-object/from16 v19, v27

    goto/16 :goto_a

    :cond_e
    if-nez v17, :cond_f

    new-array v2, v4, [S

    goto :goto_f

    :cond_f
    move-object/from16 v2, v17

    :goto_f
    iget-object v5, v0, Lll/l;->c:Lll/a;

    iget-object v7, v8, Lll/i;->g:[[S

    invoke-virtual {v5, v7, v6}, Lll/a;->i([[S[S)[S

    move-result-object v5

    iget-object v7, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v7, v9, v5}, Lll/a;->c([S[S)[S

    move-result-object v5

    iget-object v7, v0, Lll/l;->c:Lll/a;

    iget-object v9, v8, Lll/i;->i:[[S

    invoke-virtual {v7, v9, v2}, Lll/a;->i([[S[S)[S

    move-result-object v7

    iget-object v9, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v9, v5, v7}, Lll/a;->c([S[S)[S

    move-result-object v5

    iget-object v7, v0, Lll/l;->c:Lll/a;

    iget-object v8, v8, Lll/i;->h:[[S

    invoke-virtual {v7, v8, v2}, Lll/a;->i([[S[S)[S

    move-result-object v7

    iget-object v8, v0, Lll/l;->c:Lll/a;

    invoke-virtual {v8, v6, v7}, Lll/a;->c([S[S)[S

    move-result-object v6

    move/from16 v7, p1

    invoke-static {v5, v7}, Lorg/bouncycastle/util/a;->V([SI)[S

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v6, v7, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    invoke-static {v2, v7, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v1, 0x10000

    if-eq v13, v1, :cond_10

    invoke-static {v5}, Lll/m;->c([S)[B

    move-result-object v1

    move-object/from16 v2, v22

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    return-object v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unable to generate signature - LES not solvable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f([B)[S
    .locals 5

    iget v0, p0, Lll/l;->b:I

    new-array v1, v0, [S

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    array-length v4, p1

    if-lt v2, v4, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    :goto_0
    return-object v1
.end method
