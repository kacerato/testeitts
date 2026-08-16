.class public Lkn/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkn/n$b;,
        Lkn/n$c;,
        Lkn/n$a;
    }
.end annotation


# static fields
.field public static final k:I = 0x20

.field public static final l:I = 0x4

.field public static final m:F = 3.1415927f


# instance fields
.field public a:Lkn/n$a;

.field public b:F

.field public c:F

.field public d:F

.field public final e:I

.field public final f:[Lkn/n$b;

.field public g:I

.field public final h:I

.field public final i:[Lkn/n$c;

.field public j:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxCircles",
            "maxSegments"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkn/n;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lkn/n;->g:I

    new-array p1, p1, [Lkn/n$b;

    iput-object p1, p0, Lkn/n;->f:[Lkn/n$b;

    move p1, v0

    :goto_0
    iget v1, p0, Lkn/n;->e:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lkn/n;->f:[Lkn/n$b;

    new-instance v2, Lkn/n$b;

    invoke-direct {v2}, Lkn/n$b;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lkn/n;->h:I

    iput v0, p0, Lkn/n;->j:I

    new-array p1, p2, [Lkn/n$c;

    iput-object p1, p0, Lkn/n;->i:[Lkn/n$c;

    :goto_1
    iget p1, p0, Lkn/n;->h:I

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lkn/n;->i:[Lkn/n$c;

    new-instance p2, Lkn/n$c;

    invoke-direct {p2}, Lkn/n$c;-><init>()V

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a([FF[F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "rad",
            "vel",
            "dvel"
        }
    .end annotation

    iget v0, p0, Lkn/n;->g:I

    iget v1, p0, Lkn/n;->e:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkn/n;->f:[Lkn/n$b;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkn/n;->g:I

    aget-object v0, v1, v0

    iget-object v1, v0, Lkn/n$b;->a:[F

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    iput p2, v0, Lkn/n$b;->d:F

    iget-object p1, v0, Lkn/n$b;->b:[F

    invoke-static {p1, p3}, Ljn/g;->w([F[F)V

    iget-object p1, v0, Lkn/n$b;->c:[F

    invoke-static {p1, p4}, Ljn/g;->w([F[F)V

    return-void
.end method

.method public b([F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    iget v0, p0, Lkn/n;->j:I

    iget v1, p0, Lkn/n;->h:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkn/n;->i:[Lkn/n$c;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkn/n;->j:I

    aget-object v0, v1, v0

    iget-object v1, v0, Lkn/n$c;->a:[F

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    iget-object p1, v0, Lkn/n$c;->b:[F

    invoke-static {p1, p2}, Ljn/g;->w([F[F)V

    return-void
.end method

.method public c([F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x2

    aget v3, p1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    aget v1, p1, v0

    mul-float/2addr v1, v3

    aput v1, p1, v0

    aget v0, p1, v2

    mul-float/2addr v0, v3

    aput v0, p1, v2

    return-void
.end method

.method public d([FF)[F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "ang"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    mul-float/2addr v3, p2

    const/4 v4, 0x2

    aget v5, p1, v4

    mul-float v6, v5, v1

    sub-float/2addr v3, v6

    aput v3, v0, v2

    aget v2, p1, v2

    mul-float/2addr v2, v1

    mul-float/2addr v5, p2

    add-float/2addr v2, v5

    aput v2, v0, v4

    const/4 p2, 0x1

    aget p1, p1, p2

    aput p1, v0, p2

    return-object v0
.end method

.method public e(I)Lkn/n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lkn/n;->f:[Lkn/n$b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lkn/n;->g:I

    return v0
.end method

.method public g(I)Lkn/n$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lkn/n;->i:[Lkn/n$c;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lkn/n;->j:I

    return v0
.end method

.method public i([F[F[F[F)Ljn/U;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ap",
            "u",
            "bp",
            "bq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F[F[F)",
            "Ljn/U<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p4, p3}, Ljn/g;->W([F[F)[F

    move-result-object p4

    invoke-static {p1, p3}, Ljn/g;->W([F[F)[F

    move-result-object p1

    invoke-static {p2, p4}, Ljn/g;->S([F[F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    if-gez v0, :cond_0

    new-instance p1, Ljn/U;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p3, v0, p3

    invoke-static {p4, p1}, Ljn/g;->S([F[F)F

    move-result p4

    mul-float/2addr p4, p3

    cmpg-float v3, p4, v1

    if-ltz v3, :cond_4

    cmpl-float v3, p4, v0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p1}, Ljn/g;->S([F[F)F

    move-result p1

    mul-float/2addr p1, p3

    cmpg-float p2, p1, v1

    if-ltz p2, :cond_3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljn/U;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Ljn/U;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, Ljn/U;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final j([F[F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "dvel"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lkn/n;->g:I

    const v4, 0x3c23d70a    # 0.01f

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lkn/n;->f:[Lkn/n$b;

    aget-object v3, v3, v2

    iget-object v5, v3, Lkn/n$b;->a:[F

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iget-object v7, v3, Lkn/n$b;->e:[F

    invoke-static {v5, p1}, Ljn/g;->W([F[F)[F

    move-result-object v5

    invoke-static {v7, v5}, Ljn/g;->w([F[F)V

    iget-object v5, v3, Lkn/n$b;->e:[F

    invoke-static {v5}, Ljn/g;->R([F)V

    iget-object v5, v3, Lkn/n$b;->c:[F

    invoke-static {v5, p2}, Ljn/g;->W([F[F)[F

    move-result-object v5

    iget-object v7, v3, Lkn/n$b;->e:[F

    invoke-static {v6, v7, v5}, Ljn/g;->u([F[F[F)F

    move-result v5

    cmpg-float v4, v5, v4

    const/4 v5, 0x2

    if-gez v4, :cond_0

    iget-object v4, v3, Lkn/n$b;->f:[F

    iget-object v3, v3, Lkn/n$b;->e:[F

    aget v6, v3, v5

    neg-float v6, v6

    aput v6, v4, v1

    aget v3, v3, v1

    aput v3, v4, v5

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lkn/n$b;->f:[F

    iget-object v3, v3, Lkn/n$b;->e:[F

    aget v6, v3, v5

    aput v6, v4, v1

    aget v3, v3, v1

    neg-float v3, v3

    aput v3, v4, v5

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_2
    iget v2, p0, Lkn/n;->j:I

    if-ge p2, v2, :cond_3

    iget-object v2, p0, Lkn/n;->i:[Lkn/n$c;

    aget-object v2, v2, p2

    iget-object v3, v2, Lkn/n$c;->a:[F

    iget-object v5, v2, Lkn/n$c;->b:[F

    invoke-static {p1, v3, v5}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v3

    iget-object v3, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4}, Ljn/g;->s(F)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    move v3, v0

    goto :goto_3

    :cond_2
    move v3, v1

    :goto_3
    iput-boolean v3, v2, Lkn/n$c;->c:Z

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final k([FF[FF[F[FFLln/b;)F
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "vcand",
            "cs",
            "pos",
            "rad",
            "vel",
            "dvel",
            "minPenalty",
            "debug"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p5

    iget-object v0, v6, Lkn/n;->a:Lkn/n$a;

    iget v0, v0, Lkn/n$a;->b:F

    move-object/from16 v1, p6

    invoke-static {v8, v1}, Ljn/g;->B([F[F)F

    move-result v1

    iget v2, v6, Lkn/n;->d:F

    mul-float/2addr v1, v2

    mul-float v11, v0, v1

    iget-object v0, v6, Lkn/n;->a:Lkn/n$a;

    iget v0, v0, Lkn/n$a;->c:F

    invoke-static {v8, v7}, Ljn/g;->B([F[F)F

    move-result v1

    iget v2, v6, Lkn/n;->d:F

    mul-float/2addr v1, v2

    mul-float v12, v0, v1

    sub-float v0, p7, v11

    sub-float/2addr v0, v12

    iget-object v1, v6, Lkn/n;->a:Lkn/n$a;

    iget v2, v1, Lkn/n$a;->e:F

    div-float/2addr v2, v0

    const v9, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v9

    iget v0, v1, Lkn/n$a;->f:F

    mul-float v10, v2, v0

    sub-float v1, v10, v0

    const v2, -0x7fffffff

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return p7

    :cond_0
    const/4 v14, 0x0

    move v15, v0

    move v0, v14

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v2, v6, Lkn/n;->g:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v5, v2, :cond_5

    iget-object v2, v6, Lkn/n;->f:[Lkn/n$b;

    aget-object v2, v2, v5

    invoke-static {v8, v4}, Ljn/g;->T([FF)[F

    move-result-object v9

    invoke-static {v9, v7}, Ljn/g;->W([F[F)[F

    move-result-object v9

    iget-object v13, v2, Lkn/n$b;->b:[F

    invoke-static {v9, v13}, Ljn/g;->W([F[F)[F

    move-result-object v9

    iget-object v13, v2, Lkn/n$b;->e:[F

    invoke-static {v13, v9}, Ljn/g;->F([F[F)F

    move-result v13

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v13, v13, v16

    add-float v13, v13, v16

    iget-object v3, v2, Lkn/n$b;->f:[F

    invoke-static {v3, v9}, Ljn/g;->F([F[F)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v14, v4}, Ljn/g;->a(FFF)F

    move-result v3

    add-float v13, v0, v3

    add-int/lit8 v17, v1, 0x1

    iget-object v4, v2, Lkn/n$b;->a:[F

    iget v3, v2, Lkn/n$b;->d:F

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v18, v3

    move-object v3, v9

    move v9, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lkn/n;->o([FF[F[FF)Lkn/v;

    move-result-object v0

    iget-boolean v1, v0, Lkn/v;->a:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v0, Lkn/v;->b:F

    iget v0, v0, Lkn/v;->c:F

    cmpg-float v2, v1, v14

    if-gez v2, :cond_2

    cmpl-float v0, v0, v14

    if-lez v0, :cond_2

    neg-float v0, v1

    mul-float v1, v0, v16

    :cond_2
    cmpl-float v0, v1, v14

    if-ltz v0, :cond_4

    cmpg-float v0, v1, v15

    if-gez v0, :cond_4

    cmpg-float v0, v1, v10

    if-gez v0, :cond_3

    return p7

    :cond_3
    move v15, v1

    :cond_4
    :goto_1
    add-int/lit8 v5, v9, 0x1

    move v0, v13

    move/from16 v1, v17

    const v9, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget v3, v6, Lkn/n;->j:I

    if-ge v2, v3, :cond_b

    iget-object v3, v6, Lkn/n;->i:[Lkn/n$c;

    aget-object v3, v3, v2

    iget-boolean v5, v3, Lkn/n$c;->c:Z

    if-eqz v5, :cond_7

    iget-object v5, v3, Lkn/n$c;->b:[F

    iget-object v3, v3, Lkn/n$c;->a:[F

    invoke-static {v5, v3}, Ljn/g;->W([F[F)[F

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v7, 0x2

    aget v9, v3, v7

    neg-float v9, v9

    const/4 v13, 0x0

    aput v9, v5, v13

    aget v3, v3, v13

    aput v3, v5, v7

    invoke-static {v5, v8}, Ljn/g;->F([F[F)F

    move-result v3

    cmpg-float v3, v3, v14

    if-gez v3, :cond_6

    move-object/from16 v7, p3

    goto :goto_4

    :cond_6
    move-object/from16 v7, p3

    move v3, v14

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    iget-object v5, v3, Lkn/n$c;->a:[F

    iget-object v3, v3, Lkn/n$c;->b:[F

    move-object/from16 v7, p3

    invoke-virtual {v6, v7, v8, v5, v3}, Lkn/n;->i([F[F[F[F)Ljn/U;

    move-result-object v3

    iget-object v5, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_3
    mul-float/2addr v3, v4

    cmpg-float v5, v3, v15

    if-gez v5, :cond_a

    cmpg-float v5, v3, v10

    if-gez v5, :cond_9

    return p7

    :cond_9
    move v15, v3

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_c
    iget-object v1, v6, Lkn/n;->a:Lkn/n$a;

    iget v2, v1, Lkn/n$a;->d:F

    mul-float v13, v2, v0

    iget v0, v1, Lkn/n$a;->e:F

    iget v1, v6, Lkn/n;->b:F

    mul-float/2addr v15, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v15, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v3, v1, v15

    mul-float v14, v0, v3

    add-float v0, v11, v12

    add-float/2addr v0, v13

    add-float/2addr v0, v14

    if-eqz p8, :cond_d

    move-object/from16 v7, p8

    move-object/from16 v8, p1

    move/from16 v9, p2

    move v10, v0

    invoke-virtual/range {v7 .. v14}, Lln/b;->a([FFFFFFF)V

    :cond_d
    return v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkn/n;->g:I

    iput v0, p0, Lkn/n;->j:I

    return-void
.end method

.method public m([FFF[F[FLkn/n$a;Lln/b;)Ljn/U;
    .locals 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "rad",
            "vmax",
            "vel",
            "dvel",
            "params",
            "debug"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FFF[F[F",
            "Lkn/n$a;",
            "Lln/b;",
            ")",
            "Ljn/U<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v0, p6

    move-object/from16 v12, p1

    invoke-virtual {v9, v12, v11}, Lkn/n;->j([F[F)V

    iput-object v0, v9, Lkn/n;->a:Lkn/n$a;

    iget v0, v0, Lkn/n$a;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, v9, Lkn/n;->b:F

    iput v10, v9, Lkn/n;->c:F

    const/4 v13, 0x0

    cmpl-float v0, v10, v13

    if-lez v0, :cond_0

    div-float v0, v1, v10

    goto :goto_0

    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    iput v0, v9, Lkn/n;->d:F

    const/4 v15, 0x3

    new-array v8, v15, [F

    invoke-static {v8, v13, v13, v13}, Ljn/g;->U([FFFF)V

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lln/b;->l()V

    :cond_1
    const/16 v0, 0x102

    new-array v7, v0, [F

    iget-object v0, v9, Lkn/n;->a:Lkn/n$a;

    iget v2, v0, Lkn/n$a;->h:I

    iget v3, v0, Lkn/n$a;->i:I

    iget v6, v0, Lkn/n$a;->j:I

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-static {v2, v5, v0}, Ljn/g;->b(III)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v3, v5, v2}, Ljn/g;->b(III)I

    move-result v3

    int-to-float v4, v0

    div-float v4, v1, v4

    const v16, 0x40490fdb    # (float)Math.PI

    mul-float v4, v4, v16

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v4, v4, v16

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v2, v13

    const/4 v13, 0x6

    new-array v13, v13, [F

    invoke-static {v13, v11}, Ljn/g;->w([F[F)V

    invoke-virtual {v9, v13}, Lkn/n;->c([F)V

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v4, v14

    invoke-virtual {v9, v13, v4}, Lkn/n;->d([FF)[F

    move-result-object v4

    const/16 v19, 0x0

    aget v20, v4, v19

    aput v20, v13, v15

    aget v20, v4, v5

    const/16 v18, 0x4

    aput v20, v13, v18

    const/16 v18, 0x5

    const/16 v20, 0x2

    aget v4, v4, v20

    aput v4, v13, v18

    const/4 v4, 0x0

    aput v4, v7, v19

    aput v4, v7, v5

    move v14, v5

    move/from16 v4, v19

    :goto_1
    if-ge v4, v3, :cond_4

    sub-int v5, v3, v4

    int-to-float v5, v5

    int-to-float v15, v3

    div-float/2addr v5, v15

    mul-int/lit8 v15, v14, 0x2

    rem-int/lit8 v23, v4, 0x2

    const/16 v22, 0x3

    mul-int/lit8 v23, v23, 0x3

    aget v24, v13, v23

    mul-float v24, v24, v5

    aput v24, v7, v15

    add-int/lit8 v24, v15, 0x1

    add-int/lit8 v23, v23, 0x2

    aget v23, v13, v23

    mul-float v23, v23, v5

    aput v23, v7, v24

    add-int/lit8 v14, v14, 0x1

    move/from16 v23, v3

    move v5, v15

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v24, v8

    add-int/lit8 v8, v0, -0x1

    if-ge v3, v8, :cond_2

    mul-int/lit8 v8, v14, 0x2

    aget v25, v7, v15

    mul-float v25, v25, v1

    add-int/lit8 v26, v15, 0x1

    aget v27, v7, v26

    mul-float v27, v27, v2

    add-float v25, v25, v27

    aput v25, v7, v8

    add-int/lit8 v25, v8, 0x1

    aget v15, v7, v15

    neg-float v15, v15

    mul-float/2addr v15, v2

    aget v26, v7, v26

    mul-float v26, v26, v1

    add-float v15, v15, v26

    aput v15, v7, v25

    add-int/lit8 v15, v8, 0x2

    aget v25, v7, v5

    mul-float v25, v25, v1

    add-int/lit8 v26, v5, 0x1

    aget v27, v7, v26

    mul-float v27, v27, v2

    sub-float v25, v25, v27

    aput v25, v7, v15

    add-int/lit8 v25, v8, 0x3

    aget v5, v7, v5

    mul-float/2addr v5, v2

    aget v26, v7, v26

    mul-float v26, v26, v1

    add-float v5, v5, v26

    aput v5, v7, v25

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v3, v3, 0x2

    move v5, v15

    move v15, v8

    move-object/from16 v8, v24

    goto :goto_2

    :cond_2
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_3

    mul-int/lit8 v3, v14, 0x2

    add-int/lit8 v8, v3, 0x2

    aget v15, v7, v5

    mul-float/2addr v15, v1

    add-int/lit8 v25, v5, 0x1

    aget v26, v7, v25

    mul-float v26, v26, v2

    sub-float v15, v15, v26

    aput v15, v7, v8

    const/4 v8, 0x3

    add-int/2addr v3, v8

    aget v5, v7, v5

    mul-float/2addr v5, v2

    aget v8, v7, v25

    mul-float/2addr v8, v1

    add-float/2addr v5, v8

    aput v5, v7, v3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v23

    move-object/from16 v8, v24

    const/4 v5, 0x1

    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_4
    move-object/from16 v24, v8

    iget-object v0, v9, Lkn/n;->a:Lkn/n$a;

    iget v0, v0, Lkn/n$a;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, v10

    const/4 v13, 0x3

    new-array v15, v13, [F

    aget v2, v11, v19

    mul-float/2addr v2, v0

    aget v3, v11, v20

    mul-float/2addr v3, v0

    const/4 v0, 0x0

    invoke-static {v15, v2, v0, v3}, Ljn/g;->U([FFFF)V

    move/from16 v17, v1

    move/from16 v1, v19

    move v8, v1

    :goto_3
    if-ge v8, v6, :cond_8

    new-array v5, v13, [F

    invoke-static {v5, v0, v0, v0}, Ljn/g;->U([FFFF)V

    move/from16 v22, v1

    move/from16 v4, v19

    const v23, 0x7f7fffff    # Float.MAX_VALUE

    :goto_4
    if-ge v4, v14, :cond_7

    new-array v3, v13, [F

    aget v0, v15, v19

    mul-int/lit8 v1, v4, 0x2

    aget v2, v7, v1

    mul-float v2, v2, v17

    add-float/2addr v0, v2

    aget v2, v15, v20

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v1, v7, v1

    mul-float v1, v1, v17

    add-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v3, v0, v1, v2}, Ljn/g;->U([FFFF)V

    aget v0, v3, v19

    invoke-static {v0}, Ljn/g;->s(F)F

    move-result v0

    aget v2, v3, v20

    invoke-static {v2}, Ljn/g;->s(F)F

    move-result v2

    add-float/2addr v0, v2

    const v2, 0x3a83126f    # 0.001f

    add-float/2addr v2, v10

    invoke-static {v2}, Ljn/g;->s(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    move/from16 v25, v1

    move/from16 v27, v4

    move-object v9, v5

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v10, v24

    move/from16 v24, v8

    goto :goto_5

    :cond_5
    const/high16 v0, 0x41200000    # 10.0f

    div-float v2, v17, v0

    move-object/from16 v0, p0

    move/from16 v25, v1

    move-object v1, v3

    move-object v13, v3

    move-object/from16 v3, p1

    move/from16 v27, v4

    move/from16 v4, p2

    move-object v9, v5

    move-object/from16 v5, p4

    move/from16 v28, v6

    move-object/from16 v6, p5

    move-object/from16 v29, v7

    move/from16 v7, v23

    move-object/from16 v10, v24

    move/from16 v24, v8

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lkn/n;->k([FF[FF[F[FFLln/b;)F

    move-result v0

    add-int/lit8 v22, v22, 0x1

    cmpg-float v1, v0, v23

    if-gez v1, :cond_6

    invoke-static {v9, v13}, Ljn/g;->w([F[F)V

    move/from16 v23, v0

    :cond_6
    :goto_5
    add-int/lit8 v4, v27, 0x1

    move-object v5, v9

    move/from16 v8, v24

    move/from16 v6, v28

    move-object/from16 v7, v29

    const/4 v13, 0x3

    move-object/from16 v9, p0

    move-object/from16 v24, v10

    move/from16 v10, p3

    goto/16 :goto_4

    :cond_7
    move-object v9, v5

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v10, v24

    const/16 v21, 0x1

    const/16 v25, 0x0

    move/from16 v24, v8

    invoke-static {v15, v9}, Ljn/g;->w([F[F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v17, v17, v0

    add-int/lit8 v8, v24, 0x1

    move-object/from16 v9, p0

    move-object/from16 v24, v10

    move/from16 v1, v22

    move/from16 v0, v25

    const/4 v13, 0x3

    move/from16 v10, p3

    goto/16 :goto_3

    :cond_8
    move-object/from16 v10, v24

    invoke-static {v10, v15}, Ljn/g;->w([F[F)V

    new-instance v0, Ljn/U;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public n([FFF[F[FLkn/n$a;Lln/b;)Ljn/U;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "rad",
            "vmax",
            "vel",
            "dvel",
            "params",
            "debug"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FFF[F[F",
            "Lkn/n$a;",
            "Lln/b;",
            ")",
            "Ljn/U<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v0, p6

    move-object/from16 v12, p1

    invoke-virtual {v9, v12, v11}, Lkn/n;->j([F[F)V

    iput-object v0, v9, Lkn/n;->a:Lkn/n$a;

    iget v0, v0, Lkn/n$a;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, v9, Lkn/n;->b:F

    iput v10, v9, Lkn/n;->c:F

    const/4 v13, 0x0

    cmpl-float v0, v10, v13

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-lez v0, :cond_0

    div-float v0, v1, v10

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, v9, Lkn/n;->d:F

    const/4 v14, 0x3

    new-array v15, v14, [F

    invoke-static {v15, v13, v13, v13}, Ljn/g;->U([FFFF)V

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lln/b;->l()V

    :cond_1
    const/16 v16, 0x0

    aget v0, v11, v16

    iget-object v3, v9, Lkn/n;->a:Lkn/n$a;

    iget v4, v3, Lkn/n$a;->a:F

    mul-float v17, v0, v4

    const/16 v18, 0x2

    aget v0, v11, v18

    mul-float v19, v0, v4

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v0, v10, v20

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    iget v1, v3, Lkn/n$a;->g:I

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    div-float v21, v0, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    mul-float v0, v0, v21

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v22, v0, v1

    move/from16 v0, v16

    move v8, v0

    :goto_1
    iget-object v1, v9, Lkn/n;->a:Lkn/n$a;

    iget v1, v1, Lkn/n$a;->g:I

    if-ge v8, v1, :cond_5

    move/from16 v23, v0

    move/from16 v24, v2

    move/from16 v7, v16

    :goto_2
    iget-object v0, v9, Lkn/n;->a:Lkn/n$a;

    iget v0, v0, Lkn/n$a;->g:I

    if-ge v7, v0, :cond_4

    new-array v6, v14, [F

    int-to-float v0, v7

    mul-float v0, v0, v21

    add-float v0, v17, v0

    sub-float v0, v0, v22

    int-to-float v1, v8

    mul-float v1, v1, v21

    add-float v1, v19, v1

    sub-float v1, v1, v22

    invoke-static {v6, v0, v13, v1}, Ljn/g;->U([FFFF)V

    aget v0, v6, v16

    invoke-static {v0}, Ljn/g;->s(F)F

    move-result v0

    aget v1, v6, v18

    invoke-static {v1}, Ljn/g;->s(F)F

    move-result v1

    add-float/2addr v0, v1

    div-float v1, v21, v20

    add-float/2addr v1, v10

    invoke-static {v1}, Ljn/g;->s(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    move/from16 v25, v7

    move/from16 v26, v8

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move-object v13, v6

    move-object/from16 v6, p5

    move/from16 v25, v7

    move/from16 v7, v24

    move/from16 v26, v8

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lkn/n;->k([FF[FF[F[FFLln/b;)F

    move-result v0

    add-int/lit8 v23, v23, 0x1

    cmpg-float v1, v0, v24

    if-gez v1, :cond_3

    invoke-static {v15, v13}, Ljn/g;->w([F[F)V

    move/from16 v24, v0

    :cond_3
    :goto_3
    add-int/lit8 v7, v25, 0x1

    move/from16 v8, v26

    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    move/from16 v26, v8

    add-int/lit8 v8, v26, 0x1

    move/from16 v0, v23

    move/from16 v2, v24

    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    new-instance v1, Ljn/U;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v15}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public o([FF[F[FF)Lkn/v;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c0",
            "r0",
            "v",
            "c1",
            "r1"
        }
    .end annotation

    invoke-static {p4, p1}, Ljn/g;->W([F[F)[F

    move-result-object p1

    add-float/2addr p2, p5

    invoke-static {p1, p1}, Ljn/g;->F([F[F)F

    move-result p4

    mul-float/2addr p2, p2

    sub-float/2addr p4, p2

    invoke-static {p3, p3}, Ljn/g;->F([F[F)F

    move-result p2

    const p5, 0x38d1b717    # 1.0E-4f

    cmpg-float p5, p2, p5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p5, :cond_0

    new-instance p1, Lkn/v;

    invoke-direct {p1, v0, v1, v1}, Lkn/v;-><init>(ZFF)V

    return-object p1

    :cond_0
    invoke-static {p3, p1}, Ljn/g;->F([F[F)F

    move-result p1

    mul-float p3, p1, p1

    mul-float/2addr p4, p2

    sub-float/2addr p3, p4

    cmpg-float p4, p3, v1

    if-gez p4, :cond_1

    new-instance p1, Lkn/v;

    invoke-direct {p1, v0, v1, v1}, Lkn/v;-><init>(ZFF)V

    return-object p1

    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    div-float/2addr p4, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    new-instance p3, Lkn/v;

    sub-float p5, p1, p2

    mul-float/2addr p5, p4

    add-float/2addr p1, p2

    mul-float/2addr p1, p4

    const/4 p2, 0x1

    invoke-direct {p3, p2, p5, p1}, Lkn/v;-><init>(ZFF)V

    return-object p3
.end method
