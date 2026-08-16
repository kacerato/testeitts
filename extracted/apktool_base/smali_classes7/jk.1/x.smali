.class public Ljk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;

.field public static final c:Ljava/math/BigInteger;

.field public static final d:B = 0x4t

.field public static final e:[Ljk/E;

.field public static final f:[[B

.field public static final g:[Ljk/E;

.field public static final h:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 40

    sget-object v0, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljk/x;->a:Ljava/math/BigInteger;

    sget-object v2, Ljk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Ljk/x;->b:Ljava/math/BigInteger;

    sget-object v2, Ljk/d;->d:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Ljk/x;->c:Ljava/math/BigInteger;

    new-instance v5, Ljk/E;

    sget-object v15, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-direct {v5, v0, v15}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v7, Ljk/E;

    invoke-direct {v7, v3, v1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v9, Ljk/E;

    invoke-direct {v9, v1, v1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v11, Ljk/E;

    invoke-direct {v11, v0, v1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v13, Ljk/E;

    invoke-direct {v13, v1, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v14, Ljk/E;

    invoke-direct {v14, v0, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v12, Ljk/E;

    invoke-direct {v12, v2, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Ljk/E;

    invoke-direct {v10, v1, v15}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v10

    move-object/from16 v10, v16

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v22

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    filled-new-array/range {v4 .. v19}, [Ljk/E;

    move-result-object v4

    sput-object v4, Ljk/x;->e:[Ljk/E;

    const/4 v4, 0x1

    new-array v6, v4, [B

    const/4 v13, 0x0

    aput-byte v4, v6, v13

    const/4 v14, 0x3

    new-array v8, v14, [B

    fill-array-data v8, :array_0

    new-array v10, v14, [B

    fill-array-data v10, :array_1

    const/4 v11, 0x0

    const/4 v15, 0x4

    new-array v12, v15, [B

    fill-array-data v12, :array_2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    filled-new-array/range {v5 .. v12}, [[B

    move-result-object v5

    sput-object v5, Ljk/x;->f:[[B

    new-instance v5, Ljk/E;

    move-object/from16 v6, v23

    invoke-direct {v5, v0, v6}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v7, Ljk/E;

    invoke-direct {v7, v3, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljk/E;

    invoke-direct {v3, v1, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v8, Ljk/E;

    invoke-direct {v8, v0, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v9, Ljk/E;

    invoke-direct {v9, v1, v1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Ljk/E;

    invoke-direct {v10, v0, v1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Ljk/E;

    invoke-direct {v0, v2, v1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljk/E;

    invoke-direct {v2, v1, v6}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    move-object/from16 v29, v3

    move-object/from16 v31, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v37, v0

    move-object/from16 v39, v2

    filled-new-array/range {v24 .. v39}, [Ljk/E;

    move-result-object v0

    sput-object v0, Ljk/x;->g:[Ljk/E;

    new-array v6, v4, [B

    aput-byte v4, v6, v13

    new-array v8, v14, [B

    fill-array-data v8, :array_3

    new-array v10, v14, [B

    fill-array-data v10, :array_4

    new-array v12, v15, [B

    fill-array-data v12, :array_5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    filled-new-array/range {v5 .. v12}, [[B

    move-result-object v0

    sput-object v0, Ljk/x;->h:[[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Ljk/v;
    .locals 2

    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p5

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    new-instance p0, Ljk/v;

    invoke-direct {p0, p1, p5}, Ljk/v;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static b(BIZ)[Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object p2, Ljk/d;->c:Ljava/math/BigInteger;

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object p2, Ljk/d;->a:Ljava/math/BigInteger;

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    :goto_1
    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_4

    if-gez p0, :cond_3

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_2

    :cond_4
    filled-new-array {p2, v1}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static d(Ljk/e$b;)B
    .locals 1

    invoke-virtual {p0}, Ljk/e$b;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljk/e;->p()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljk/f;)B
    .locals 0

    invoke-virtual {p0}, Ljk/f;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static f(Ljk/i$b;B)[Ljk/i$b;
    .locals 6

    invoke-virtual {p0}, Ljk/i;->A()Ljk/i;

    move-result-object v0

    check-cast v0, Ljk/i$b;

    if-nez p1, :cond_0

    sget-object p1, Ljk/x;->f:[[B

    goto :goto_0

    :cond_0
    sget-object p1, Ljk/x;->h:[[B

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljk/i$b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    array-length v2, p1

    const/4 v3, 0x3

    :goto_1
    if-ge v3, v2, :cond_1

    ushr-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v3

    invoke-static {p0, v0, v5}, Ljk/x;->k(Ljk/i$b;Ljk/i$b;[B)Ljk/i$b;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljk/e;->E([Ljk/i;)V

    return-object v1
.end method

.method public static g(Ljava/math/BigInteger;)I
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Ljk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Ljk/d;->e:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 2

    invoke-static {p1}, Ljk/x;->c(I)B

    move-result v0

    invoke-static {p2}, Ljk/x;->g(Ljava/math/BigInteger;)I

    move-result p2

    add-int/lit8 p0, p0, 0x3

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Ljk/x;->b(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, p1

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_0
    sget-object v0, Ljk/d;->b:Ljava/math/BigInteger;

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljk/e$b;)[Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Ljk/e$b;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result v0

    invoke-virtual {p0}, Ljk/e;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljk/x;->h(IILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(BI)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-ne p0, v1, :cond_0

    const-wide/16 p0, 0x6

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 p0, 0xa

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljk/x;->b(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    sget-object v2, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljk/i$b;Ljk/i$b;[B)Ljk/i$b;
    .locals 5

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    check-cast v0, Ljk/i$b;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p2, v1

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljk/i$b;->P(I)Ljk/i$b;

    move-result-object v0

    if-lez v4, :cond_0

    move-object v3, p0

    goto :goto_1

    :cond_0
    move-object v3, p1

    :goto_1
    invoke-virtual {v0, v3}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object v0

    check-cast v0, Ljk/i$b;

    move v3, v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    invoke-virtual {v0, v3}, Ljk/i$b;->P(I)Ljk/i$b;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static l(Ljk/i$b;Ljava/math/BigInteger;)Ljk/i$b;
    .locals 4

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    check-cast v0, Ljk/e$b;

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Ljk/x;->c(I)B

    move-result v2

    int-to-byte v1, v1

    const/16 v3, 0xa

    invoke-static {v0, p1, v1, v2, v3}, Ljk/x;->p(Ljk/e$b;Ljava/math/BigInteger;BBB)Ljk/E;

    move-result-object p1

    invoke-static {p0, p1}, Ljk/x;->m(Ljk/i$b;Ljk/E;)Ljk/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljk/i$b;Ljk/E;)Ljk/i$b;
    .locals 2

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    check-cast v0, Ljk/e$b;

    invoke-virtual {p0}, Ljk/i;->A()Ljk/i;

    move-result-object v1

    check-cast v1, Ljk/i$b;

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v0

    invoke-static {v0}, Ljk/x;->e(Ljk/f;)B

    move-result v0

    invoke-static {v0, p1}, Ljk/x;->s(BLjk/E;)[B

    move-result-object p1

    invoke-static {p0, v1, p1}, Ljk/x;->k(Ljk/i$b;Ljk/i$b;[B)Ljk/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static n(BLjk/E;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p1, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    iget-object p0, p1, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, p1, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    iget-object p1, p1, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    iget-object p0, p1, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, p1, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(BLjk/v;Ljk/v;)Ljk/v;
    .locals 2

    invoke-virtual {p1, p1}, Ljk/v;->o(Ljk/v;)Ljk/v;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljk/v;->o(Ljk/v;)Ljk/v;

    move-result-object p1

    invoke-virtual {p2, p2}, Ljk/v;->o(Ljk/v;)Ljk/v;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljk/v;->r(I)Ljk/v;

    move-result-object p2

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, p1}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p2}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, p1}, Ljk/v;->t(Ljk/v;)Ljk/v;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Ljk/e$b;Ljava/math/BigInteger;BBB)Ljk/E;
    .locals 14

    move/from16 v0, p3

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result v7

    invoke-virtual {p0}, Ljk/e$b;->M()[Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    aget-object v1, v8, v9

    aget-object v2, v8, v10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_0
    aget-object v1, v8, v9

    aget-object v2, v8, v10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljk/e$b;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_2
    move-object v12, v1

    goto :goto_3

    :cond_1
    invoke-static {v0, v7, v10}, Ljk/x;->b(BIZ)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v1, v1, v10

    goto :goto_2

    :goto_3
    aget-object v2, v8, v9

    move-object v1, p1

    move-object v3, v12

    move/from16 v4, p2

    move v5, v7

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Ljk/x;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Ljk/v;

    move-result-object v13

    aget-object v2, v8, v10

    invoke-static/range {v1 .. v6}, Ljk/x;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Ljk/v;

    move-result-object v1

    invoke-static {v13, v1, v0}, Ljk/x;->q(Ljk/v;Ljk/v;B)Ljk/E;

    move-result-object v0

    iget-object v1, v0, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, v8, v10

    iget-object v3, v0, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, v8, v10

    iget-object v3, v0, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, v8, v9

    iget-object v0, v0, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Ljk/E;

    invoke-direct {v2, v1, v0}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public static q(Ljk/v;Ljk/v;B)Ljk/E;
    .locals 8

    invoke-virtual {p0}, Ljk/v;->k()I

    move-result v0

    invoke-virtual {p1}, Ljk/v;->k()I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljk/v;->q()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljk/v;->q()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljk/v;->s(Ljava/math/BigInteger;)Ljk/v;

    move-result-object p0

    invoke-virtual {p1, v3}, Ljk/v;->s(Ljava/math/BigInteger;)Ljk/v;

    move-result-object p1

    invoke-virtual {p0, p0}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object v4

    if-ne p2, v1, :cond_2

    invoke-virtual {v4, p1}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Ljk/v;->t(Ljk/v;)Ljk/v;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, p1}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object p1

    if-ne p2, v1, :cond_3

    invoke-virtual {p0, v5}, Ljk/v;->t(Ljk/v;)Ljk/v;

    move-result-object v5

    invoke-virtual {p0, p1}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Ljk/v;->b(Ljk/v;)Ljk/v;

    move-result-object v5

    invoke-virtual {p0, p1}, Ljk/v;->t(Ljk/v;)Ljk/v;

    move-result-object p0

    :goto_2
    sget-object p1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljk/v;->e(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x0

    if-ltz v6, :cond_4

    sget-object v6, Ljk/x;->a:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljk/v;->e(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_6

    goto :goto_3

    :cond_4
    sget-object v1, Ljk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljk/v;->e(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_5

    :goto_3
    move v1, v7

    move v7, p2

    goto :goto_4

    :cond_5
    move v1, v7

    :cond_6
    :goto_4
    sget-object v6, Ljk/x;->a:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljk/v;->e(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_8

    invoke-virtual {v5, p1}, Ljk/v;->e(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_9

    :goto_5
    neg-int p0, p2

    int-to-byte v7, p0

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    sget-object p1, Ljk/x;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljk/v;->e(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_7

    goto :goto_5

    :cond_9
    :goto_6
    int-to-long p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long p1, v7

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Ljk/E;

    invoke-direct {p2, p0, p1}, Ljk/E;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Ljk/i$b;)Ljk/i$b;
    .locals 0

    invoke-virtual {p0}, Ljk/i$b;->O()Ljk/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static s(BLjk/E;)[B
    .locals 9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Ljk/x;->n(BLjk/E;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    :goto_1
    new-array v1, v1, [B

    iget-object v2, p1, Ljk/E;->a:Ljava/math/BigInteger;

    iget-object p1, p1, Ljk/E;->b:Ljava/math/BigInteger;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2
    sget-object v6, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v4, v0

    new-array p0, v4, [B

    invoke-static {v1, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v4, Ljk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Ljk/d;->e:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    if-ne v4, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_4

    :cond_5
    sget-object v4, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_4
    move v4, v5

    goto :goto_5

    :cond_6
    aput-byte v3, v1, v5

    :goto_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ne p0, v0, :cond_7

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    goto :goto_2
.end method

.method public static t(BLjk/E;II[Ljk/E;)[B
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p0 .. p1}, Ljk/x;->n(BLjk/E;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x4

    add-int v3, v3, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p2, 0x22

    :goto_1
    new-array v3, v3, [B

    shl-int v4, v2, p2

    sub-int/2addr v4, v2

    rsub-int/lit8 v5, p2, 0x20

    iget-object v6, v1, Ljk/E;->a:Ljava/math/BigInteger;

    iget-object v1, v1, Ljk/E;->b:Ljava/math/BigInteger;

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/16 v10, 0x3e

    if-gt v9, v10, :cond_7

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, v10, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {v6}, Lorg/bouncycastle/util/b;->m(Ljava/math/BigInteger;)J

    move-result-wide v6

    invoke-static {v1}, Lorg/bouncycastle/util/b;->m(Ljava/math/BigInteger;)J

    move-result-wide v9

    :goto_3
    or-long v11, v6, v9

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-eqz v1, :cond_6

    const-wide/16 v11, 0x1

    and-long/2addr v11, v6

    cmp-long v1, v11, v13

    if-eqz v1, :cond_4

    long-to-int v1, v6

    long-to-int v11, v9

    mul-int v11, v11, p3

    add-int/2addr v1, v11

    and-int v11, v1, v4

    shl-int/2addr v1, v5

    shr-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v8

    aget-object v1, p4, v11

    iget-object v1, v1, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v12, v1

    sub-long/2addr v6, v12

    aget-object v1, p4, v11

    iget-object v1, v1, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v11, v1

    sub-long/2addr v9, v11

    :cond_4
    add-int/lit8 v8, v8, 0x1

    shr-long/2addr v6, v2

    if-ne v0, v2, :cond_5

    add-long/2addr v9, v6

    goto :goto_4

    :cond_5
    sub-long/2addr v9, v6

    :goto_4
    neg-long v6, v6

    move-wide v15, v6

    move-wide v6, v9

    move-wide v9, v15

    goto :goto_3

    :cond_6
    return-object v3

    :cond_7
    :goto_5
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    mul-int v10, v10, p3

    add-int/2addr v9, v10

    and-int v10, v9, v4

    shl-int/2addr v9, v5

    shr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    aget-object v9, p4, v10

    iget-object v9, v9, Ljk/E;->a:Ljava/math/BigInteger;

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v9, p4, v10

    iget-object v9, v9, Ljk/E;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ne v0, v2, :cond_9

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_6

    :cond_9
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_6
    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    goto/16 :goto_2
.end method
