.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lu6/l;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->k(J)J

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->o(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;F)F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)F

    move-result v0

    invoke-static {v0}, Lu6/l;->D1(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->k(J)J

    :goto_0
    invoke-static {}, Lu6/l;->A1()V

    invoke-static {}, Lu6/l;->E1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Update UI"

    invoke-static {v0}, Lu6/l;->L1(Ljava/lang/String;)Lu6/e;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->y(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->I(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->J(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v0}, Lu6/l;->J1(Lu6/e;)V

    return-void
.end method
