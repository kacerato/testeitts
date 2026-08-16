.class public Laj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj/f;


# static fields
.field public static final j:J = 0x80000000L

.field public static final k:J = 0x800000000000L

.field public static final l:I = 0x1000

.field public static final m:I = 0x40000

.field public static final n:[B


# instance fields
.field public a:LZi/d;

.field public b:LBi/f;

.field public c:I

.field public d:I

.field public e:I

.field public f:[B

.field public g:[B

.field public h:J

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    invoke-static {v0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Laj/a;->n:[B

    return-void
.end method

.method public constructor <init>(LBi/f;IILZi/d;[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laj/a;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Laj/a;->i:Z

    iput-object p4, p0, Laj/a;->a:LZi/d;

    iput-object p1, p0, Laj/a;->b:LBi/f;

    iput p2, p0, Laj/a;->c:I

    iput p3, p0, Laj/a;->e:I

    invoke-interface {p1}, LBi/f;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    iput v0, p0, Laj/a;->d:I

    invoke-virtual {p0, p1}, Laj/a;->n(LBi/f;)Z

    move-result v0

    iput-boolean v0, p0, Laj/a;->i:Z

    const/16 v0, 0x100

    if-gt p3, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Laj/a;->m(LBi/f;I)I

    move-result p1

    if-lt p1, p3, :cond_1

    invoke-interface {p4}, LZi/d;->d()I

    move-result p1

    if-lt p1, p3, :cond_0

    invoke-virtual {p0}, Laj/a;->l()[B

    move-result-object p1

    invoke-virtual {p0, p1, p6, p5}, Laj/a;->f([B[B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough entropy for security strength required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by the derivation function"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([B[BZ)I
    .locals 7

    iget-boolean v0, p0, Laj/a;->i:Z

    const/4 v1, -0x1

    iget-wide v2, p0, Laj/a;->h:J

    if-eqz v0, :cond_2

    const-wide v4, 0x80000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x200

    invoke-static {p1, v0}, Laj/g;->d([BI)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 4096"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-wide v4, 0x800000000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    return v1

    :cond_3
    const v0, 0x8000

    invoke-static {p1, v0}, Laj/g;->d([BI)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Laj/a;->g([B)V

    const/4 p2, 0x0

    :cond_4
    if-eqz p2, :cond_5

    iget p3, p0, Laj/a;->d:I

    invoke-virtual {p0, p2, p3}, Laj/a;->e([BI)[B

    move-result-object p2

    iget-object p3, p0, Laj/a;->f:[B

    iget-object v0, p0, Laj/a;->g:[B

    invoke-virtual {p0, p2, p3, v0}, Laj/a;->h([B[B[B)V

    goto :goto_1

    :cond_5
    iget p2, p0, Laj/a;->d:I

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    :goto_1
    iget-object p3, p0, Laj/a;->g:[B

    array-length p3, p3

    new-array v0, p3, [B

    iget-object v1, p0, Laj/a;->b:LBi/f;

    new-instance v2, LXi/o0;

    iget-object v3, p0, Laj/a;->f:[B

    invoke-virtual {p0, v3}, Laj/a;->k([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, LXi/o0;-><init>([B)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, LBi/f;->a(ZLBi/k;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v3, p1

    div-int/2addr v3, p3

    if-gt v2, v3, :cond_8

    array-length v3, p1

    mul-int v4, v2, p3

    sub-int/2addr v3, v4

    if-le v3, p3, :cond_6

    move v3, p3

    goto :goto_3

    :cond_6
    array-length v3, p1

    iget-object v5, p0, Laj/a;->g:[B

    array-length v5, v5

    mul-int/2addr v5, v2

    sub-int/2addr v3, v5

    :goto_3
    if-eqz v3, :cond_7

    iget-object v5, p0, Laj/a;->g:[B

    invoke-virtual {p0, v5}, Laj/a;->i([B)V

    iget-object v5, p0, Laj/a;->b:LBi/f;

    iget-object v6, p0, Laj/a;->g:[B

    invoke-interface {v5, v6, v1, v0, v1}, LBi/f;->g([BI[BI)I

    invoke-static {v0, v1, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object p3, p0, Laj/a;->f:[B

    iget-object v0, p0, Laj/a;->g:[B

    invoke-virtual {p0, p2, p3, v0}, Laj/a;->h([B[B[B)V

    iget-wide p2, p0, Laj/a;->h:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Laj/a;->h:J

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 262144"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)V
    .locals 0

    invoke-virtual {p0, p1}, Laj/a;->g([B)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Laj/a;->g:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final d([B[B[B[B)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Laj/a;->b:LBi/f;

    invoke-interface {v2}, LBi/f;->c()I

    move-result v2

    new-array v10, v2, [B

    move-object/from16 v11, p4

    array-length v3, v11

    div-int v12, v3, v2

    new-array v13, v2, [B

    iget-object v3, v0, Laj/a;->b:LBi/f;

    new-instance v4, LXi/o0;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Laj/a;->k([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, LXi/o0;-><init>([B)V

    const/4 v5, 0x1

    invoke-interface {v3, v5, v4}, LBi/f;->a(ZLBi/k;)V

    iget-object v3, v0, Laj/a;->b:LBi/f;

    const/4 v14, 0x0

    move-object/from16 v4, p3

    invoke-interface {v3, v4, v14, v10, v14}, LBi/f;->g([BI[BI)I

    move v15, v14

    :goto_0
    if-ge v15, v12, :cond_0

    mul-int v7, v15, v2

    const/4 v9, 0x0

    const/4 v5, 0x0

    move v3, v2

    move-object v4, v10

    move-object/from16 v6, p4

    move-object v8, v13

    invoke-static/range {v3 .. v9}, Lorg/bouncycastle/util/c;->a(I[BI[BI[BI)V

    iget-object v3, v0, Laj/a;->b:LBi/f;

    invoke-interface {v3, v13, v14, v10, v14}, LBi/f;->g([BI[BI)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    invoke-static {v10, v14, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final e([BI)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Laj/a;->b:LBi/f;

    invoke-interface {v2}, LBi/f;->c()I

    move-result v2

    array-length v3, v1

    const/16 v4, 0x8

    div-int/lit8 v5, p2, 0x8

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v7, v3, 0x9

    add-int/2addr v7, v2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    div-int/2addr v7, v2

    mul-int/2addr v7, v2

    new-array v7, v7, [B

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v3, v9}, Laj/a;->j([BII)V

    const/4 v10, 0x4

    invoke-virtual {v0, v7, v5, v10}, Laj/a;->j([BII)V

    invoke-static {v1, v9, v7, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, -0x80

    aput-byte v1, v7, v6

    iget v1, v0, Laj/a;->c:I

    div-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    new-array v6, v3, [B

    new-array v10, v2, [B

    new-array v11, v2, [B

    div-int/2addr v1, v4

    new-array v4, v1, [B

    sget-object v12, Laj/a;->n:[B

    invoke-static {v12, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v12, v9

    :goto_0
    mul-int v13, v12, v2

    mul-int/lit8 v14, v13, 0x8

    iget v15, v0, Laj/a;->c:I

    mul-int/lit8 v16, v2, 0x8

    add-int v15, v15, v16

    if-ge v14, v15, :cond_1

    invoke-virtual {v0, v11, v12, v9}, Laj/a;->j([BII)V

    invoke-virtual {v0, v10, v4, v11, v7}, Laj/a;->d([B[B[B[B)V

    sub-int v14, v3, v13

    if-le v14, v2, :cond_0

    move v14, v2

    :cond_0
    invoke-static {v10, v9, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v2, [B

    invoke-static {v6, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v1, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v5, [B

    iget-object v6, v0, Laj/a;->b:LBi/f;

    new-instance v7, LXi/o0;

    invoke-virtual {v0, v4}, Laj/a;->k([B)[B

    move-result-object v4

    invoke-direct {v7, v4}, LXi/o0;-><init>([B)V

    invoke-interface {v6, v8, v7}, LBi/f;->a(ZLBi/k;)V

    move v4, v9

    :goto_1
    mul-int v6, v4, v2

    if-ge v6, v5, :cond_3

    iget-object v7, v0, Laj/a;->b:LBi/f;

    invoke-interface {v7, v3, v9, v3, v9}, LBi/f;->g([BI[BI)I

    sub-int v7, v5, v6

    if-le v7, v2, :cond_2

    move v7, v2

    :cond_2
    invoke-static {v3, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final f([B[B[B)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    iget p2, p0, Laj/a;->d:I

    invoke-virtual {p0, p1, p2}, Laj/a;->e([BI)[B

    move-result-object p1

    iget-object p2, p0, Laj/a;->b:LBi/f;

    invoke-interface {p2}, LBi/f;->c()I

    move-result p2

    iget p3, p0, Laj/a;->c:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    new-array p3, p3, [B

    iput-object p3, p0, Laj/a;->f:[B

    new-array p2, p2, [B

    iput-object p2, p0, Laj/a;->g:[B

    invoke-virtual {p0, p1, p3, p2}, Laj/a;->h([B[B[B)V

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Laj/a;->h:J

    return-void
.end method

.method public final g([B)V
    .locals 2

    invoke-virtual {p0}, Laj/a;->l()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    iget v0, p0, Laj/a;->d:I

    invoke-virtual {p0, p1, v0}, Laj/a;->e([BI)[B

    move-result-object p1

    iget-object v0, p0, Laj/a;->f:[B

    iget-object v1, p0, Laj/a;->g:[B

    invoke-virtual {p0, p1, v0, v1}, Laj/a;->h([B[B[B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Laj/a;->h:J

    return-void
.end method

.method public final h([B[B[B)V
    .locals 8

    array-length v0, p1

    new-array v1, v0, [B

    iget-object v2, p0, Laj/a;->b:LBi/f;

    invoke-interface {v2}, LBi/f;->c()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Laj/a;->b:LBi/f;

    invoke-interface {v3}, LBi/f;->c()I

    move-result v3

    iget-object v4, p0, Laj/a;->b:LBi/f;

    new-instance v5, LXi/o0;

    invoke-virtual {p0, p2}, Laj/a;->k([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, LXi/o0;-><init>([B)V

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, LBi/f;->a(ZLBi/k;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    mul-int v6, v5, v3

    array-length v7, p1

    if-ge v6, v7, :cond_1

    invoke-virtual {p0, p3}, Laj/a;->i([B)V

    iget-object v7, p0, Laj/a;->b:LBi/f;

    invoke-interface {v7, p3, v4, v2, v4}, LBi/f;->g([BI[BI)I

    sub-int v7, v0, v6

    if-le v7, v3, :cond_0

    move v7, v3

    :cond_0
    invoke-static {v2, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    array-length p1, p2

    invoke-static {v1, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    array-length p2, p3

    invoke-static {v1, p1, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final i([B)V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-gt v1, v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/2addr v3, v2

    if-le v3, v4, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, 0x3

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    return-void
.end method

.method public k([B)[B
    .locals 3

    iget-boolean v0, p0, Laj/a;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Laj/a;->o([BI[BI)V

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v1, v0, v2}, Laj/a;->o([BI[BI)V

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, p1, v1, v0, v2}, Laj/a;->o([BI[BI)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final l()[B
    .locals 3

    iget-object v0, p0, Laj/a;->a:LZi/d;

    invoke-interface {v0}, LZi/d;->b()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Laj/a;->e:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Insufficient entropy provided by entropy source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(LBi/f;I)I
    .locals 1

    invoke-virtual {p0, p1}, Laj/a;->n(LBi/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_0

    const/16 p1, 0x70

    return p1

    :cond_0
    invoke-interface {p1}, LBi/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final n(LBi/f;)Z
    .locals 2

    invoke-interface {p1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, LBi/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TDEA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final o([BI[BI)V
    .locals 4

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xfe

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    add-int/lit8 v0, p4, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xfc

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p2, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf8

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, 0x4

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xe0

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p2, 0x5

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xc0

    ushr-int/lit8 v3, v3, 0x5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, 0x6

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    :goto_0
    if-gt p4, v0, :cond_0

    aget-byte p1, p3, p4

    and-int/lit16 p2, p1, 0xfe

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x3

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x4

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x5

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x6

    xor-int/2addr v1, v2

    shr-int/lit8 p1, p1, 0x7

    xor-int/2addr p1, v1

    xor-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
