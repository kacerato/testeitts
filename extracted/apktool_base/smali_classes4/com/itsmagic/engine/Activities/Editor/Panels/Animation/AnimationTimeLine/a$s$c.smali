.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    return-void
.end method
