.class public Lon/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lon/e;[Lon/m;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "links",
            "nodeOffset"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    array-length v7, v1

    if-lez v7, :cond_3

    array-length v7, v1

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v1, v8

    iget v10, v9, Lon/m;->b:I

    sub-int v10, v10, p3

    invoke-virtual {v0, v10}, Lon/e;->c(I)Ljn/q;

    move-result-object v10

    iget v11, v9, Lon/m;->b:I

    sub-int v11, v11, p3

    invoke-virtual {v0, v11}, Lon/e;->b(I)Ljn/G;

    move-result-object v11

    iget v12, v9, Lon/m;->c:I

    sub-int v12, v12, p3

    invoke-virtual {v0, v12}, Lon/e;->c(I)Ljn/q;

    move-result-object v12

    iget v13, v9, Lon/m;->c:I

    sub-int v13, v13, p3

    invoke-virtual {v0, v13}, Lon/e;->b(I)Ljn/G;

    move-result-object v13

    if-eqz v11, :cond_2

    if-eqz v13, :cond_2

    iget-object v11, v10, Ljn/q;->c:[Ljn/G;

    array-length v13, v11

    add-int/2addr v13, v6

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljn/G;

    iput-object v11, v10, Ljn/q;->c:[Ljn/G;

    iget-object v13, v10, Ljn/q;->a:Ljn/r;

    iget v13, v13, Ljn/r;->g:I

    new-instance v14, Ljn/G;

    invoke-direct {v14, v13, v4}, Ljn/G;-><init>(II)V

    aput-object v14, v11, v13

    iget-object v11, v10, Ljn/q;->c:[Ljn/G;

    aget-object v11, v11, v13

    iget-object v14, v11, Ljn/G;->b:[I

    iget-object v15, v10, Ljn/q;->a:Ljn/r;

    iget v15, v15, Ljn/r;->h:I

    aput v15, v14, v5

    add-int/2addr v15, v6

    aput v15, v14, v6

    invoke-virtual {v11, v6}, Ljn/G;->d(I)V

    iget-object v11, v10, Ljn/q;->b:[F

    array-length v14, v11

    add-int/2addr v14, v3

    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v11

    iput-object v11, v10, Ljn/q;->b:[F

    iget-object v11, v10, Ljn/q;->a:Ljn/r;

    iget v14, v11, Ljn/r;->g:I

    add-int/2addr v14, v6

    iput v14, v11, Ljn/r;->g:I

    iget v14, v11, Ljn/r;->h:I

    add-int/2addr v14, v4

    iput v14, v11, Ljn/r;->h:I

    new-instance v11, Ljn/F;

    invoke-direct {v11}, Ljn/F;-><init>()V

    iput v13, v11, Ljn/F;->c:I

    iget-object v13, v9, Lon/m;->d:Lmn/d;

    iget v14, v13, Lmn/d;->a:F

    iget v15, v13, Lmn/d;->b:F

    iget v13, v13, Lmn/d;->c:F

    iget-object v2, v9, Lon/m;->e:Lmn/d;

    iget v4, v2, Lmn/d;->a:F

    iget v6, v2, Lmn/d;->b:F

    iget v2, v2, Lmn/d;->c:F

    new-array v0, v3, [F

    aput v14, v0, v5

    const/4 v14, 0x1

    aput v15, v0, v14

    const/4 v14, 0x2

    aput v13, v0, v14

    const/4 v13, 0x3

    aput v4, v0, v13

    const/4 v4, 0x4

    aput v6, v0, v4

    const/4 v4, 0x5

    aput v2, v0, v4

    iput-object v0, v11, Ljn/F;->a:[F

    const v2, 0x3dcccccd    # 0.1f

    iput v2, v11, Ljn/F;->b:F

    if-ne v10, v12, :cond_0

    const/16 v0, 0xff

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    new-instance v2, Ljn/W;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4}, Ljn/W;-><init>([FI)V

    iget-object v0, v10, Ljn/q;->a:Ljn/r;

    iget-object v6, v0, Ljn/r;->s:[F

    iget-object v0, v0, Ljn/r;->t:[F

    invoke-static {v2, v6, v0}, Ljn/w;->b(Ljn/W;[F[F)I

    move-result v0

    :goto_1
    iput v0, v11, Ljn/F;->e:I

    iget-wide v12, v9, Lon/m;->a:J

    long-to-int v0, v12

    iput v0, v11, Ljn/F;->f:I

    iget-object v0, v10, Ljn/q;->h:[Ljn/F;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    new-array v0, v2, [Ljn/F;

    iput-object v0, v10, Ljn/q;->h:[Ljn/F;

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    array-length v6, v0

    add-int/2addr v6, v2

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljn/F;

    iput-object v0, v10, Ljn/q;->h:[Ljn/F;

    :goto_2
    iget-object v0, v10, Ljn/q;->h:[Ljn/F;

    array-length v6, v0

    sub-int/2addr v6, v2

    aput-object v11, v0, v6

    iget-object v0, v10, Ljn/q;->a:Ljn/r;

    iget v6, v0, Ljn/r;->n:I

    add-int/2addr v6, v2

    iput v6, v0, Ljn/r;->n:I

    goto :goto_3

    :cond_2
    move v14, v4

    move v2, v6

    const/4 v4, 0x3

    :goto_3
    add-int/2addr v8, v2

    move-object/from16 v0, p1

    move v6, v2

    move v4, v14

    goto/16 :goto_0

    :cond_3
    return-void
.end method
