.class public Lcom/ardor3d/math/Vector4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyVector4;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final NEG_ONE:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final NEG_UNIT_W:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final NEG_UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final NEG_UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final NEG_UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final ONE:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final UNIT_W:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field public static final UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field private static final VEC_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Vector4;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO:Lcom/ardor3d/math/type/ReadOnlyVector4;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _w:D

.field protected _x:D

.field protected _y:D

.field protected _z:D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-class v0, Lcom/ardor3d/math/Vector4;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Vector4;->VEC_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->NEG_ONE:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->NEG_UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->NEG_UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->NEG_UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->UNIT_W:Lcom/ardor3d/math/type/ReadOnlyVector4;

    new-instance v0, Lcom/ardor3d/math/Vector4;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Vector4;->NEG_UNIT_W:Lcom/ardor3d/math/type/ReadOnlyVector4;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/ardor3d/math/Vector4;->_x:D

    .line 5
    iput-wide p3, p0, Lcom/ardor3d/math/Vector4;->_y:D

    .line 6
    iput-wide p5, p0, Lcom/ardor3d/math/Vector4;->_z:D

    .line 7
    iput-wide p7, p0, Lcom/ardor3d/math/Vector4;->_w:D

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector4;)V
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Vector4;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Vector4;->VEC_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector4;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector4;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyVector4;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

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

