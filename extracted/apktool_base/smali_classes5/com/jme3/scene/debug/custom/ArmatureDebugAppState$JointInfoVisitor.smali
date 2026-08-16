.class Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;
.super Lcom/jme3/scene/SceneGraphVisitorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JointInfoVisitor"
.end annotation


# instance fields
.field private final armature:Lcom/jme3/anim/Armature;

.field private final deformingJoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jme3/anim/Armature;)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/SceneGraphVisitorAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->deformingJoints:Ljava/util/List;

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->armature:Lcom/jme3/anim/Armature;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->deformingJoints:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public visit(Lcom/jme3/scene/Geometry;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v0}, Lcom/jme3/anim/Armature;->getJointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/Joint;

    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v2, v1}, Lcom/jme3/anim/Armature;->getJointIndex(Lcom/jme3/anim/Joint;)I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Mesh;->isAnimatedByJoint(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->deformingJoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
