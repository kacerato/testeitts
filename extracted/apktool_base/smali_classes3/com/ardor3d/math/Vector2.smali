.class public Lcom/ardor3d/math/Vector2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyVector2;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final NEG_ONE:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field public static final NEG_UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field public static final NEG_UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field public static final ONE:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field public static final UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field public static final UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field private static final VEC_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO:Lcom/ardor3d/math/type/ReadOnlyVector2;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _x:D

.field protected _y:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/ardor3d/math/Vector2;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Vector2;->VEC_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v5, v6, v5, v6}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->NEG_ONE:Lcom/ardor3d/math/type/ReadOnlyVector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->NEG_UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    sput-object v0, Lcom/ardor3d/math/Vector2;->NEG_UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/ardor3d/math/Vector2;->_x:D

    .line 5
    iput-wide p3, p0, Lcom/ardor3d/math/Vector2;->_y:D

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector2;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Vector2;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Vector2;->VEC_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector2;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector2;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyVector2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static lerp(Lcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    if-nez p4, :cond_0

    .line 5
    new-instance p4, Lcom/ardor3d/math/Vector2;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector2;-><init>()V

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 6
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    .line 7
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide p0

    mul-double/2addr p2, p0

    add-double/2addr v0, p2

    .line 8
    invoke-virtual {p4, v2, v3, v0, v1}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Vector2;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Vector2;->VEC_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(DDLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 2

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lcom/ardor3d/math/Vector2;

    invoke-direct {p5}, Lcom/ardor3d/math/Vector2;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide p1

    add-double/2addr p1, p3

    invoke-virtual {p5, v0, v1, p1, p2}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/math/Vector2;->add(DDLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(DD)Lcom/ardor3d/math/Vector2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide p1

    add-double/2addr p1, p3

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->addLocal(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public angleBetween(Lcom/ardor3d/math/type/ReadOnlyVector2;)D
    .locals 6

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public clone()Lcom/ardor3d/math/Vector2;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector2;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->clone()Lcom/ardor3d/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public distance(DD)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ardor3d/math/Vector2;->distanceSquared(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public distance(Lcom/ardor3d/math/type/ReadOnlyVector2;)D
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Vector2;->distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSquared(DD)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    sub-double/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide p1

    sub-double/2addr p1, p3

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector2;)D
    .locals 4

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->distanceSquared(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public divide(DLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 4

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/ardor3d/math/Vector2;

    invoke-direct {p3}, Lcom/ardor3d/math/Vector2;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    div-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    div-double/2addr v2, p1

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/Vector2;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector2;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public divideLocal(D)Lcom/ardor3d/math/Vector2;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide p1

    mul-double/2addr p1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public divideLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public dot(DD)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide p1

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public dot(Lcom/ardor3d/math/type/ReadOnlyVector2;)D
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->dot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyVector2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyVector2;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Vector2;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPolarAngle()D
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method public getValue(I)D
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be either 0 or 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_x:D

    return-wide v0
.end method

.method public getXf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_x:D

    double-to-float v0, v0

    return v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_y:D

    return-wide v0
.end method

.method public getYf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_y:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x220

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public length()D
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->lengthSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public lengthSquared()D
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public lerp(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/ardor3d/math/Vector2;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector2;-><init>()V

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v4

    mul-double/2addr p2, v4

    add-double/2addr v0, p2

    .line 4
    invoke-virtual {p4, v2, v3, v0, v1}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public lerpLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;D)Lcom/ardor3d/math/Vector2;
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector2;->setX(D)V

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    mul-double/2addr p2, v2

    add-double/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-object p0
.end method

.method public lerpLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/type/ReadOnlyVector2;D)Lcom/ardor3d/math/Vector2;
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p3

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector2;->setX(D)V

    .line 4
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide p1

    mul-double/2addr p3, p1

    add-double/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-object p0
.end method

.method public multiply(DLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 4

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/ardor3d/math/Vector2;

    invoke-direct {p3}, Lcom/ardor3d/math/Vector2;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/Vector2;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector2;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(D)Lcom/ardor3d/math/Vector2;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public negate(Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ardor3d/math/Vector2;->multiply(DLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public negateLocal()Lcom/ardor3d/math/Vector2;
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->multiplyLocal(D)Lcom/ardor3d/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public normalize(Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->lengthSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->inverseSqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ardor3d/math/Vector2;->multiply(DLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->clone()Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public normalizeLocal()Lcom/ardor3d/math/Vector2;
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->lengthSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->inverseSqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->multiplyLocal(D)Lcom/ardor3d/math/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "x"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/math/Vector2;->setX(D)V

    const-string v0, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-void
.end method

.method public rotateAroundOrigin(DZLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    if-nez p4, :cond_0

    new-instance p4, Lcom/ardor3d/math/Vector2;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector2;-><init>()V

    :cond_0
    if-eqz p3, :cond_1

    neg-double p1, p1

    :cond_1
    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v4

    mul-double/2addr p1, v4

    add-double/2addr v2, p1

    invoke-virtual {p4, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public rotateAroundOriginLocal(DZ)Lcom/ardor3d/math/Vector2;
    .locals 6

    if-eqz p3, :cond_0

    neg-double p1, p1

    :cond_0
    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v4

    mul-double/2addr p1, v4

    add-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public scaleAdd(DLcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 4

    if-nez p4, :cond_0

    new-instance p4, Lcom/ardor3d/math/Vector2;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector2;-><init>()V

    :cond_0
    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_x:D

    mul-double/2addr v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_y:D

    mul-double/2addr v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-virtual {p4, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-object p4
.end method

.method public scaleAddLocal(FLcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_x:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/ardor3d/math/Vector2;->_x:D

    iget-wide v0, p0, Lcom/ardor3d/math/Vector2;->_y:D

    mul-double/2addr v0, v2

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ardor3d/math/Vector2;->_y:D

    return-object p0
.end method

.method public set(DD)Lcom/ardor3d/math/Vector2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Vector2;->setX(D)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;
    .locals 2

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    .line 4
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-object p0
.end method

.method public setValue(ID)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be either 0 or 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/Vector2;->setX(D)V

    return-void
.end method

.method public setX(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Vector2;->_x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Vector2;->_y:D

    return-void
.end method

.method public smallestAngleBetween(Lcom/ardor3d/math/type/ReadOnlyVector2;)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Vector2;->dot(Lcom/ardor3d/math/type/ReadOnlyVector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public subtract(DDLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 2

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lcom/ardor3d/math/Vector2;

    invoke-direct {p5}, Lcom/ardor3d/math/Vector2;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide p1

    sub-double/2addr p1, p3

    invoke-virtual {p5, v0, v1, p1, p2}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lcom/ardor3d/math/type/ReadOnlyVector2;Lcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;
    .locals 6

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/math/Vector2;->subtract(DDLcom/ardor3d/math/Vector2;)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public subtractLocal(DD)Lcom/ardor3d/math/Vector2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide p1

    sub-double/2addr p1, p3

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;
    .locals 4

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->subtractLocal(DD)Lcom/ardor3d/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public toArray([D)[D
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [D

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v1

    aput-wide v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Vector2 [X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v1

    const-string v3, "x"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v7

    const-string v9, "y"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method

.method public zero()Lcom/ardor3d/math/Vector2;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    move-result-object v0

    return-object v0
.end method
