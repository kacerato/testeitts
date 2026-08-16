.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->C1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;I)I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->P1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;I)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->A1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->A1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->J1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LE5/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->J1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LE5/g;

    move-result-object p1

    invoke-virtual {p1}, LE5/g;->h()V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->z1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V

    return-void
.end method

.method public b(Lv4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFrame"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->K1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lv4/b;)V

    return-void
.end method
