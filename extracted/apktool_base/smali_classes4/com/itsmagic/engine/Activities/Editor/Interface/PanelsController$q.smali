.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->h0(LK8/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo4/e;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lo4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$panelsBundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->b:Lo4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->h(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;I)I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/a;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Li4/a;->a:I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/a;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Li4/a;->b:I

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;)V

    invoke-static {v0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void
.end method