.method public static lerp(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/type/ReadOnlyVector4;DLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 11

    if-nez p4, :cond_0

    .line 7
    new-instance p4, Lcom/ardor3d/math/Vector4;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    move-object v0, p4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, p2

    .line 8
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v5

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    .line 9
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v7

    mul-double/2addr v7, p2

    add-double/2addr v5, v7

    .line 10
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    .line 11
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v9

    mul-double/2addr v1, v9

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide p0

    mul-double/2addr p2, p0

    add-double p0, v1, p2

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, p0

    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p0

    return-object p0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Vector4;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Vector4;->VEC_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(DDDDLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    if-nez p9, :cond_0

    .line 1
    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    add-double/2addr v3, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v5

    add-double/2addr v5, p5

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    add-double v7, v7, p7

    move-object p1, v0

    move-wide p2, v1

    move-wide p4, v3

    move-wide p6, v5

    move-wide/from16 p8, v7

    invoke-virtual/range {p1 .. p9}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 10

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/ardor3d/math/Vector4;->add(DDDDLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(DDDD)Lcom/ardor3d/math/Vector4;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    add-double v3, v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    add-double v5, v0, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    add-double v7, v0, p5

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    add-double v9, v0, p7

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public addLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->addLocal(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/ardor3d/math/Vector4;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector4;
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->clone()Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public determinant(DDDD)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide p1

    mul-double/2addr p1, p3

    sub-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide p1

    mul-double/2addr p1, p5

    sub-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide p1

    mul-double/2addr p1, p7

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public determinant(Lcom/ardor3d/math/type/ReadOnlyVector4;)D
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->determinant(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance(DDDD)D
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/ardor3d/math/Vector4;->distanceSquared(DDDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public distance(Lcom/ardor3d/math/type/ReadOnlyVector4;)D
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Vector4;->distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector4;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSquared(DDDD)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    sub-double/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide p1

    sub-double/2addr p1, p3

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide p3

    sub-double/2addr p3, p5

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide p5

    sub-double/2addr p5, p7

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    mul-double/2addr p3, p3

    add-double/2addr v0, p3

    mul-double/2addr p5, p5

    add-double/2addr v0, p5

    return-wide v0
.end method

.method public distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector4;)D
    .locals 9

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->distanceSquared(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public divide(DLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/ardor3d/math/Vector4;

    invoke-direct {p3}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    move-object v0, p3

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    div-double/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    div-double/2addr v3, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v5

    div-double/2addr v5, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    div-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/Vector4;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    move-object v0, p2

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide p1

    div-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public divideLocal(D)Lcom/ardor3d/math/Vector4;
    .locals 11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide p1

    mul-double v3, p1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide p1

    mul-double v5, p1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide p1

    mul-double v7, p1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide p1

    mul-double v9, p1, v0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public divideLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;
    .locals 13

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    div-double v5, v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v2

    div-double v7, v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v2

    div-double v9, v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v2

    div-double v11, v0, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public dot(DDDD)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide p1

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide p1

    mul-double/2addr p1, p5

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide p1

    mul-double/2addr p1, p7

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public dot(Lcom/ardor3d/math/type/ReadOnlyVector4;)D
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->dot(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyVector4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyVector4;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

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
            "Lcom/ardor3d/math/Vector4;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)D
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be either 0, 1, 2 or 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getW()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_w:D

    return-wide v0
.end method

.method public getWf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_w:D

    double-to-float v0, v0

    return v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_x:D

    return-wide v0
.end method

.method public getXf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_x:D

    double-to-float v0, v0

    return v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_y:D

    return-wide v0
.end method

.method public getYf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_y:D

    double-to-float v0, v0

    return v0
.end method

.method public getZ()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_z:D

    return-wide v0
.end method

.method public getZf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_z:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x220

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

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

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->lengthSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public lengthSquared()D
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public lerp(Lcom/ardor3d/math/type/ReadOnlyVector4;DLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 11

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/ardor3d/math/Vector4;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    move-object v0, p4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, p2

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v5

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v7

    mul-double/2addr v7, p2

    add-double/2addr v5, v7

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v9

    mul-double/2addr v1, v9

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v9

    mul-double/2addr p2, v9

    add-double p1, v1, p2

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, p1

    .line 6
    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public lerpLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;D)Lcom/ardor3d/math/Vector4;
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector4;->setX(D)V

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector4;->setY(D)V

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v2

    mul-double/2addr p2, v2

    add-double/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-object p0
.end method

.method public lerpLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/type/ReadOnlyVector4;D)Lcom/ardor3d/math/Vector4;
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p3

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector4;->setX(D)V

    .line 6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector4;->setY(D)V

    .line 7
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    .line 8
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide p1

    mul-double/2addr p3, p1

    add-double/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-object p0
.end method

.method public multiply(DLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/ardor3d/math/Vector4;

    invoke-direct {p3}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    move-object v0, p3

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    mul-double/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    mul-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/Vector4;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    move-object v0, p2

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide p1

    mul-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(D)Lcom/ardor3d/math/Vector4;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    mul-double v3, v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    mul-double v5, v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    mul-double v7, v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    mul-double v9, v0, p1

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;
    .locals 13

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    mul-double v5, v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v2

    mul-double v7, v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v2

    mul-double v9, v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v2

    mul-double v11, v0, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public negate(Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ardor3d/math/Vector4;->multiply(DLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public negateLocal()Lcom/ardor3d/math/Vector4;
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->multiplyLocal(D)Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public normalize(Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->lengthSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->inverseSqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ardor3d/math/Vector4;->multiply(DLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/ardor3d/math/Vector4;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector4;->set(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/ardor3d/math/Vector4;

    sget-object v0, Lcom/ardor3d/math/Vector4;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector4;

    invoke-direct {p1, v0}, Lcom/ardor3d/math/Vector4;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    :goto_0
    return-object p1
.end method

.method public normalizeLocal()Lcom/ardor3d/math/Vector4;
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->lengthSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->inverseSqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->multiplyLocal(D)Lcom/ardor3d/math/Vector4;

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

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/math/Vector4;->setX(D)V

    const-string v0, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/math/Vector4;->setY(D)V

    const-string v0, "z"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    const-string v0, "w"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setW(D)V

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

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setX(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setY(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-void
.end method

.method public scaleAdd(DLcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 4

    if-nez p4, :cond_0

    new-instance p4, Lcom/ardor3d/math/Vector4;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_x:D

    mul-double/2addr v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Lcom/ardor3d/math/Vector4;->setX(D)V

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_y:D

    mul-double/2addr v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Lcom/ardor3d/math/Vector4;->setY(D)V

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_z:D

    mul-double/2addr v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Lcom/ardor3d/math/Vector4;->setY(D)V

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_w:D

    mul-double/2addr v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-virtual {p4, v0, v1}, Lcom/ardor3d/math/Vector4;->setY(D)V

    return-object p4
.end method

.method public scaleAddLocal(FLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 6

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_x:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/ardor3d/math/Vector4;->_x:D

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_y:D

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/ardor3d/math/Vector4;->_y:D

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_z:D

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/ardor3d/math/Vector4;->_z:D

    iget-wide v0, p0, Lcom/ardor3d/math/Vector4;->_w:D

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ardor3d/math/Vector4;->_w:D

    return-object p0
.end method

.method public set(DDDD)Lcom/ardor3d/math/Vector4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Vector4;->setX(D)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/ardor3d/math/Vector4;->setY(D)V

    .line 3
    invoke-virtual {p0, p5, p6}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    .line 4
    invoke-virtual {p0, p7, p8}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;
    .locals 2

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setX(D)V

    .line 6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setY(D)V

    .line 7
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    .line 8
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-object p0
.end method

.method public setValue(ID)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be either 0, 1, 2 or 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    return-void

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/Vector4;->setY(D)V

    return-void

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/math/Vector4;->setX(D)V

    return-void
.end method

.method public setW(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Vector4;->_w:D

    return-void
.end method

.method public setX(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Vector4;->_x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Vector4;->_y:D

    return-void
.end method

.method public setZ(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Vector4;->_z:D

    return-void
.end method

.method public subtract(DDDDLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    if-nez p9, :cond_0

    .line 1
    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    sub-double/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v3

    sub-double/2addr v3, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v5

    sub-double/2addr v5, p5

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    sub-double v7, v7, p7

    move-object p1, v0

    move-wide p2, v1

    move-wide p4, v3

    move-wide p6, v5

    move-wide/from16 p8, v7

    invoke-virtual/range {p1 .. p9}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 10

    .line 3
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/ardor3d/math/Vector4;->subtract(DDDDLcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public subtractLocal(DDDD)Lcom/ardor3d/math/Vector4;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    sub-double v3, v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    sub-double v5, v0, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    sub-double v7, v0, p5

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    sub-double v9, v0, p7

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->subtractLocal(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public toArray([D)[D
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [D

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    aput-wide v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Vector4 [X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", W="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

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

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v1

    const-string v3, "x"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v7

    const-string v9, "y"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v1

    const-string v3, "z"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v7

    const-string v9, "w"

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

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method

.method public zero()Lcom/ardor3d/math/Vector4;
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    move-result-object v0

    return-object v0
.end method
