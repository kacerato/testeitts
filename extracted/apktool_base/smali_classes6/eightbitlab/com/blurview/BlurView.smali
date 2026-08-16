.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "BlurView"


# instance fields
.field public b:LRd/b;

.field public c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, LRd/f;

    invoke-direct {p1}, LRd/f;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, LRd/f;

    invoke-direct {p1}, LRd/f;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, LRd/f;

    invoke-direct {p1}, LRd/f;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    .line 9
    invoke-virtual {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBlurAlgorithm()LRd/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, LRd/p;

    invoke-direct {v0}, LRd/p;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, LRd/q;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LRd/q;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leightbitlab/com/blurview/a$b;->a:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Leightbitlab/com/blurview/a$b;->b:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Leightbitlab/com/blurview/BlurView;->c:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b(Z)LRd/d;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {v0, p1}, LRd/d;->e(Z)LRd/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)LRd/d;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {v0, p1}, LRd/d;->a(Z)LRd/d;

    move-result-object p1

    return-object p1
.end method

.method public d(F)LRd/d;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {v0, p1}, LRd/d;->c(F)LRd/d;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {v0, p1}, LRd/b;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public e(I)LRd/d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Leightbitlab/com/blurview/BlurView;->c:I

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {v0, p1}, LRd/d;->d(I)LRd/d;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/view/ViewGroup;)LRd/d;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x11
    .end annotation

    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->getBlurAlgorithm()LRd/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->g(Landroid/view/ViewGroup;LRd/a;)LRd/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/view/ViewGroup;LRd/a;)LRd/d;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {v0}, LRd/b;->destroy()V

    new-instance v0, LRd/g;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->c:I

    invoke-direct {v0, p0, p1, v1, p2}, LRd/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ILRd/a;)V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Leightbitlab/com/blurview/BlurView;->d:Ljava/lang/String;

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LRd/d;->e(Z)LRd/d;

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LRd/d;->e(Z)LRd/d;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:LRd/b;

    invoke-interface {p1}, LRd/b;->b()V

    return-void
.end method
