.class public LUi/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUi/d;


# instance fields
.field public a:[B

.field public b:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 8

    iget-object v0, p0, LUi/i;->b:[[[J

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v2, v0, v4

    aput v3, v0, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, LUi/i;->b:[[[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, LUi/i;->a:[B

    invoke-static {v0, p1}, LUi/e;->a([B[B)B

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, LUi/i;->a:[B

    invoke-static {p1, v0}, LUi/e;->l([B[B)V

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object p1, p0, LUi/i;->b:[[[J

    aget-object v0, p1, v1

    if-nez v1, :cond_2

    iget-object p1, p0, LUi/i;->a:[B

    aget-object v5, v0, v4

    invoke-static {p1, v5}, LUi/e;->j([B[J)V

    aget-object p1, v0, v4

    invoke-static {p1, p1}, LUi/e;->B([J[J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v1, -0x1

    aget-object p1, p1, v5

    aget-object p1, p1, v4

    aget-object v5, v0, v4

    invoke-static {p1, v5}, LUi/e;->F([J[J)V

    :goto_2
    move p1, v3

    :goto_3
    if-ge p1, v2, :cond_3

    shr-int/lit8 v5, p1, 0x1

    aget-object v5, v0, v5

    aget-object v6, v0, p1

    invoke-static {v5, v6}, LUi/e;->o([J[J)V

    aget-object v5, v0, p1

    aget-object v6, v0, v4

    add-int/lit8 v7, p1, 0x1

    aget-object v7, v0, v7

    invoke-static {v5, v6, v7}, LUi/e;->U([J[J[J)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b([B)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LUi/i;->b:[[[J

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const/16 v6, 0xe

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v4, v6

    const/16 v7, 0xf

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v2, v7

    aget-wide v8, v6, v3

    aget-wide v10, v7, v3

    xor-long/2addr v8, v10

    aget-wide v10, v6, v5

    aget-wide v6, v7, v5

    xor-long/2addr v6, v10

    const/16 v10, 0xc

    :goto_0
    if-ltz v10, :cond_0

    aget-byte v11, v1, v10

    and-int/lit16 v11, v11, 0xff

    aget-object v11, v4, v11

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    aget-object v12, v2, v12

    const/16 v13, 0x30

    shl-long v14, v6, v13

    aget-wide v16, v11, v5

    aget-wide v18, v12, v5

    xor-long v16, v16, v18

    const/16 v18, 0x10

    ushr-long v6, v6, v18

    shl-long v19, v8, v13

    or-long v6, v6, v19

    xor-long v6, v16, v6

    aget-wide v16, v11, v3

    aget-wide v11, v12, v3

    xor-long v11, v16, v11

    ushr-long v8, v8, v18

    xor-long/2addr v8, v11

    xor-long/2addr v8, v14

    ushr-long v11, v14, v5

    xor-long/2addr v8, v11

    const/4 v11, 0x2

    ushr-long v11, v14, v11

    xor-long/2addr v8, v11

    const/4 v11, 0x7

    ushr-long v11, v14, v11

    xor-long/2addr v8, v11

    add-int/lit8 v10, v10, -0x2

    goto :goto_0

    :cond_0
    invoke-static {v8, v9, v1, v3}, Lorg/bouncycastle/util/p;->D(J[BI)V

    const/16 v2, 0x8

    invoke-static {v6, v7, v1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    return-void
.end method
