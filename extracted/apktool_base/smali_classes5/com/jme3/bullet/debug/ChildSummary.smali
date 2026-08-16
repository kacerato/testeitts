.class Lcom/jme3/bullet/debug/ChildSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private isValid:Z

.field private margin:F

.field private final offset:Lcom/jme3/math/Vector3f;

.field private final rotation:Lcom/jme3/math/Quaternion;

.field private final scale:Lcom/jme3/math/Vector3f;

.field private shapeId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/ChildSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/ChildSummary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->rotation:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->offset:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->scale:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    check-cast p1, Lcom/jme3/bullet/debug/ChildSummary;

    iget-boolean v2, p0, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    if-nez v2, :cond_1

    iget-boolean v3, p1, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/jme3/bullet/debug/ChildSummary;->shapeId:J

    iget-wide v4, p1, Lcom/jme3/bullet/debug/ChildSummary;->shapeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/jme3/bullet/debug/ChildSummary;->margin:F

    iget v3, p1, Lcom/jme3/bullet/debug/ChildSummary;->margin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jme3/bullet/debug/ChildSummary;->rotation:Lcom/jme3/math/Quaternion;

    iget-object v3, p1, Lcom/jme3/bullet/debug/ChildSummary;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jme3/bullet/debug/ChildSummary;->offset:Lcom/jme3/math/Vector3f;

    iget-object v3, p1, Lcom/jme3/bullet/debug/ChildSummary;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jme3/bullet/debug/ChildSummary;->scale:Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/bullet/debug/ChildSummary;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->shapeId:J

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1e5

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->margin:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget-object v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget-object v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x61

    iget-object v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    return v0
.end method

.method public update(Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v1

    iput v1, p0, Lcom/jme3/bullet/debug/ChildSummary;->margin:F

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jme3/bullet/debug/ChildSummary;->shapeId:J

    iget-object v1, p0, Lcom/jme3/bullet/debug/ChildSummary;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/debug/ChildSummary;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/debug/ChildSummary;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/debug/ChildSummary;->isValid:Z

    :goto_0
    return-void
.end method
