.class Lcom/ardor3d/input/control/FirstPersonControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/logical/TriggerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/input/control/FirstPersonControl;->setupKeyboardTriggers(Lcom/ardor3d/input/logical/LogicalLayer;)Lw2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/input/control/FirstPersonControl;

.field final synthetic val$control:Lcom/ardor3d/input/control/FirstPersonControl;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/control/FirstPersonControl;Lcom/ardor3d/input/control/FirstPersonControl;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/control/FirstPersonControl$3;->this$0:Lcom/ardor3d/input/control/FirstPersonControl;

    iput-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl$3;->val$control:Lcom/ardor3d/input/control/FirstPersonControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl$3;->val$control:Lcom/ardor3d/input/control/FirstPersonControl;

    invoke-interface {p1}, Lcom/ardor3d/framework/Canvas;->getCanvasRenderer()Lcom/ardor3d/framework/CanvasRenderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/ardor3d/framework/CanvasRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/input/InputState;->getKeyboardState()Lcom/ardor3d/input/KeyboardState;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/input/control/FirstPersonControl;->move(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/input/KeyboardState;D)V

    return-void
.end method
