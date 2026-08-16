.class Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;
.super Lcom/jme3/anim/tween/AbstractTween;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/tween/action/BlendableAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionTween"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/anim/tween/action/BlendableAction;


# direct methods
.method public constructor <init>(Lcom/jme3/anim/tween/action/BlendableAction;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;->this$0:Lcom/jme3/anim/tween/action/BlendableAction;

    invoke-direct {p0, p2, p3}, Lcom/jme3/anim/tween/AbstractTween;-><init>(D)V

    return-void
.end method


# virtual methods
.method public doInterpolate(D)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;->this$0:Lcom/jme3/anim/tween/action/BlendableAction;

    invoke-static {v0}, Lcom/jme3/anim/tween/action/BlendableAction;->access$100(Lcom/jme3/anim/tween/action/BlendableAction;)D

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {v0, p1}, Lcom/jme3/anim/tween/action/BlendableAction;->access$002(Lcom/jme3/anim/tween/action/BlendableAction;F)F

    return-void
.end method
