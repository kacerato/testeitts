.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->E0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "dragEvent"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/app/Activity;

    move-result-object v2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->f(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/content/Context;

    move-result-object v3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/a;

    move-result-object v9

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/e;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
