.class Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$ArmatureDebuggerLink;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArmatureDebuggerLink"
.end annotation


# instance fields
.field private final target:Lcom/jme3/scene/Spatial;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Spatial;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$ArmatureDebuggerLink;->target:Lcom/jme3/scene/Spatial;

    return-void
.end method


# virtual methods
.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$ArmatureDebuggerLink;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    return-void
.end method
