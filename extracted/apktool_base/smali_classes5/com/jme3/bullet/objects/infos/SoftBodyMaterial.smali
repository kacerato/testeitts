.class public Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagAngularStiffness:Ljava/lang/String; = "angularStiffness"

.field private static final tagBody:Ljava/lang/String; = "body"

.field private static final tagLinearStiffness:Ljava/lang/String; = "linearStiffness"

.field private static final tagVolumeStiffness:Ljava/lang/String; = "volumeStiffness"


# instance fields
.field private body:Lcom/jme3/bullet/objects/PhysicsSoftBody;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    .line 5
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->getMaterialId(J)J

    move-result-wide v0

    .line 7
    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method private static native getAngularStiffnessFactor(J)F
.end method

.method private static native getLinearStiffnessFactor(J)F
.end method

.method private static native getMaterialId(J)J
.end method

.method private static native getVolumeStiffnessFactor(J)F
.end method

.method private static native setAngularStiffnessFactor(JF)V
.end method

.method private static native setLinearStiffnessFactor(JF)V
.end method

.method private static native setVolumeStiffnessFactor(JF)V
.end method


# virtual methods
.method public angularStiffness()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->getAngularStiffnessFactor(J)F

    move-result v0

    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->getMaterialId(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    check-cast p2, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    invoke-virtual {p2}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->angularStiffness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setAngularStiffness(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->linearStiffness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setLinearStiffness(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->volumeStiffness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setVolumeStiffness(F)V

    return-void
.end method

.method public jmeClone()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->jmeClone()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public linearStiffness()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->getLinearStiffnessFactor(J)F

    move-result v0

    return v0
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

    const-string v0, "body"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->getMaterialId(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    const-string v0, "angularStiffness"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setAngularStiffness(F)V

    const-string v0, "linearStiffness"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setLinearStiffness(F)V

    const-string v0, "volumeStiffness"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setVolumeStiffness(F)V

    return-void
.end method

.method public setAngularStiffness(F)V
    .locals 2

    const-string v0, "stiffness coefficient"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setAngularStiffnessFactor(JF)V

    return-void
.end method

.method public setLinearStiffness(F)V
    .locals 2

    const-string v0, "stiffness coefficient"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setLinearStiffnessFactor(JF)V

    return-void
.end method

.method public setVolumeStiffness(F)V
    .locals 2

    const-string v0, "stiffness coefficient"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->setVolumeStiffnessFactor(JF)V

    return-void
.end method

.method public volumeStiffness()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->getVolumeStiffnessFactor(J)F

    move-result v0

    return v0
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

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const-string v1, "body"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->angularStiffness()F

    move-result v0

    const-string v1, "angularStiffness"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->linearStiffness()F

    move-result v0

    const-string v1, "linearStiffness"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->volumeStiffness()F

    move-result v0

    const-string v1, "volumeStiffness"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
