.class Lcom/ardor3d/input/control/FirstPersonControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/logical/TriggerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/input/control/FirstPersonControl;->setupMouseTriggers(Lcom/ardor3d/input/logical/LogicalLayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private firstPing:Z

.field final synthetic this$0:Lcom/ardor3d/input/control/FirstPersonControl;

.field final synthetic val$control:Lcom/ardor3d/input/control/FirstPersonControl;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/control/FirstPersonControl;Lcom/ardor3d/input/control/FirstPersonControl;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/control/FirstPersonControl$1;->this$0:Lcom/ardor3d/input/control/FirstPersonControl;

    iput-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl$1;->val$control:Lcom/ardor3d/input/control/FirstPersonControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/input/control/FirstPersonControl$1;->firstPing:Z

    return-void
.end method


# virtual methods
.method public perform(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V
    .locals 6

    invoke-virtual {p2}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/input/MouseState;->getDx()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/ardor3d/input/MouseState;->getDy()I

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    iget-boolean p3, p0, Lcom/ardor3d/input/control/FirstPersonControl$1;->firstPing:Z

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl$1;->val$control:Lcom/ardor3d/input/control/FirstPersonControl;

    invoke-interface {p1}, Lcom/ardor3d/framework/Canvas;->getCanvasRenderer()Lcom/ardor3d/framework/CanvasRenderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/ardor3d/framework/CanvasRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ardor3d/input/MouseState;->getDx()I

    move-result p1

    neg-int p1, p1

    int-to-double v2, p1

    invoke-virtual {p2}, Lcom/ardor3d/input/MouseState;->getDy()I

    move-result p1

    neg-int p1, p1

    int-to-double v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/input/control/FirstPersonControl;->rotate(Lcom/ardor3d/renderer/Camera;DD)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/input/control/FirstPersonControl$1;->firstPing:Z

    :cond_2
    :goto_0
    return-void
.end method
