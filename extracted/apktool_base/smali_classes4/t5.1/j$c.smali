.class public Lt5/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/j;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroid/widget/ImageView;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

.field public final synthetic k:Lt5/j;


# direct methods
.method public constructor <init>(Lt5/j;Landroid/widget/ImageView;IILcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$img",
            "val$totalSize",
            "val$edgeMarginPx",
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt5/j$c;->k:Lt5/j;

    iput-object p2, p0, Lt5/j$c;->g:Landroid/widget/ImageView;

    iput p3, p0, Lt5/j$c;->h:I

    iput p4, p0, Lt5/j$c;->i:I

    iput-object p5, p0, Lt5/j$c;->j:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget p2, p0, Lt5/j$c;->b:F

    sub-float/2addr p1, p2

    iget p2, p0, Lt5/j$c;->c:F

    add-float/2addr p2, p1

    iget p1, p0, Lt5/j$c;->h:I

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-boolean v0, p0, Lt5/j$c;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lt5/j$c;->i:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lt5/j$c;->f:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lt5/j$c;->d:F

    iget v0, p0, Lt5/j$c;->i:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_0
    iget p1, p0, Lt5/j$c;->h:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float p1, p2, p1

    iget-object v0, p0, Lt5/j$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lt5/j$c;->g:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lt5/j$c;->j:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->f(F)V

    iget-object p1, p0, Lt5/j$c;->k:Lt5/j;

    invoke-static {p1}, Lt5/j;->u1(Lt5/j;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lt5/j$c;->j:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lt5/j$c;->k:Lt5/j;

    invoke-static {p1}, Lt5/j;->v1(Lt5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V

    iget-object p1, p0, Lt5/j$c;->k:Lt5/j;

    invoke-static {p1}, Lt5/j;->w1(Lt5/j;)V

    return v1

    :cond_3
    iget-object p1, p0, Lt5/j$c;->k:Lt5/j;

    iget-object p2, p0, Lt5/j$c;->j:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-static {p1, p2}, Lt5/j;->x1(Lt5/j;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    new-instance p1, Lt5/j$c$a;

    invoke-direct {p1, p0}, Lt5/j$c$a;-><init>(Lt5/j$c;)V

    invoke-static {p1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lt5/j$c;->b:F

    iget-object p1, p0, Lt5/j$c;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    iput p1, p0, Lt5/j$c;->c:F

    iget p2, p0, Lt5/j$c;->h:I

    int-to-float p2, p2

    iput p2, p0, Lt5/j$c;->d:F

    iget v2, p0, Lt5/j$c;->i:I

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lt5/j$c;->e:Z

    int-to-float v2, v2

    sub-float/2addr p2, v2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lt5/j$c;->f:Z

    return v1
.end method
