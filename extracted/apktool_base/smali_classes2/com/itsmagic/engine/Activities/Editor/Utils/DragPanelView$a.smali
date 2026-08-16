.class public Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$floatingPanelArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)Lm4/a;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lrc/a;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/b;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    new-instance v1, Lm4/a;

    invoke-direct {v1}, Lm4/a;-><init>()V

    invoke-static {p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;Lm4/a;)Lm4/a;

    invoke-virtual {p1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int p2, p2

    invoke-virtual {p1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)Lm4/a;

    move-result-object v1

    iput p2, v1, Lm4/a;->a:I

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)Lm4/a;

    move-result-object p2

    iput p1, p2, Lm4/a;->b:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)Lm4/a;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->n1()F

    move-result p2

    iput p2, p1, Lm4/a;->c:F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)Lm4/a;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o1()F

    move-result p2

    iput p2, p1, Lm4/a;->d:F

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;Lm4/a;)Lm4/a;

    :cond_2
    :goto_0
    return v0
.end method
