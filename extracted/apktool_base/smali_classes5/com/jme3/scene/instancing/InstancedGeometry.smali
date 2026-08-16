.class public Lcom/jme3/scene/instancing/InstancedGeometry;
.super Lcom/jme3/scene/Geometry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/instancing/InstancedGeometry$DefaultInstanceCullingFunction;
    }
.end annotation


# static fields
.field private static final INSTANCE_SIZE:I = 0x10

.field private static instanceCullingFunction:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/jme3/renderer/Camera;",
            "Lcom/jme3/scene/Geometry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allInstanceData:[Lcom/jme3/scene/VertexBuffer;

.field private cam:Lcom/jme3/renderer/Camera;

.field private firstUnusedIndex:I

.field private geometries:[Lcom/jme3/scene/Geometry;

.field private globalInstanceData:[Lcom/jme3/scene/VertexBuffer;

.field private numVisibleInstances:I

.field private transformInstanceData:Lcom/jme3/scene/VertexBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/scene/instancing/InstancedGeometry$DefaultInstanceCullingFunction;

    invoke-direct {v0}, Lcom/jme3/scene/instancing/InstancedGeometry$DefaultInstanceCullingFunction;-><init>()V

    sput-object v0, Lcom/jme3/scene/instancing/InstancedGeometry;->instanceCullingFunction:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Geometry;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lcom/jme3/scene/Geometry;

    iput-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    .line 4
    iput v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->numVisibleInstances:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->setIgnoreTransform(Z)V

    .line 6
    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/jme3/scene/instancing/InstancedGeometry;->setMaxNumInstances(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    new-array v0, p1, [Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    .line 11
    iput v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->numVisibleInstances:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setIgnoreTransform(Z)V

    .line 13
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->setMaxNumInstances(I)V

    return-void
.end method

.method public static getInstanceCullingFunction()Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Lcom/jme3/renderer/Camera;",
            "Lcom/jme3/scene/Geometry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jme3/scene/instancing/InstancedGeometry;->instanceCullingFunction:Ljava/util/function/BiFunction;

    return-object v0
.end method

.method public static setInstanceCullingFunction(Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/jme3/renderer/Camera;",
            "Lcom/jme3/scene/Geometry;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/jme3/scene/instancing/InstancedGeometry;->instanceCullingFunction:Ljava/util/function/BiFunction;

    return-void
.end method

.method private swap(II)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/jme3/scene/instancing/InstancedNode;->setGeometryStartIndex2(Lcom/jme3/scene/Geometry;I)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object p1, p1, p2

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lcom/jme3/scene/instancing/InstancedNode;->setGeometryStartIndex2(Lcom/jme3/scene/Geometry;I)V

    :cond_1
    return-void
.end method

.method private updateAllInstanceData()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->globalInstanceData:[Lcom/jme3/scene/VertexBuffer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->allInstanceData:[Lcom/jme3/scene/VertexBuffer;

    return-void
.end method

.method private updateInstance(Lcom/jme3/math/Matrix4f;[FILcom/jme3/math/Matrix3f;Lcom/jme3/math/Quaternion;)V
    .locals 1

    invoke-virtual {p1, p4}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {p4}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    invoke-virtual {p5, p4}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    iget p4, p1, Lcom/jme3/math/Matrix4f;->m00:F

    aput p4, p2, p3

    add-int/lit8 p4, p3, 0x1

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m10:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x2

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m20:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x3

    invoke-virtual {p5}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x4

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m01:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x5

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m11:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x6

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m21:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x7

    invoke-virtual {p5}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x8

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m02:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0x9

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m12:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0xa

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m22:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0xb

    invoke-virtual {p5}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v0

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0xc

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m03:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0xd

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m13:F

    aput v0, p2, p4

    add-int/lit8 p4, p3, 0xe

    iget p1, p1, Lcom/jme3/math/Matrix4f;->m23:F

    aput p1, p2, p4

    add-int/lit8 p3, p3, 0xf

    invoke-virtual {p5}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p1

    aput p1, p2, p3

    return-void
.end method


# virtual methods
.method public addInstance(Lcom/jme3/scene/Geometry;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/instancing/InstancedGeometry;->getMaxNumInstances()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jme3/scene/instancing/InstancedGeometry;->setMaxNumInstances(I)V

    :cond_0
    iget v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    aput-object p1, v1, v0

    invoke-static {p1, v0}, Lcom/jme3/scene/instancing/InstancedNode;->setGeometryStartIndex2(Lcom/jme3/scene/Geometry;I)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "geometry cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->cam:Lcom/jme3/renderer/Camera;

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->checkCulling(Lcom/jme3/renderer/Camera;)Z

    move-result p1

    return p1
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->allInstanceData:[Lcom/jme3/scene/VertexBuffer;

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Geometry;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->globalInstanceData:[Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/scene/VertexBuffer;

    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->globalInstanceData:[Lcom/jme3/scene/VertexBuffer;

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/VertexBuffer;

    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->allInstanceData:[Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/scene/VertexBuffer;

    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->allInstanceData:[Lcom/jme3/scene/VertexBuffer;

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    return-void
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deleteInstance(Lcom/jme3/scene/Geometry;)V
    .locals 2

    invoke-static {p1}, Lcom/jme3/scene/instancing/InstancedNode;->getGeometryStartIndex2(Lcom/jme3/scene/Geometry;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/jme3/scene/instancing/InstancedNode;->setGeometryStartIndex2(Lcom/jme3/scene/Geometry;I)V

    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    iget v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    if-gez v0, :cond_0

    :cond_1
    iget p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    return-void
.end method

.method public getAllInstanceData()[Lcom/jme3/scene/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->allInstanceData:[Lcom/jme3/scene/VertexBuffer;

    return-object v0
.end method

.method public getGeometries()[Lcom/jme3/scene/Geometry;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method public getGlobalUserInstanceData()[Lcom/jme3/scene/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->globalInstanceData:[Lcom/jme3/scene/VertexBuffer;

    return-object v0
.end method

.method public getMaxNumInstances()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v0, v0

    return v0
.end method

.method public getNumInstances()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNumVisibleInstances()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->numVisibleInstances:I

    return v0
.end method

.method public getTransformUserInstanceData()Lcom/jme3/scene/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/instancing/InstancedGeometry;->getNumInstances()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "geometries"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object v2, p1, v0

    check-cast v2, Lcom/jme3/scene/Geometry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateAllInstanceData()V

    return-void
.end method

.method public setGlobalUserInstanceData([Lcom/jme3/scene/VertexBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->globalInstanceData:[Lcom/jme3/scene/VertexBuffer;

    invoke-direct {p0}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateAllInstanceData()V

    return-void
.end method

.method public final setMaxNumInstances(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    new-array p1, p1, [Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v0, v0

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->InstanceData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {p1, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->setInstanced(Z)V

    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v3, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v3, v3

    mul-int/2addr v3, v1

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateAllInstanceData()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxNumInstances must be 1 or higher"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransformUserInstanceData(Lcom/jme3/scene/VertexBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    invoke-direct {p0}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateAllInstanceData()V

    return-void
.end method

.method public updateInstances()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateInstances(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public updateInstances(Lcom/jme3/renderer/Camera;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    .line 6
    iget-object v9, v2, Lcom/jme3/util/TempVars;->matrixWrite:[F

    move v10, v1

    .line 7
    :goto_0
    iget v3, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    if-ge v1, v3, :cond_3

    .line 8
    iget-object v4, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object v5, v4, v1

    if-nez v5, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 9
    aget-object v5, v4, v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 10
    invoke-direct {p0, v1, v3}, Lcom/jme3/scene/instancing/InstancedGeometry;->swap(II)V

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    iget v4, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    add-int/lit8 v6, v4, -0x1

    aget-object v3, v3, v6

    if-nez v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 12
    iput v4, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    goto :goto_1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    .line 14
    sget-object v3, Lcom/jme3/scene/instancing/InstancedGeometry;->instanceCullingFunction:Ljava/util/function/BiFunction;

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v3, p1, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getWorldMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v4

    .line 17
    iget-object v7, v2, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    iget-object v8, v2, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/jme3/scene/instancing/InstancedGeometry;->updateInstance(Lcom/jme3/math/Matrix4f;[FILcom/jme3/math/Matrix3f;Lcom/jme3/math/Quaternion;)V

    .line 18
    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    .line 20
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 21
    iget p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    sub-int/2addr p1, v10

    iput p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->numVisibleInstances:I

    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    iget v1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->numVisibleInstances:I

    if-ne p1, v1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->transformInstanceData:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public updateWorldBound()V
    .locals 4

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->firstUnusedIndex:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/bounding/BoundingVolume;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0, v2}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    :cond_3
    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedGeometry;->geometries:[Lcom/jme3/scene/Geometry;

    const-string v1, "geometries"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    return-void
.end method
