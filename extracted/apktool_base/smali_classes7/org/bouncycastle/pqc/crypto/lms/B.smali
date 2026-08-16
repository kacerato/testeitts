.class public Lorg/bouncycastle/pqc/crypto/lms/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:S = -0x7f80s

.field public static final b:I = 0x14

.field public static final c:I = 0x17

.field public static final d:I = 0x16

.field public static final e:I = -0x3

.field public static final f:I = 0x20

.field public static final g:S = -0x7e7fs


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BILorg/bouncycastle/pqc/crypto/lms/j;)I
    .locals 5

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    mul-int/lit8 v3, p1, 0x8

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()I

    move-result v4

    div-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    add-int/2addr v2, v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()I

    move-result v3

    invoke-static {p0, v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/B;->b([BII)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/j;->c()I

    move-result p0

    shl-int p0, v2, p0

    return p0
.end method

.method public static b([BII)I
    .locals 3

    mul-int v0, p1, p2

    const/16 v1, 0x8

    div-int/2addr v0, v1

    div-int/2addr v1, p2

    not-int p1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p1, v1

    mul-int/2addr p1, p2

    shl-int p2, v2, p2

    sub-int/2addr p2, v2

    aget-byte p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/2addr p0, p2

    return p0
.end method

.method public static c(Lorg/bouncycastle/pqc/crypto/lms/k;[B[B)Lorg/bouncycastle/pqc/crypto/lms/m;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->d()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->e()I

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()I

    move-result v4

    mul-int v5, v3, v2

    new-array v5, v5, [B

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->a()Lorg/bouncycastle/pqc/crypto/lms/D;

    move-result-object v7

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/B;->a([BILorg/bouncycastle/pqc/crypto/lms/j;)I

    move-result v8

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    add-int/lit8 v9, v2, 0x1

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->b()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->e()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v8

    add-int/lit8 v9, v2, 0x17

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lorg/bouncycastle/pqc/crypto/lms/a;->k(II)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v8

    invoke-virtual {v7, v10}, Lorg/bouncycastle/pqc/crypto/lms/D;->h(I)V

    move v11, v10

    :goto_0
    if-ge v11, v3, :cond_2

    int-to-short v12, v11

    const/16 v13, 0x14

    invoke-static {v12, v8, v13}, Lorg/bouncycastle/util/p;->P(S[BI)V

    add-int/lit8 v12, v3, -0x1

    if-ge v11, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    move v12, v10

    :goto_1
    const/16 v13, 0x17

    invoke-virtual {v7, v8, v12, v13}, Lorg/bouncycastle/pqc/crypto/lms/D;->b([BZI)V

    invoke-static {v0, v11, v4}, Lorg/bouncycastle/pqc/crypto/lms/B;->b([BII)I

    move-result v12

    move v14, v10

    :goto_2
    if-ge v14, v12, :cond_1

    const/16 v15, 0x16

    int-to-byte v13, v14

    aput-byte v13, v8, v15

    invoke-interface {v6, v8, v10, v9}, LBi/y;->update([BII)V

    const/16 v13, 0x17

    invoke-interface {v6, v8, v13}, LBi/y;->c([BI)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    mul-int v12, v2, v11

    invoke-static {v8, v13, v5, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/m;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/lms/m;-><init>(Lorg/bouncycastle/pqc/crypto/lms/j;[B[B)V

    return-object v0
.end method

.method public static d(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/k;[[B[BZ)Lorg/bouncycastle/pqc/crypto/lms/m;
    .locals 2

    const/16 v0, 0x22

    new-array v0, v0, [B

    const/4 v1, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/pqc/crypto/lms/k;->f(Lorg/bouncycastle/pqc/crypto/lms/A;[[B)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p0

    array-length p2, p3

    invoke-static {p3, v1, p2, p0}, Lorg/bouncycastle/pqc/crypto/lms/C;->a([BIILBi/y;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->a()[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->k()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/k;->d()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result p0

    new-array p2, p0, [B

    invoke-static {p3, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/B;->c(Lorg/bouncycastle/pqc/crypto/lms/k;[B[B)Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lorg/bouncycastle/pqc/crypto/lms/l;Lorg/bouncycastle/pqc/crypto/lms/m;[BZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pqc/crypto/lms/LMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/m;->c()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object p3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->f()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/lms/B;->f(Lorg/bouncycastle/pqc/crypto/lms/l;Lorg/bouncycastle/pqc/crypto/lms/m;[B)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->e()[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/LMSException;

    const-string p1, "public key and signature ots types do not match"

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lorg/bouncycastle/pqc/crypto/lms/l;Lorg/bouncycastle/pqc/crypto/lms/m;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/l;->a(Lorg/bouncycastle/pqc/crypto/lms/m;)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/B;->g(Lorg/bouncycastle/pqc/crypto/lms/o;)[B

    move-result-object p0

    return-object p0
.end method

.method public static g(Lorg/bouncycastle/pqc/crypto/lms/o;)[B
    .locals 15

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->j()Lorg/bouncycastle/pqc/crypto/lms/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/l;->f()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->m()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/bouncycastle/pqc/crypto/lms/x;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/x;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/x;->b()Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object v2

    goto :goto_0

    :cond_0
    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/m;

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()I

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->e()I

    move-result v5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->k()[B

    move-result-object p0

    invoke-static {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/lms/B;->a([BILorg/bouncycastle/pqc/crypto/lms/j;)I

    move-result v6

    ushr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v3

    add-int/lit8 v7, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, p0, v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/l;->c()[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/l;->g()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 v8, -0x7f80

    invoke-static {v8, v7}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    add-int/lit8 v6, v3, 0x17

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Lorg/bouncycastle/pqc/crypto/lms/a;->k(II)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    const/4 v9, 0x1

    shl-int v10, v9, v4

    sub-int/2addr v10, v9

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/m;->d()[B

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v1

    move v9, v8

    :goto_1
    if-ge v9, v5, :cond_2

    int-to-short v11, v9

    const/16 v12, 0x14

    invoke-static {v11, v0, v12}, Lorg/bouncycastle/util/p;->P(S[BI)V

    mul-int v11, v9, v3

    const/16 v12, 0x17

    invoke-static {v2, v11, v0, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v9, v4}, Lorg/bouncycastle/pqc/crypto/lms/B;->b([BII)I

    move-result v11

    :goto_2
    if-ge v11, v10, :cond_1

    const/16 v13, 0x16

    int-to-byte v14, v11

    aput-byte v14, v0, v13

    invoke-interface {v1, v0, v8, v6}, LBi/y;->update([BII)V

    invoke-interface {v1, v0, v12}, LBi/y;->c([BI)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v7, v0, v12, v3}, LBi/y;->update([BII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-array p0, v3, [B

    invoke-interface {v7, p0, v8}, LBi/y;->c([BI)I

    return-object p0
.end method

.method public static h(Lorg/bouncycastle/pqc/crypto/lms/k;)Lorg/bouncycastle/pqc/crypto/lms/l;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->d()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->b()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->e()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->c()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/B;->i(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/l;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->d()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->b()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->e()I

    move-result p0

    invoke-direct {v1, v2, v3, p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/l;-><init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V

    return-object v1
.end method

.method public static i(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)[B
    .locals 10

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    const/16 v2, -0x7f80

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->l(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/a;->k(II)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v1

    array-length v4, v1

    invoke-interface {v0, v1, v2, v4}, LBi/y;->update([BII)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v4

    invoke-interface {v1}, LBi/y;->f()I

    move-result v5

    const/16 v6, 0x17

    add-int/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/lms/a;->k(II)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/lms/D;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v7

    invoke-direct {v5, p1, p3, v7}, Lorg/bouncycastle/pqc/crypto/lms/D;-><init>([B[BLBi/y;)V

    invoke-virtual {v5, p2}, Lorg/bouncycastle/pqc/crypto/lms/D;->i(I)V

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/lms/D;->h(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->e()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result p2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()I

    move-result p0

    const/4 p3, 0x1

    shl-int p0, p3, p0

    sub-int/2addr p0, p3

    move v7, v2

    :goto_0
    if-ge v7, p1, :cond_2

    add-int/lit8 v8, p1, -0x1

    if-ge v7, v8, :cond_0

    move v8, p3

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    invoke-virtual {v5, v4, v8, v6}, Lorg/bouncycastle/pqc/crypto/lms/D;->b([BZI)V

    int-to-short v8, v7

    const/16 v9, 0x14

    invoke-static {v8, v4, v9}, Lorg/bouncycastle/util/p;->P(S[BI)V

    move v8, v2

    :goto_2
    if-ge v8, p0, :cond_1

    int-to-byte v9, v8

    aput-byte v9, v4, v3

    array-length v9, v4

    invoke-interface {v1, v4, v2, v9}, LBi/y;->update([BII)V

    invoke-interface {v1, v4, v6}, LBi/y;->c([BI)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v4, v6, p2}, LBi/y;->update([BII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, LBi/y;->f()I

    move-result p0

    new-array p0, p0, [B

    invoke-interface {v0, p0, v2}, LBi/y;->c([BI)I

    return-object p0
.end method
