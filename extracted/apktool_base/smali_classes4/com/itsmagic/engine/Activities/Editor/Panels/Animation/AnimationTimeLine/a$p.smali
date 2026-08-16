.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LF7/l;->C(Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->k()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->L1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d3()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v2

    invoke-virtual {v2}, LF7/l;->k()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v2

    invoke-virtual {v2, v0}, LF7/l;->j(I)LF7/i;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, v2}, LF7/l;->D(LF7/i;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->k()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, v1}, LF7/l;->j(I)LF7/i;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;

    move-result-object v1

    invoke-virtual {v1, v0}, LF7/l;->D(LF7/i;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
