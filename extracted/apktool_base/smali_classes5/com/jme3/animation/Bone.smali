.class public final Lcom/jme3/animation/Bone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SAVABLE_VERSION:I = 0x2


# instance fields
.field private attachNode:Lcom/jme3/scene/Node;

.field private bindPos:Lcom/jme3/math/Vector3f;

.field private bindRot:Lcom/jme3/math/Quaternion;

.field private bindScale:Lcom/jme3/math/Vector3f;

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation
.end field

.field private transient currentWeightSum:F

.field private localPos:Lcom/jme3/math/Vector3f;

.field private localRot:Lcom/jme3/math/Quaternion;

.field private localScale:Lcom/jme3/math/Vector3f;

.field private modelBindInversePos:Lcom/jme3/math/Vector3f;

.field private modelBindInverseRot:Lcom/jme3/math/Quaternion;

.field private modelBindInverseScale:Lcom/jme3/math/Vector3f;

.field private modelPos:Lcom/jme3/math/Vector3f;

.field private modelRot:Lcom/jme3/math/Quaternion;

.field private modelScale:Lcom/jme3/math/Vector3f;

.field private name:Ljava/lang/String;

.field private parent:Lcom/jme3/animation/Bone;

.field private targetGeometry:Lcom/jme3/scene/Geometry;

.field private tmpTransform:Lcom/jme3/math/Transform;

.field private userControl:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    .line 43
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    .line 44
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    .line 45
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    .line 46
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    .line 47
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    .line 48
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    .line 49
    iput v0, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Bone;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    .line 24
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    .line 25
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    .line 26
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    .line 27
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    .line 28
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    .line 29
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    .line 30
    iput v0, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    .line 31
    iget-object v0, p1, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    .line 32
    iget-boolean v0, p1, Lcom/jme3/animation/Bone;->userControl:Z

    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    .line 33
    iget-object v0, p1, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    .line 34
    iget-object v0, p1, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    .line 35
    iget-object v0, p1, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    .line 36
    iget-object v0, p1, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    .line 37
    iget-object v0, p1, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    .line 38
    iget-object p1, p1, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    .line 5
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    .line 6
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    .line 9
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    .line 10
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    .line 13
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    .line 14
    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    .line 15
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    .line 16
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    .line 17
    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    .line 18
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v2, 0x2d

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bone\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/Bone;

    add-int/lit8 v3, p1, 0x1

    .line 5
    invoke-direct {v2, v3}, Lcom/jme3/animation/Bone;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateAttachNode()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/math/Transform;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    iget-object v5, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v3, v4, v5}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V

    :goto_0
    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/jme3/animation/Bone;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    return-void
.end method

.method public blendAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;F)V
    .locals 6

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p4, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_5

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v4, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v5, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, p4}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v4, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v4, p4}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v3, p4}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    :cond_4
    iput v2, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_6
    iput p4, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    :goto_1
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/Bone;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Node;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Geometry;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    return-void
.end method

.method public getAttachmentsNode(ILcom/jme3/util/SafeArrayList;)Lcom/jme3/scene/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Geometry;",
            ">;)",
            "Lcom/jme3/scene/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Mesh;->isAnimatedByBone(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    :cond_1
    iget-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    if-nez p1, :cond_2

    new-instance p1, Lcom/jme3/scene/Node;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_attachnode"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    const-string p2, "AttachedBone"

    invoke-virtual {p1, p2, p0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    new-instance p2, Lcom/jme3/material/MatParamOverride;

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v2, "NumberOfBones"

    invoke-direct {p2, v1, v2, v0}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    :cond_2
    iget-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    return-object p1
.end method

.method public getBindInverseTransform()Lcom/jme3/math/Transform;
    .locals 2

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public getBindPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getBindRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getBindScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCombinedTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public getLocalPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getLocalRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getLocalScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getModelBindInversePosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getModelBindInverseRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getModelBindInverseScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getModelBindInverseTransform()Lcom/jme3/math/Transform;
    .locals 2

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    :cond_0
    return-object v0
.end method

.method public getModelSpacePosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getModelSpaceRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getModelSpaceScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, p4}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p4

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p4, v1, p3}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p5}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p2

    invoke-virtual {p1, p3, p4, p2}, Lcom/jme3/math/Matrix4f;->setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public getParent()Lcom/jme3/animation/Bone;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    return-object v0
.end method

.method public getWorldBindInversePosition()Lcom/jme3/math/Vector3f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getWorldBindInverseRotation()Lcom/jme3/math/Quaternion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getWorldBindInverseScale()Lcom/jme3/math/Vector3f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getWorldBindPosition()Lcom/jme3/math/Vector3f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getWorldBindRotation()Lcom/jme3/math/Quaternion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getWorldBindScale()Lcom/jme3/math/Vector3f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public hasUserControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    const-class v0, Lcom/jme3/animation/Bone;

    invoke-interface {p1, v0}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v0

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v2, :cond_0

    const-string v0, "initialPos"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    const-string v0, "initialRot"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "initialScale"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    const-string v0, "bindPos"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    const-string v0, "bindRot"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "bindScale"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    :goto_0
    const-string v0, "attachNode"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    const-string v0, "targetGeometry"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const-string v0, "children"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    invoke-virtual {p0, v1}, Lcom/jme3/animation/Bone;->addChild(Lcom/jme3/animation/Bone;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    return-void
.end method

.method public setAttachmentsNode(Lcom/jme3/scene/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    return-void
.end method

.method public setBindTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    return-void
.end method

.method public setBindingPose()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelBindInverseScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->setBindingPose()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLocalRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "User control must be on bone to allow user transforms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocalScale(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "User control must be on bone to allow user transforms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocalTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "User control must be on bone to allow user transforms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/animation/Bone;->userControl:Z

    return-void
.end method

.method public setUserTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call setUserControl(true) in order to setUserTransform to work"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserTransformsInModelSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call setUserControl(true) in order to setUserTransformsInModelSpace to work"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/jme3/animation/Bone;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->updateModelTransforms()V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateModelTransforms()V
    .locals 4

    iget v0, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_0

    iput v3, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    goto :goto_1

    :cond_0
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v2, v1}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, v1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, v1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    :goto_0
    iput v3, p0, Lcom/jme3/animation/Bone;->currentWeightSum:F

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v0, v0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v0, v0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v1, v1, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v1, v1, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/animation/Bone;->modelScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_2
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/jme3/animation/Bone;->updateAttachNode()V

    :cond_4
    return-void
.end method

.method public final updateWorldVectors()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->updateModelTransforms()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    const-string v1, "attachNode"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->targetGeometry:Lcom/jme3/scene/Geometry;

    const-string v1, "targetGeometry"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindPos:Lcom/jme3/math/Vector3f;

    const-string v1, "bindPos"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindRot:Lcom/jme3/math/Quaternion;

    const-string v1, "bindRot"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->bindScale:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v3, "bindScale"

    invoke-interface {p1, v0, v3, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    const-string v1, "children"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
