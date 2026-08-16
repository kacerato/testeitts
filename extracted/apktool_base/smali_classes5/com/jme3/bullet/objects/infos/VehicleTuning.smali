.class public Lcom/jme3/bullet/objects/infos/VehicleTuning;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagFrictionSlip:Ljava/lang/String; = "frictionSlip"

.field private static final tagMaxSuspensionForce:Ljava/lang/String; = "maxSuspensionForce"

.field private static final tagMaxSuspensionTravelCm:Ljava/lang/String; = "maxSuspensionTravelCm"

.field private static final tagSuspensionStiffness:Ljava/lang/String; = "suspensionStiffness"

.field private static final tagWheelsDampingCompression:Ljava/lang/String; = "wheelsDampingCompression"

.field private static final tagWheelsDampingRelaxation:Ljava/lang/String; = "wheelsDampingRelaxation"


# instance fields
.field private frictionSlip:F

.field private maxSuspensionForce:F

.field private maxSuspensionTravelCm:F

.field private suspensionCompression:F

.field private suspensionDamping:F

.field private suspensionStiffness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/high16 v0, 0x41280000    # 10.5f

    iput v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->frictionSlip:F

    const v0, 0x45bb8000    # 6000.0f

    iput v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionForce:F

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionTravelCm:F

    const v0, 0x3f547ae1    # 0.83f

    iput v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionCompression:F

    const v0, 0x3f6147ae    # 0.88f

    iput v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionDamping:F

    const v0, 0x40bc28f6    # 5.88f

    iput v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionStiffness:F

    invoke-direct {p0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->create()V

    return-void
.end method

.method private create()V
    .locals 3

    invoke-static {}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->createNative()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    iget v2, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->frictionSlip:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setFrictionSlip(JF)V

    iget v2, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionForce:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionForce(JF)V

    iget v2, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionTravelCm:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionTravelCm(JF)V

    iget v2, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionCompression:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionCompression(JF)V

    iget v2, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionDamping:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionDamping(JF)V

    iget v2, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionStiffness:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionStiffness(JF)V

    return-void
.end method

.method private static native createNative()J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->finalizeNative(J)V

    return-void
.end method

.method private static native setFrictionSlip(JF)V
.end method

.method private static native setMaxSuspensionForce(JF)V
.end method

.method private static native setMaxSuspensionTravelCm(JF)V
.end method

.method private static native setSuspensionCompression(JF)V
.end method

.method private static native setSuspensionDamping(JF)V
.end method

.method private static native setSuspensionStiffness(JF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->create()V

    return-void
.end method

.method public getFrictionSlip()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->frictionSlip:F

    return v0
.end method

.method public getMaxSuspensionForce()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionForce:F

    return v0
.end method

.method public getMaxSuspensionTravelCm()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionTravelCm:F

    return v0
.end method

.method public getSuspensionCompression()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionCompression:F

    return v0
.end method

.method public getSuspensionDamping()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionDamping:F

    return v0
.end method

.method public getSuspensionStiffness()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionStiffness:F

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/objects/infos/VehicleTuning;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->jmeClone()Lcom/jme3/bullet/objects/infos/VehicleTuning;

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

    const-string v0, "suspensionStiffness"

    const v1, 0x40bc28f6    # 5.88f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionStiffness(F)V

    const-string v0, "wheelsDampingRelaxation"

    const v1, 0x3f6147ae    # 0.88f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionDamping(F)V

    const-string v0, "wheelsDampingCompression"

    const v1, 0x3f547ae1    # 0.83f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionCompression(F)V

    const-string v0, "frictionSlip"

    const/high16 v1, 0x41280000    # 10.5f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setFrictionSlip(F)V

    const-string v0, "maxSuspensionTravelCm"

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionTravelCm(F)V

    const-string v0, "maxSuspensionForce"

    const v1, 0x45bb8000    # 6000.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionForce(F)V

    return-void
.end method

.method public setFrictionSlip(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->frictionSlip:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setFrictionSlip(JF)V

    return-void
.end method

.method public setMaxSuspensionForce(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionForce:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionForce(JF)V

    return-void
.end method

.method public setMaxSuspensionTravelCm(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionTravelCm:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionTravelCm(JF)V

    return-void
.end method

.method public setSuspensionCompression(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionCompression:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionCompression(JF)V

    return-void
.end method

.method public setSuspensionDamping(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionDamping:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionDamping(JF)V

    return-void
.end method

.method public setSuspensionStiffness(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionStiffness:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionStiffness(JF)V

    return-void
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

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionStiffness:F

    const-string v1, "suspensionStiffness"

    const v2, 0x40bc28f6    # 5.88f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionDamping:F

    const-string v1, "wheelsDampingRelaxation"

    const v2, 0x3f6147ae    # 0.88f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->suspensionCompression:F

    const-string v1, "wheelsDampingCompression"

    const v2, 0x3f547ae1    # 0.83f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->frictionSlip:F

    const-string v1, "frictionSlip"

    const/high16 v2, 0x41280000    # 10.5f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionTravelCm:F

    const-string v1, "maxSuspensionTravelCm"

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/VehicleTuning;->maxSuspensionForce:F

    const-string v1, "maxSuspensionForce"

    const v2, 0x45bb8000    # 6000.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
