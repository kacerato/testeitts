.class public Lmn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljn/q;[Ljn/a;F)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "nodes",
            "quantFactor"
        }
    .end annotation

    iget-object v0, p0, Ljn/q;->a:Ljn/r;

    iget v0, v0, Ljn/r;->g:I

    new-array v1, v0, [Ljn/w$b;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Ljn/q;->a:Ljn/r;

    iget v4, v3, Ljn/r;->g:I

    if-ge v2, v4, :cond_1

    new-instance v3, Ljn/w$b;

    invoke-direct {v3}, Ljn/w$b;-><init>()V

    aput-object v3, v1, v2

    iput v2, v3, Ljn/w$b;->c:I

    const/4 v4, 0x3

    new-array v5, v4, [F

    new-array v6, v4, [F

    iget-object v7, p0, Ljn/q;->b:[F

    iget-object v8, p0, Ljn/q;->c:[Ljn/G;

    aget-object v8, v8, v2

    iget-object v8, v8, Ljn/G;->b:[I

    aget v8, v8, v0

    mul-int/2addr v8, v4

    invoke-static {v5, v7, v8}, Ljn/g;->x([F[FI)V

    iget-object v7, p0, Ljn/q;->b:[F

    iget-object v8, p0, Ljn/q;->c:[Ljn/G;

    aget-object v8, v8, v2

    iget-object v8, v8, Ljn/G;->b:[I

    aget v8, v8, v0

    mul-int/2addr v8, v4

    invoke-static {v6, v7, v8}, Ljn/g;->x([F[FI)V

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    iget-object v9, p0, Ljn/q;->c:[Ljn/G;

    aget-object v9, v9, v2

    iget v10, v9, Ljn/G;->e:I

    if-ge v8, v10, :cond_0

    iget-object v10, p0, Ljn/q;->b:[F

    iget-object v9, v9, Ljn/G;->b:[I

    aget v9, v9, v8

    mul-int/2addr v9, v4

    invoke-static {v5, v10, v9}, Ljn/g;->Q([F[FI)V

    iget-object v9, p0, Ljn/q;->b:[F

    iget-object v10, p0, Ljn/q;->c:[Ljn/G;

    aget-object v10, v10, v2

    iget-object v10, v10, Ljn/G;->b:[I

    aget v10, v10, v8

    mul-int/2addr v10, v4

    invoke-static {v6, v9, v10}, Ljn/g;->P([F[FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, v3, Ljn/w$b;->a:[I

    aget v8, v5, v0

    iget-object v9, p0, Ljn/q;->a:Ljn/r;

    iget-object v9, v9, Ljn/r;->s:[F

    aget v9, v9, v0

    sub-float/2addr v8, v9

    mul-float/2addr v8, p2

    float-to-int v8, v8

    const v9, 0x7fffffff

    invoke-static {v8, v0, v9}, Ljn/g;->b(III)I

    move-result v8

    aput v8, v4, v0

    iget-object v4, v3, Ljn/w$b;->a:[I

    aget v8, v5, v7

    iget-object v10, p0, Ljn/q;->a:Ljn/r;

    iget-object v10, v10, Ljn/r;->s:[F

    aget v10, v10, v7

    sub-float/2addr v8, v10

    mul-float/2addr v8, p2

    float-to-int v8, v8

    invoke-static {v8, v0, v9}, Ljn/g;->b(III)I

    move-result v8

    aput v8, v4, v7

    iget-object v4, v3, Ljn/w$b;->a:[I

    const/4 v8, 0x2

    aget v5, v5, v8

    iget-object v10, p0, Ljn/q;->a:Ljn/r;

    iget-object v10, v10, Ljn/r;->s:[F

    aget v10, v10, v8

    sub-float/2addr v5, v10

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5, v0, v9}, Ljn/g;->b(III)I

    move-result v5

    aput v5, v4, v8

    iget-object v4, v3, Ljn/w$b;->b:[I

    aget v5, v6, v0

    iget-object v10, p0, Ljn/q;->a:Ljn/r;

    iget-object v10, v10, Ljn/r;->s:[F

    aget v10, v10, v0

    sub-float/2addr v5, v10

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5, v0, v9}, Ljn/g;->b(III)I

    move-result v5

    aput v5, v4, v0

    iget-object v4, v3, Ljn/w$b;->b:[I

    aget v5, v6, v7

    iget-object v10, p0, Ljn/q;->a:Ljn/r;

    iget-object v10, v10, Ljn/r;->s:[F

    aget v10, v10, v7

    sub-float/2addr v5, v10

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5, v0, v9}, Ljn/g;->b(III)I

    move-result v5

    aput v5, v4, v7

    iget-object v3, v3, Ljn/w$b;->b:[I

    aget v4, v6, v8

    iget-object v5, p0, Ljn/q;->a:Ljn/r;

    iget-object v5, v5, Ljn/r;->s:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-static {v4, v0, v9}, Ljn/g;->b(III)I

    move-result v4

    aput v4, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v4

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Ljn/w;->f([Ljn/w$b;IIII[Ljn/a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljn/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p1, Ljn/q;->a:Ljn/r;

    iget v1, v0, Ljn/r;->g:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljn/a;

    iput-object v1, p1, Ljn/q;->g:[Ljn/a;

    array-length v2, v1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v2, v0, Ljn/r;->u:F

    invoke-static {p1, v1, v2}, Lmn/a;->b(Ljn/q;[Ljn/a;F)I

    move-result p1

    :goto_0
    iput p1, v0, Ljn/r;->m:I

    return-void
.end method
