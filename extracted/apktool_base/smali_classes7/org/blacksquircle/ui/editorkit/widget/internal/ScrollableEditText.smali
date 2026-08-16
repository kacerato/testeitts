.class public abstract Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;
.super Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private horizontallyScrollable:Z

.field private final maximumVelocity:F

.field private final scrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textScroller:Landroid/widget/OverScroller;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private velocityTracker:Landroid/view/VelocityTracker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->scrollListeners:Ljava/util/List;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->maximumVelocity:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7f030046

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private final recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method


# virtual methods
.method public final abortFling()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final addOnScrollChangedListener(Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->scrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public final isHorizontallyScrollableCompat()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->horizontallyScrollable:Z

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->scrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->scrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-interface {p2, p3, p4, v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LF6/c;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->initVelocityTrackerIfNotExists()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    const/16 v2, 0x3e8

    iget v3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->maximumVelocity:F

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_2
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->isHorizontallyScrollableCompat()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gez v3, :cond_5

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    if-eqz v2, :cond_9

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->textScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    neg-int v7, v0

    neg-int v8, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int v10, v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int v12, v0, v2

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->recycleVelocityTracker()V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->abortFling()V

    :cond_9
    :goto_5
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final removeOnScrollChangedListener(Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->scrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->horizontallyScrollable:Z

    return-void
.end method
