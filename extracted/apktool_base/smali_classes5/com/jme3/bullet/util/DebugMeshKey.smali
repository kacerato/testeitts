.class Lcom/jme3/bullet/util/DebugMeshKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final margin:F

.field private final normals:Lif/j;

.field private final resolution:I

.field private final scale:Lcom/jme3/math/Vector3f;

.field private final shapeId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/util/DebugMeshKey;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/DebugMeshKey;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lif/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->normals:Lif/j;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result p2

    iput p2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->margin:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isConvex()Z

    move-result p2

    if-eqz p2, :cond_0

    iput p3, p0, Lcom/jme3/bullet/util/DebugMeshKey;->resolution:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->resolution:I

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId:J

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/util/DebugMeshKey;->scale:Lcom/jme3/math/Vector3f;

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

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    check-cast p1, Lcom/jme3/bullet/util/DebugMeshKey;

    iget-wide v2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId:J

    iget-wide v4, p1, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->scale:Lcom/jme3/math/Vector3f;

    iget-object v3, p1, Lcom/jme3/bullet/util/DebugMeshKey;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->margin:F

    iget v3, p1, Lcom/jme3/bullet/util/DebugMeshKey;->margin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->normals:Lif/j;

    iget-object v3, p1, Lcom/jme3/bullet/util/DebugMeshKey;->normals:Lif/j;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->resolution:I

    iget p1, p1, Lcom/jme3/bullet/util/DebugMeshKey;->resolution:I

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId:J

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshKey;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/jme3/bullet/util/DebugMeshKey;->margin:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/jme3/bullet/util/DebugMeshKey;->resolution:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshKey;->normals:Lif/j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public shapeId()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/util/DebugMeshKey;->scale:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/bullet/util/DebugMeshKey;->margin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/jme3/bullet/util/DebugMeshKey;->resolution:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/util/DebugMeshKey;->normals:Lif/j;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "shape=%x scale=%s margin=%f res=%d normals=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
