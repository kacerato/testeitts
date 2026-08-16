.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->h(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    return-void
.end method
