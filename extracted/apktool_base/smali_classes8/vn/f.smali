.class public Lvn/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:I = 0x2

.field public static final l:I = 0xc


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I

.field public final f:[F

.field public g:[F

.field public h:F

.field public i:F

.field public final j:[B


# direct methods
.method public constructor <init>(IIII[F[FFFILjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tileX",
            "tileZ",
            "width",
            "depth",
            "boundsMin",
            "boundsMax",
            "cellSize",
            "cellHeight",
            "borderSize",
            "buffer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lvn/f;->a:I

    .line 3
    iput p2, p0, Lvn/f;->b:I

    .line 4
    iput p3, p0, Lvn/f;->d:I

    .line 5
    iput p4, p0, Lvn/f;->e:I

    .line 6
    iput-object p5, p0, Lvn/f;->f:[F

    .line 7
    iput-object p6, p0, Lvn/f;->g:[F

    .line 8
    iput p7, p0, Lvn/f;->h:F

    .line 9
    iput p8, p0, Lvn/f;->i:F

    .line 10
    iput p9, p0, Lvn/f;->c:I

    .line 11
    sget-object p1, Lvn/c;->y:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p10, p3, p4, p1}, Lvn/f;->e(Ljava/nio/ByteBuffer;IILjava/nio/ByteOrder;)[B

    move-result-object p1

    iput-object p1, p0, Lvn/f;->j:[B

    return-void
.end method

.method public constructor <init>(IILwn/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tileX",
            "tileZ",
            "heightfield"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lvn/f;->a:I

    .line 14
    iput p2, p0, Lvn/f;->b:I

    .line 15
    iget p1, p3, Lwn/h;->a:I

    iput p1, p0, Lvn/f;->d:I

    .line 16
    iget p1, p3, Lwn/h;->b:I

    iput p1, p0, Lvn/f;->e:I

    .line 17
    iget-object p1, p3, Lwn/h;->c:[F

    iput-object p1, p0, Lvn/f;->f:[F

    .line 18
    iget-object p1, p3, Lwn/h;->d:[F

    iput-object p1, p0, Lvn/f;->g:[F

    .line 19
    iget p1, p3, Lwn/h;->e:F

    iput p1, p0, Lvn/f;->h:F

    .line 20
    iget p1, p3, Lwn/h;->f:F

    iput p1, p0, Lvn/f;->i:F

    .line 21
    iget p1, p3, Lwn/h;->h:I

    iput p1, p0, Lvn/f;->c:I

    .line 22
    sget-object p1, Lvn/c;->y:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p3, p1}, Lvn/f;->d(Lwn/h;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    iput-object p1, p0, Lvn/f;->j:[B

    return-void
.end method


# virtual methods
.method public a()Lwn/h;
    .locals 2

    sget-object v0, Lvn/c;->y:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lvn/f;->b()Lwn/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lvn/f;->c()Lwn/h;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final b()Lwn/h;
    .locals 12

    new-instance v8, Lwn/h;

    iget v1, p0, Lvn/f;->d:I

    iget v2, p0, Lvn/f;->e:I

    iget-object v3, p0, Lvn/f;->f:[F

    iget-object v4, p0, Lvn/f;->g:[F

    iget v5, p0, Lvn/f;->h:F

    iget v6, p0, Lvn/f;->i:F

    iget v7, p0, Lvn/f;->c:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lwn/h;-><init>(II[F[FFFI)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lvn/f;->e:I

    if-ge v1, v4, :cond_3

    move v4, v0

    :goto_1
    iget v5, p0, Lvn/f;->d:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lvn/f;->j:[B

    invoke-static {v5, v2}, Lvn/a;->e([BI)I

    move-result v5

    add-int/lit8 v2, v2, 0x2

    const/4 v6, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v5, :cond_1

    new-instance v9, Lwn/K;

    invoke-direct {v9}, Lwn/K;-><init>()V

    iget-object v10, p0, Lvn/f;->j:[B

    invoke-static {v10, v2}, Lvn/a;->b([BI)I

    move-result v10

    iput v10, v9, Lwn/K;->a:I

    add-int/lit8 v10, v2, 0x4

    iget-object v11, p0, Lvn/f;->j:[B

    invoke-static {v11, v10}, Lvn/a;->b([BI)I

    move-result v10

    iput v10, v9, Lwn/K;->b:I

    add-int/lit8 v10, v2, 0x8

    iget-object v11, p0, Lvn/f;->j:[B

    invoke-static {v11, v10}, Lvn/a;->b([BI)I

    move-result v10

    iput v10, v9, Lwn/K;->c:I

    add-int/lit8 v2, v2, 0xc

    if-nez v6, :cond_0

    iget-object v6, v8, Lwn/h;->g:[Lwn/K;

    add-int v10, v3, v4

    aput-object v9, v6, v10

    goto :goto_3

    :cond_0
    iput-object v9, v6, Lwn/K;->d:Lwn/K;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object v6, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v5

    goto :goto_0

    :cond_3
    return-object v8
.end method

.method public final c()Lwn/h;
    .locals 12

    new-instance v8, Lwn/h;

    iget v1, p0, Lvn/f;->d:I

    iget v2, p0, Lvn/f;->e:I

    iget-object v3, p0, Lvn/f;->f:[F

    iget-object v4, p0, Lvn/f;->g:[F

    iget v5, p0, Lvn/f;->h:F

    iget v6, p0, Lvn/f;->i:F

    iget v7, p0, Lvn/f;->c:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lwn/h;-><init>(II[F[FFFI)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lvn/f;->e:I

    if-ge v1, v4, :cond_3

    move v4, v0

    :goto_1
    iget v5, p0, Lvn/f;->d:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lvn/f;->j:[B

    invoke-static {v5, v2}, Lvn/a;->f([BI)I

    move-result v5

    add-int/lit8 v2, v2, 0x2

    const/4 v6, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v5, :cond_1

    new-instance v9, Lwn/K;

    invoke-direct {v9}, Lwn/K;-><init>()V

    iget-object v10, p0, Lvn/f;->j:[B

    invoke-static {v10, v2}, Lvn/a;->c([BI)I

    move-result v10

    iput v10, v9, Lwn/K;->a:I

    add-int/lit8 v10, v2, 0x4

    iget-object v11, p0, Lvn/f;->j:[B

    invoke-static {v11, v10}, Lvn/a;->c([BI)I

    move-result v10

    iput v10, v9, Lwn/K;->b:I

    add-int/lit8 v10, v2, 0x8

    iget-object v11, p0, Lvn/f;->j:[B

    invoke-static {v11, v10}, Lvn/a;->c([BI)I

    move-result v10

    iput v10, v9, Lwn/K;->c:I

    add-int/lit8 v2, v2, 0xc

    if-nez v6, :cond_0

    iget-object v6, v8, Lwn/h;->g:[Lwn/K;

    add-int v10, v3, v4

    aput-object v9, v6, v10

    goto :goto_3

    :cond_0
    iput-object v9, v6, Lwn/K;->d:Lwn/K;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object v6, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v5

    goto :goto_0

    :cond_3
    return-object v8
.end method

.method public final d(Lwn/h;Ljava/nio/ByteOrder;)[B
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "heightfield",
            "order"
        }
    .end annotation

    iget v0, p1, Lwn/h;->a:I

    iget v1, p1, Lwn/h;->b:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p1, Lwn/h;->b:I

    if-ge v3, v6, :cond_2

    move v6, v2

    :goto_1
    iget v7, p1, Lwn/h;->a:I

    if-ge v6, v7, :cond_1

    iget-object v7, p1, Lwn/h;->g:[Lwn/K;

    add-int v8, v5, v6

    aget-object v7, v7, v8

    :goto_2
    if-eqz v7, :cond_0

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    add-int/lit8 v4, v4, 0x1

    iget-object v7, v7, Lwn/K;->d:Lwn/K;

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v7

    goto :goto_0

    :cond_2
    mul-int/lit8 v4, v4, 0xc

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    new-array v0, v4, [B

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_3
    iget v6, p1, Lwn/h;->b:I

    if-ge v3, v6, :cond_5

    move v6, v2

    :goto_4
    iget v7, p1, Lwn/h;->a:I

    if-ge v6, v7, :cond_4

    add-int v7, v5, v6

    aget v8, v1, v7

    invoke-static {v8, v0, v4, p2}, Lvn/a;->h(I[BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v8, p1, Lwn/h;->g:[Lwn/K;

    aget-object v7, v8, v7

    :goto_5
    if-eqz v7, :cond_3

    iget v8, v7, Lwn/K;->a:I

    invoke-static {v8, v0, v4, p2}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    move-result v4

    iget v8, v7, Lwn/K;->b:I

    invoke-static {v8, v0, v4, p2}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    move-result v4

    iget v8, v7, Lwn/K;->c:I

    invoke-static {v8, v0, v4, p2}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v7, v7, Lwn/K;->d:Lwn/K;

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v7

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public final e(Ljava/nio/ByteBuffer;IILjava/nio/ByteOrder;)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "width",
            "height",
            "order"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v1, p4, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_0
    mul-int/2addr p2, p3

    const/4 p3, 0x0

    move v1, p3

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3, v0, v2, p4}, Lvn/a;->h(I[BILjava/nio/ByteOrder;)I

    add-int/lit8 v2, v2, 0x2

    move v4, p3

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5, v0, v2, p4}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6, v0, v5, p4}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    add-int/lit8 v5, v2, 0x8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6, v0, v5, p4}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method
