.class public Lue/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/MovementMethod;


# instance fields
.field public final a:Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>(Landroid/text/method/MovementMethod;)V
    .locals 0
    .param p1    # Landroid/text/method/MovementMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    return-void
.end method

.method public static a()Lue/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/c;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-direct {v0, v1}, Lue/c;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method

.method public static b(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    const-class v6, Lue/e;

    invoke-interface {p1, v5, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lue/e;

    array-length v5, p1

    if-nez v5, :cond_1

    return v1

    :cond_1
    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lue/e;->g(I)Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v5, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    invoke-virtual {p1}, Lue/e;->e()I

    move-result p1

    rem-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v5, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spanned;

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    array-length p2, p1

    if-lez p2, :cond_2

    aget-object p1, p1, v1

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return v2

    :cond_2
    return v1
.end method

.method public static c(Landroid/text/method/MovementMethod;)Lue/c;
    .locals 1
    .param p0    # Landroid/text/method/MovementMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/c;

    invoke-direct {v0, p0}, Lue/c;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lue/c;->b(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lue/c;->a:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
