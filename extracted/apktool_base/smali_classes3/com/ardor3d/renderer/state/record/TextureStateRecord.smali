.class public Lcom/ardor3d/renderer/state/record/TextureStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# static fields
.field public static final DEFAULT_Q_PLANE:[F

.field public static final DEFAULT_R_PLANE:[F

.field public static final DEFAULT_S_PLANE:[F

.field public static final DEFAULT_T_PLANE:[F


# instance fields
.field public currentUnit:I

.field public hint:I

.field public plane:Ljava/nio/FloatBuffer;

.field public textures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ardor3d/renderer/state/record/TextureRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final tmp_matrixBuffer:Ljava/nio/DoubleBuffer;

.field public final tmp_rotation1:Lcom/ardor3d/math/Vector3;

.field public units:[Lcom/ardor3d/renderer/state/record/TextureUnitRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->DEFAULT_S_PLANE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->DEFAULT_T_PLANE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->DEFAULT_R_PLANE:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->DEFAULT_Q_PLANE:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->hint:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->currentUnit:I

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->tmp_rotation1:Lcom/ardor3d/math/Vector3;

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->tmp_matrixBuffer:Ljava/nio/DoubleBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->textures:Ljava/util/HashMap;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->units:[Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->units:[Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    invoke-direct {v2}, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getTextureRecord(ILcom/ardor3d/image/Texture$Type;)Lcom/ardor3d/renderer/state/record/TextureRecord;
    .locals 1

    iget-object p2, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->textures:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ardor3d/renderer/state/record/TextureRecord;

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/renderer/state/record/TextureRecord;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/record/TextureRecord;-><init>()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->textures:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public invalidate()V
    .locals 3

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->currentUnit:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->hint:I

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->textures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/record/TextureRecord;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/record/TextureRecord;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->units:[Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public prepPlane(Lcom/ardor3d/math/type/ReadOnlyVector4;[F)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getXf()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getYf()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZf()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getWf()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_0
    iget-object p1, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->plane:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public removeTextureRecord(I)V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->textures:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->units:[Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget v2, v1, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->boundTexture:I

    if-ne v2, p1, :cond_0

    const/4 v2, -0x1

    iput v2, v1, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->boundTexture:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public validate()V
    .locals 3

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->validate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->textures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/record/TextureRecord;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/record/StateRecord;->validate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;->units:[Lcom/ardor3d/renderer/state/record/TextureUnitRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/record/StateRecord;->validate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
