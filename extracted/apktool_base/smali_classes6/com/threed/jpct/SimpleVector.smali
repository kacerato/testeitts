.class public Lcom/threed/jpct/SimpleVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "FloatMath"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;
    }
.end annotation


# static fields
.field private static final DOWN:Lcom/threed/jpct/SimpleVector;

.field public static final ORIGIN:Lcom/threed/jpct/SimpleVector;

.field private static cache:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private array:[F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/threed/jpct/SimpleVector;->cache:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    sput-object v0, Lcom/threed/jpct/SimpleVector;->ORIGIN:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    sput-object v0, Lcom/threed/jpct/SimpleVector;->DOWN:Lcom/threed/jpct/SimpleVector;

    return-void

    :cond_0
    new-instance v1, Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;-><init>()V

    sget-object v2, Lcom/threed/jpct/SimpleVector;->cache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 19
    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 20
    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    double-to-float p1, p1

    .line 8
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    double-to-float p1, p3

    .line 9
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    double-to-float p1, p5

    .line 10
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 3
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 4
    iput p2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 5
    iput p3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 13
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 14
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 15
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    .line 23
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 24
    aget v0, p1, v2

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    const/4 v0, 0x1

    .line 25
    aget v0, p1, v0

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v0, 0x2

    .line 26
    aget p1, p1, v0

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 28
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 29
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 30
    const-string p1, "Source-array needs to have a length of 3"

    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private _calcAngle(Lcom/threed/jpct/SimpleVector;)F
    .locals 5

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v2

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p1

    mul-float/2addr v0, p1

    div-float/2addr v1, v0

    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float v0, v1, p1

    if-gez v0, :cond_0

    move v1, p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, p1

    if-lez v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public static synthetic access$0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/threed/jpct/SimpleVector;->cache:Ljava/util/List;

    return-object v0
.end method

.method private acosFast(F)F
    .locals 2

    const v0, -0x40cd473e

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const v1, 0x3f5f66f3

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    const p1, 0x3fc90fdb

    add-float/2addr v0, p1

    return v0
.end method

.method public static create()Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public static create(FFF)Lcom/threed/jpct/SimpleVector;
    .locals 3

    .line 3
    sget-object v0, Lcom/threed/jpct/SimpleVector;->cache:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/threed/jpct/SimpleVector;->cache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/threed/jpct/SimpleVector;->cache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;

    .line 6
    iput p0, v1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 7
    iput p1, v1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 8
    iput p2, v1, Lcom/threed/jpct/SimpleVector;->z:F

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v1, Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;

    invoke-direct {v1, p0, p1, p2}, Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;-><init>(FFF)V

    .line 10
    :goto_0
    monitor-exit v0

    return-object v1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2

    .line 2
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget p0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1, p0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(FFF)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 5
    iget p1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 6
    iget p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public add(Lcom/threed/jpct/SimpleVector;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 2
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 3
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public calcAdd(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-object v0
.end method

.method public calcAngle(Lcom/threed/jpct/SimpleVector;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/threed/jpct/SimpleVector;->_calcAngle(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public calcAngleFast(Lcom/threed/jpct/SimpleVector;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/threed/jpct/SimpleVector;->_calcAngle(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/threed/jpct/SimpleVector;->acosFast(F)F

    move-result p1

    return p1
.end method

.method public calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 6

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v3, v2, p1

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, v4, v1

    sub-float/2addr v3, v5

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr p1, v5

    sub-float/2addr v4, p1

    mul-float/2addr v5, v1

    mul-float/2addr v2, v0

    sub-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public calcDot(Lcom/threed/jpct/SimpleVector;)F
    .locals 3

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public distance(Lcom/threed/jpct/SimpleVector;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/threed/jpct/SimpleVector;->lengthBetween(Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/threed/jpct/SimpleVector;

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getRotationMatrix()Lcom/threed/jpct/Matrix;
    .locals 2

    .line 1
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sget-object v1, Lcom/threed/jpct/SimpleVector;->DOWN:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {p0, v0, v1}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getRotationMatrix(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1

    .line 3
    sget-object v0, Lcom/threed/jpct/SimpleVector;->DOWN:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;
    .locals 12

    .line 4
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 5
    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 6
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    const v4, 0x1e3ce508    # 1.0E-20f

    add-float/2addr v0, v4

    :cond_0
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    .line 7
    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_1

    div-float/2addr v0, v4

    div-float/2addr v1, v4

    div-float/2addr v2, v4

    .line 8
    :cond_1
    iget-object v4, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v5, 0x1

    .line 9
    aget-object v6, v4, v5

    const/4 v7, 0x0

    aput v3, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 10
    aput v8, v6, v5

    const/4 v8, 0x2

    .line 11
    aput v3, v6, v8

    .line 12
    aget-object v6, v4, v8

    aput v0, v6, v7

    .line 13
    aput v1, v6, v5

    .line 14
    aput v2, v6, v8

    .line 15
    iget v6, p2, Lcom/threed/jpct/SimpleVector;->x:F

    .line 16
    iget v9, p2, Lcom/threed/jpct/SimpleVector;->y:F

    .line 17
    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v10, v9, v2

    mul-float v11, p2, v1

    sub-float/2addr v10, v11

    mul-float/2addr p2, v0

    mul-float v11, v6, v2

    sub-float/2addr p2, v11

    mul-float/2addr v6, v1

    mul-float/2addr v9, v0

    sub-float/2addr v6, v9

    mul-float v9, v10, v10

    mul-float v11, p2, p2

    add-float/2addr v9, v11

    mul-float v11, v6, v6

    add-float/2addr v9, v11

    .line 18
    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v9

    cmpl-float v11, v9, v3

    if-eqz v11, :cond_2

    div-float/2addr v10, v9

    div-float/2addr p2, v9

    div-float/2addr v6, v9

    :cond_2
    mul-float v9, v1, v6

    mul-float v11, v2, p2

    sub-float/2addr v9, v11

    mul-float/2addr v2, v10

    mul-float v11, v0, v6

    sub-float/2addr v2, v11

    mul-float/2addr v0, p2

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    mul-float v1, v9, v9

    mul-float v11, v2, v2

    add-float/2addr v1, v11

    mul-float v11, v0, v0

    add-float/2addr v1, v11

    .line 19
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    div-float/2addr v9, v1

    div-float/2addr v2, v1

    div-float/2addr v0, v1

    .line 20
    :cond_3
    aget-object v1, v4, v7

    aput v10, v1, v7

    .line 21
    aput p2, v1, v5

    .line 22
    aput v6, v1, v8

    .line 23
    aget-object p2, v4, v5

    aput v9, p2, v7

    .line 24
    aput v2, p2, v5

    .line 25
    aput v0, p2, v8

    .line 26
    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    return-object p1
.end method

.method public getRotationMatrix(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;
    .locals 1

    .line 2
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/SimpleVector;->getRotationMatrix(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public length()F
    .locals 2

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthBetween(Lcom/threed/jpct/SimpleVector;)F
    .locals 3

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v2, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public makeEqualLength(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result p1

    invoke-virtual {p0}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget p1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget p1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    :cond_0
    return-void
.end method

.method public matMul(Lcom/threed/jpct/Matrix;)V
    .locals 11

    iget-object p1, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object v5, p1, v4

    const/4 v6, 0x3

    aget-object p1, p1, v6

    iget v6, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aget v7, v1, v0

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aget v9, v3, v0

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    iget v9, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aget v10, v5, v0

    mul-float/2addr v10, v9

    add-float/2addr v7, v10

    aget v0, p1, v0

    add-float/2addr v7, v0

    aget v0, v1, v2

    mul-float/2addr v0, v6

    aget v10, v3, v2

    mul-float/2addr v10, v8

    add-float/2addr v0, v10

    aget v10, v5, v2

    mul-float/2addr v10, v9

    add-float/2addr v0, v10

    aget v2, p1, v2

    add-float/2addr v0, v2

    aget v1, v1, v4

    mul-float/2addr v6, v1

    aget v1, v3, v4

    mul-float/2addr v8, v1

    add-float/2addr v6, v8

    aget v1, v5, v4

    mul-float/2addr v9, v1

    add-float/2addr v6, v9

    aget p1, p1, v4

    add-float/2addr v6, p1

    iput v7, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v6, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public normalize()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 1
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 2
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v3, v1

    invoke-static {v0, v2, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v1, v1, v1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 6
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v3, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, v1, v1, v1}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    :goto_0
    return-object p1
.end method

.method public reflect(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {p0, p1}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 10

    .line 1
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 2
    iget v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 3
    iget v2, p0, Lcom/threed/jpct/SimpleVector;->z:F

    .line 4
    iget v3, p1, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    .line 5
    iget v4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 6
    iget v5, p1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 7
    iget v6, p1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    .line 8
    iget v7, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    .line 9
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result p1

    mul-float v8, v0, p1

    mul-float v9, v1, v7

    sub-float/2addr v8, v9

    mul-float/2addr v0, v7

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float p1, v8, v6

    mul-float v1, v2, v5

    sub-float/2addr p1, v1

    mul-float/2addr v8, v5

    mul-float/2addr v2, v6

    add-float/2addr v8, v2

    mul-float v1, v0, v4

    mul-float v2, v8, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v3

    mul-float/2addr v8, v4

    add-float/2addr v0, v8

    .line 10
    invoke-static {p1, v1, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/threed/jpct/Matrix;)V
    .locals 10

    .line 11
    iget-object p1, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 12
    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v3, v2, v1

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v5, 0x1

    aget-object v6, p1, v5

    aget v7, v6, v1

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, p0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v8, 0x2

    aget-object p1, p1, v8

    aget v1, p1, v1

    mul-float/2addr v1, v7

    add-float/2addr v3, v1

    .line 13
    aget v1, v2, v5

    mul-float/2addr v1, v0

    aget v9, v6, v5

    mul-float/2addr v9, v4

    add-float/2addr v1, v9

    aget v5, p1, v5

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    .line 14
    aget v2, v2, v8

    mul-float/2addr v0, v2

    aget v2, v6, v8

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    aget p1, p1, v8

    mul-float/2addr v7, p1

    add-float/2addr v0, v7

    .line 15
    iput v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 16
    iput v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 17
    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public rotateX(F)V
    .locals 5

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result p1

    mul-float v3, v0, p1

    mul-float v4, v1, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v0, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public rotateY(F)V
    .locals 5

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result p1

    mul-float v3, v0, p1

    mul-float v4, v1, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public rotateZ(F)V
    .locals 5

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result p1

    mul-float v3, v1, p1

    mul-float v4, v0, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/threed/jpct/SimpleVector;->y:F

    return-void
.end method

.method public scalarMul(F)V
    .locals 1

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public set(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 2
    iput p2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 3
    iput p3, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public set(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 4
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    .line 5
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    .line 6
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public sub(Lcom/threed/jpct/SimpleVector;)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public toArray()[F
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    if-nez v3, :cond_0

    iget v3, p0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v4, p0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v5, p0, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v6, 0x3

    new-array v6, v6, [F

    aput v3, v6, v2

    aput v4, v6, v1

    aput v5, v6, v0

    iput-object v6, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v4, v3, v2

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v3, v1

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v3, v0

    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/SimpleVector;->array:[F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
