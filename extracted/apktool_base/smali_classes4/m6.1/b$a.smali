.class public Lm6/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm6/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lm6/b;


# direct methods
.method public constructor <init>(Lm6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2}, Lm6/b;->p1(Lm6/b;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0xfa

    cmp-long p2, v6, v8

    if-gtz p2, :cond_0

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2}, Lm6/b;->r1(Lm6/b;)F

    move-result p2

    sub-float p2, p1, p2

    iget-object v6, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {v6}, Lm6/b;->t1(Lm6/b;)F

    move-result v6

    sub-float v6, v3, v6

    mul-float/2addr p2, p2

    mul-float/2addr v6, v6

    add-float/2addr p2, v6

    const/high16 v6, 0x44c80000    # 1600.0f

    cmpg-float p2, p2, v6

    if-gtz p2, :cond_0

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1, v2}, Lm6/b;->w1(Lm6/b;Lm4/a;)Lm4/a;

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lm6/b;->q1(Lm6/b;J)J

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1}, Lm6/b;->x1(Lm6/b;)V

    return v1

    :cond_0
    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2, v4, v5}, Lm6/b;->q1(Lm6/b;J)J

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2, p1}, Lm6/b;->s1(Lm6/b;F)F

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1, v3}, Lm6/b;->u1(Lm6/b;F)F

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1}, Lm6/b;->v1(Lm6/b;)Lm4/a;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lrc/a;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/b;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    new-instance v1, Lm4/a;

    invoke-direct {v1}, Lm4/a;-><init>()V

    invoke-static {p2, v1}, Lm6/b;->w1(Lm6/b;Lm4/a;)Lm4/a;

    invoke-virtual {p1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int p2, p2

    invoke-virtual {p1}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    iget-object v1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {v1}, Lm6/b;->v1(Lm6/b;)Lm4/a;

    move-result-object v1

    iput p2, v1, Lm4/a;->a:I

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2}, Lm6/b;->v1(Lm6/b;)Lm4/a;

    move-result-object p2

    iput p1, p2, Lm4/a;->b:I

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1}, Lm6/b;->v1(Lm6/b;)Lm4/a;

    move-result-object p1

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2}, Lm6/b;->y1(Lm6/b;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->n1()F

    move-result p2

    iput p2, p1, Lm4/a;->c:F

    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1}, Lm6/b;->v1(Lm6/b;)Lm4/a;

    move-result-object p1

    iget-object p2, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p2}, Lm6/b;->y1(Lm6/b;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o1()F

    move-result p2

    iput p2, p1, Lm4/a;->d:F

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    :cond_2
    iget-object p1, p0, Lm6/b$a;->b:Lm6/b;

    invoke-static {p1, v2}, Lm6/b;->w1(Lm6/b;Lm4/a;)Lm4/a;

    :cond_3
    :goto_0
    return v0
.end method
