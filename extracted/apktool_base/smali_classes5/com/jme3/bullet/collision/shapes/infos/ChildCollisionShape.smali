.class public Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagOffset:Ljava/lang/String; = "location"

.field private static final tagRotation:Ljava/lang/String; = "rotation"

.field private static final tagShape:Ljava/lang/String; = "shape"


# instance fields
.field private offset:Lcom/jme3/math/Vector3f;

.field private rotation:Lcom/jme3/math/Matrix3f;

.field private shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "shape"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 11
    instance-of v0, p2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    .line 13
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    .line 14
    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CompoundCollisionShapes cannot be child shapes!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "shape"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    instance-of v0, p3, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    .line 6
    invoke-virtual {p2}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    .line 7
    iput-object p3, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CompoundCollisionShapes cannot be child shapes!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void
.end method

.method public copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public copyRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    return-object p1
.end method

.method public copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public copyTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->jmeClone()Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "location"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    const-string v1, "rotation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(F)V

    const-string v1, "shape"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void
.end method

.method public setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    return-void
.end method

.method public split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 9

    const-string v0, "parent triangle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    instance-of v3, v2, Lcom/jme3/bullet/collision/shapes/EmptyShape;

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    check-cast v2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {v4}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v4, p1, v3}, Ljf/f;->T(Lcom/jme3/math/Transform;Lcom/jme3/math/Triangle;Lcom/jme3/math/Triangle;)Lcom/jme3/math/Triangle;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p1

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-static {v2, v4, v2}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    new-instance v7, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iget-object v8, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    invoke-direct {v7, v5, v8, v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    aput-object v7, v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->offset:Lcom/jme3/math/Vector3f;

    const-string v1, "location"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->rotation:Lcom/jme3/math/Matrix3f;

    const-string v1, "rotation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->shape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const-string v1, "shape"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
