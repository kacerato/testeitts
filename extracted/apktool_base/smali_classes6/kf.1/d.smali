.class public Lkf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkf/b;


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final synthetic d:Z


# instance fields
.field public final a:Lkf/e;

.field public b:[Lcom/jme3/math/Vector2f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkf/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkf/d;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkf/d;->b:[Lcom/jme3/math/Vector2f;

    if-lt p1, p2, :cond_0

    const/4 v0, 0x2

    const v1, 0x7fffffff

    const-string v2, "number of gradients"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0, p2, p3, p4}, Lkf/d;->c(IJ)V

    new-instance p2, Lkf/e;

    invoke-direct {p2, p1, p5, p6}, Lkf/e;-><init>(IJ)V

    iput-object p2, p0, Lkf/d;->a:Lkf/e;

    return-void

    :cond_0
    sget-object p3, Lkf/d;->c:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "period={0}, numGradients={1}"

    invoke-virtual {p3, p4, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "period shouldn\'t be less than numGradients"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(FF)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkf/d;->b(FF)F

    move-result p1

    sget p2, Ljf/f;->d:F

    div-float/2addr p1, p2

    return p1
.end method

.method public b(FF)F
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v11, v2

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v14, v2

    move-object/from16 v2, p0

    move v3, v11

    move v4, v14

    move-wide v5, v9

    move-wide v7, v12

    invoke-virtual/range {v2 .. v8}, Lkf/d;->d(IIDD)F

    move-result v15

    add-int/lit8 v16, v14, 0x1

    move/from16 v4, v16

    invoke-virtual/range {v2 .. v8}, Lkf/d;->d(IIDD)F

    move-result v7

    add-int/lit8 v17, v11, 0x1

    move/from16 v3, v17

    move v4, v14

    move v1, v7

    move-wide v7, v12

    invoke-virtual/range {v2 .. v8}, Lkf/d;->d(IIDD)F

    move-result v7

    move/from16 v4, v16

    move v9, v7

    move-wide v7, v12

    invoke-virtual/range {v2 .. v8}, Lkf/d;->d(IIDD)F

    move-result v2

    int-to-float v3, v11

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljf/f;->o(F)F

    move-result v0

    invoke-static {v0, v15, v9}, Ljf/f;->y(FFF)F

    move-result v3

    invoke-static {v0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v0

    int-to-float v1, v14

    sub-float v1, p2, v1

    invoke-static {v1}, Ljf/f;->o(F)F

    move-result v1

    invoke-static {v1, v3, v0}, Ljf/f;->y(FFF)F

    move-result v0

    return v0
.end method

.method public final c(IJ)V
    .locals 4

    const/4 v0, 0x2

    const v1, 0x7fffffff

    const-string v2, "number of gradients"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    new-array v0, p1, [Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lkf/d;->b:[Lcom/jme3/math/Vector2f;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result p3

    const v1, 0x40c90fdb

    mul-float/2addr p3, v1

    invoke-static {p3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    invoke-static {p3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p3

    iget-object v2, p0, Lkf/d;->b:[Lcom/jme3/math/Vector2f;

    new-instance v3, Lcom/jme3/math/Vector2f;

    invoke-direct {v3, v1, p3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    aput-object v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(IIDD)F
    .locals 3

    iget-object v0, p0, Lkf/d;->a:Lkf/e;

    invoke-virtual {v0, p2}, Lkf/e;->a(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lkf/e;->a(I)I

    move-result v0

    iget-object v1, p0, Lkf/d;->b:[Lcom/jme3/math/Vector2f;

    array-length v1, v1

    invoke-static {v0, v1}, Ljf/f;->K(II)I

    move-result v0

    iget-object v1, p0, Lkf/d;->b:[Lcom/jme3/math/Vector2f;

    aget-object v0, v1, v0

    int-to-double v1, p1

    sub-double/2addr p3, v1

    double-to-float p1, p3

    int-to-double p2, p2

    sub-double/2addr p5, p2

    double-to-float p2, p5

    iget p3, v0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr p3, p1

    iget p1, v0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    return p3
.end method
