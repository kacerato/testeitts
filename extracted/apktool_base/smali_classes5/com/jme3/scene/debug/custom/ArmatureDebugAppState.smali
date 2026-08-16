.class public Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;,
        Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$ArmatureDebuggerLink;
    }
.end annotation


# static fields
.field public static final CLICK_MAX_DELAY:F = 0.2f

.field private static final PICK_JOINT:Ljava/lang/String; = "ArmatureDebugAppState_PickJoint"

.field private static final TOGGLE_JOINTS:Ljava/lang/String; = "ArmatureDebugAppState_DisplayAllJoints"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final actionListener:Lcom/jme3/input/controls/ActionListener;

.field private final armatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/anim/Armature;",
            "Lcom/jme3/scene/debug/custom/ArmatureDebugger;",
            ">;"
        }
    .end annotation
.end field

.field private cam:Lcom/jme3/renderer/Camera;

.field private clickDelay:F

.field private debugNode:Lcom/jme3/scene/Node;

.field private displayNonDeformingJoints:Z

.field private enableJointInfoLogging:Z

.field private inputManager:Lcom/jme3/input/InputManager;

.field private final selectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lcom/jme3/anim/Joint;",
            ">;>;"
        }
    .end annotation
.end field

.field private showOnTop:Z

.field private vp:Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "ArmaturesDebugNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectionListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->displayNonDeformingJoints:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->showOnTop:Z

    iput-boolean v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->enableJointInfoLogging:Z

    new-instance v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;

    invoke-direct {v0, p0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;-><init>(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->actionListener:Lcom/jme3/input/controls/ActionListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)F
    .locals 0

    iget p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    return p0
.end method

.method public static synthetic access$102(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;F)F
    .locals 0

    iput p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    return p1
.end method

.method public static synthetic access$200(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/renderer/Camera;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->cam:Lcom/jme3/renderer/Camera;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/input/InputManager;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/scene/Node;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Lcom/jme3/anim/Joint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->notifySelectionListeners(Lcom/jme3/anim/Joint;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->displayNonDeformingJoints:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->displayNonDeformingJoints:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->enableJointInfoLogging:Z

    return p0
.end method

.method private collectGeometries(Lcom/jme3/scene/Node;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Node;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    instance-of v1, v0, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-direct {p0, v0, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->collectGeometries(Lcom/jme3/scene/Node;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifySelectionListeners(Lcom/jme3/anim/Joint;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerInput()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v1, Lcom/jme3/input/controls/MouseButtonTrigger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v4, v2

    const-string v1, "ArmatureDebugAppState_PickJoint"

    invoke-virtual {v0, v1, v4}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v5, 0x44

    invoke-direct {v4, v5}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v3, v2

    const-string v2, "ArmatureDebugAppState_DisplayAllJoints"

    invoke-virtual {v0, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->actionListener:Lcom/jme3/input/controls/ActionListener;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method private unregisterInput()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ArmatureDebugAppState_PickJoint"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ArmatureDebugAppState_DisplayAllJoints"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->actionListener:Lcom/jme3/input/controls/ActionListener;

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    return-void
.end method


# virtual methods
.method public addArmatureFrom(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/debug/custom/ArmatureDebugger;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;

    invoke-direct {v0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;-><init>(Lcom/jme3/anim/Armature;)V

    .line 4
    invoke-virtual {p2, v0}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V

    .line 5
    instance-of v1, p2, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    move-object v2, p2

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-direct {p0, v2, v1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->collectGeometries(Lcom/jme3/scene/Node;Ljava/util/List;)V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 10
    :goto_0
    new-instance v2, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ArmatureDebugger"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->access$000(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, p2, p1, v0}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;-><init>(Ljava/lang/String;Lcom/jme3/anim/Armature;Ljava/util/List;)V

    .line 11
    new-instance p2, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$ArmatureDebuggerLink;

    invoke-direct {p2, v1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$ArmatureDebuggerLink;-><init>(Lcom/jme3/scene/Spatial;)V

    invoke-virtual {v2, p2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 12
    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 14
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V

    :cond_2
    return-object v2
.end method

.method public addArmatureFrom(Lcom/jme3/anim/SkinningControl;)Lcom/jme3/scene/debug/custom/ArmatureDebugger;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->addArmatureFrom(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    move-result-object p1

    return-object p1
.end method

.method public addSelectionListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->unregisterInput()V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->removeMainView(Lcom/jme3/renderer/ViewPort;)Z

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    return-void
.end method

.method public clearSelectionListeners()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 4

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->cam:Lcom/jme3/renderer/Camera;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    const-string v1, "ArmatureDebugView"

    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/renderer/RenderManager;->createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    iget-boolean v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->showOnTop:Z

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setClearDepth(Z)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/ViewPort;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->registerInput()V

    return-void
.end method

.method public isJointInfoLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->enableJointInfoLogging:Z

    return v0
.end method

.method public isShowOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->showOnTop:Z

    return v0
.end method

.method public onDisable()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setEnabled(Z)V

    return-void
.end method

.method public onEnable()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setEnabled(Z)V

    return-void
.end method

.method public removeSelectionListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-void
.end method

.method public setJointInfoLoggingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->enableJointInfoLogging:Z

    return-void
.end method

.method public setShowOnTop(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->showOnTop:Z

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/ViewPort;->setClearDepth(Z)V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    return-void
.end method
