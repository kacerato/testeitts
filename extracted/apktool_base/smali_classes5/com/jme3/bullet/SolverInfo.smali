.class public Lcom/jme3/bullet/SolverInfo;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/SolverInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/SolverInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const-string v0, "native ID"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method private static native copyAllParameters(JJ)V
.end method

.method private static native getContactErp(J)F
.end method

.method private static native getGlobalCfm(J)F
.end method

.method private static native getJointErp(J)F
.end method

.method private static native getMinBatch(J)I
.end method

.method private static native getMode(J)I
.end method

.method private static native getNumIterations(J)I
.end method

.method private static native getSplitImpulseErp(J)F
.end method

.method private static native getSplitImpulseThreshold(J)F
.end method

.method private static native isSplitImpulseEnabled(J)Z
.end method

.method private static native setContactErp(JF)V
.end method

.method private static native setGlobalCfm(JF)V
.end method

.method private static native setJointErp(JF)V
.end method

.method private static native setMinBatch(JI)V
.end method

.method private static native setMode(JI)V
.end method

.method private static native setNumIterations(JI)V
.end method

.method private static native setSplitImpulseEnabled(JZ)V
.end method

.method private static native setSplitImpulseErp(JF)V
.end method

.method private static native setSplitImpulseThreshold(JF)V
.end method


# virtual methods
.method public contactErp()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getContactErp(J)F

    move-result v0

    return v0
.end method

.method public copyAll(Lcom/jme3/bullet/SolverInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/SolverInfo;->copyAllParameters(JJ)V

    return-void
.end method

.method public globalCfm()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getGlobalCfm(J)F

    move-result v0

    return v0
.end method

.method public isSplitImpulseEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->isSplitImpulseEnabled(J)Z

    move-result v0

    return v0
.end method

.method public jointErp()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getJointErp(J)F

    move-result v0

    return v0
.end method

.method public minBatch()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getMinBatch(J)I

    move-result v0

    return v0
.end method

.method public mode()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getMode(J)I

    move-result v0

    return v0
.end method

.method public numIterations()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getNumIterations(J)I

    move-result v0

    return v0
.end method

.method public setContactErp(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setContactErp(JF)V

    return-void
.end method

.method public setGlobalCfm(F)V
    .locals 2

    .line 1
    const-string v0, "mixing parameter"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setGlobalCfm(JF)V

    return-void
.end method

.method public setJointErp(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setJointErp(JF)V

    return-void
.end method

.method public setMinBatch(I)V
    .locals 2

    .line 1
    const-string v0, "number of constraints"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setMinBatch(JI)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setMode(JI)V

    return-void
.end method

.method public setNumIterations(I)V
    .locals 2

    .line 1
    const-string v0, "number of iterations"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setNumIterations(JI)V

    return-void
.end method

.method public setSplitImpulseEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setSplitImpulseEnabled(JZ)V

    return-void
.end method

.method public setSplitImpulseErp(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setSplitImpulseErp(JF)V

    return-void
.end method

.method public setSplitImpulseThreshold(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SolverInfo;->setSplitImpulseThreshold(JF)V

    return-void
.end method

.method public splitImpulseErp()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getSplitImpulseErp(J)F

    move-result v0

    return v0
.end method

.method public splitImpulseThreshold()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SolverInfo;->getSplitImpulseThreshold(J)F

    move-result v0

    return v0
.end method
