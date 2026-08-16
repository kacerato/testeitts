.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$screenArea",
            "val$activity",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->c:Landroid/content/Context;

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

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->p()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->y:I

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->l()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/a;

    move-result-object v9

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Li4/e;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLi4/a;Li4/e;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$p;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
