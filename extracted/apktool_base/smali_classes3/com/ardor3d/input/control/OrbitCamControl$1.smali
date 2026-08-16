.class Lcom/ardor3d/input/control/OrbitCamControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/logical/TriggerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/input/control/OrbitCamControl;->setupMouseTriggers(Lcom/ardor3d/input/logical/LogicalLayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private firstPing:Z

.field final synthetic this$0:Lcom/ardor3d/input/control/OrbitCamControl;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/control/OrbitCamControl;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->this$0:Lcom/ardor3d/input/control/OrbitCamControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->firstPing:Z

    return-void
.end method


# virtual methods
.method public perform(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V
    .locals 4

    invoke-virtual {p2}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDx()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDy()I

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    iget-boolean p2, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->firstPing:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->this$0:Lcom/ardor3d/input/control/OrbitCamControl;

    iget-wide p3, p2, Lcom/ardor3d/input/control/OrbitCamControl;->_xSpeed:D

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDx()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr p3, v0

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->this$0:Lcom/ardor3d/input/control/OrbitCamControl;

    iget-wide v0, v0, Lcom/ardor3d/input/control/OrbitCamControl;->_ySpeed:D

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDy()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {p2, p3, p4, v0, v1}, Lcom/ardor3d/input/control/OrbitCamControl;->move(DD)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->firstPing:Z

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDwheel()I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl$1;->this$0:Lcom/ardor3d/input/control/OrbitCamControl;

    iget-wide p3, p2, Lcom/ardor3d/input/control/OrbitCamControl;->_zoomSpeed:D

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDwheel()I

    move-result p1

    int-to-double v0, p1

    mul-double/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Lcom/ardor3d/input/control/OrbitCamControl;->zoom(D)V

    :cond_3
    return-void
.end method
