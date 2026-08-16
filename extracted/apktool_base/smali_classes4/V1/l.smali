.class public final LV1/l;
.super LV1/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "LV1/c;",
        ">",
        "LV1/i;"
    }
.end annotation


# instance fields
.field public s:LV1/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV1/j<",
            "TS;>;"
        }
    .end annotation
.end field

.field public t:LV1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV1/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;LV1/c;LV1/j;LV1/k;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LV1/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LV1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LV1/c;",
            "LV1/j<",
            "TS;>;",
            "LV1/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LV1/i;-><init>(Landroid/content/Context;LV1/c;)V

    invoke-virtual {p0, p3}, LV1/l;->z(LV1/j;)V

    invoke-virtual {p0, p4}, LV1/l;->y(LV1/k;)V

    return-void
.end method

.method public static u(Landroid/content/Context;LV1/g;)LV1/l;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LV1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LV1/g;",
            ")",
            "LV1/l<",
            "LV1/g;",
            ">;"
        }
    .end annotation

    new-instance v0, LV1/l;

    new-instance v1, LV1/d;

    invoke-direct {v1, p1}, LV1/d;-><init>(LV1/g;)V

    new-instance v2, LV1/e;

    invoke-direct {v2, p1}, LV1/e;-><init>(LV1/g;)V

    invoke-direct {v0, p0, p1, v1, v2}, LV1/l;-><init>(Landroid/content/Context;LV1/c;LV1/j;LV1/k;)V

    return-object v0
.end method

.method public static v(Landroid/content/Context;LV1/q;)LV1/l;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LV1/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LV1/q;",
            ")",
            "LV1/l<",
            "LV1/q;",
            ">;"
        }
    .end annotation

    new-instance v0, LV1/l;

    new-instance v1, LV1/m;

    invoke-direct {v1, p1}, LV1/m;-><init>(LV1/q;)V

    iget v2, p1, LV1/q;->g:I

    if-nez v2, :cond_0

    new-instance v2, LV1/n;

    invoke-direct {v2, p1}, LV1/n;-><init>(LV1/q;)V

    goto :goto_0

    :cond_0
    new-instance v2, LV1/o;

    invoke-direct {v2, p0, p1}, LV1/o;-><init>(Landroid/content/Context;LV1/q;)V

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, LV1/l;-><init>(Landroid/content/Context;LV1/c;LV1/j;LV1/k;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    invoke-super {p0}, LV1/i;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, LV1/l;->s:LV1/j;

    invoke-virtual {p0}, LV1/i;->g()F

    move-result v1

    invoke-virtual {v0, p1, v1}, LV1/j;->g(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, LV1/l;->s:LV1/j;

    iget-object v1, p0, LV1/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, LV1/j;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LV1/l;->t:LV1/k;

    iget-object v2, v1, LV1/k;->c:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v4, p0, LV1/l;->s:LV1/j;

    iget-object v6, p0, LV1/i;->n:Landroid/graphics/Paint;

    iget-object v1, v1, LV1/k;->b:[F

    mul-int/lit8 v3, v0, 0x2

    aget v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v1, v3

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, LV1/j;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, LV1/i;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, LV1/l;->s:LV1/j;

    invoke-virtual {v0}, LV1/j;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, LV1/l;->s:LV1/j;

    invoke-virtual {v0}, LV1/j;->e()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, LV1/i;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Z
    .locals 1

    invoke-super {p0}, LV1/i;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    invoke-super {p0}, LV1/i;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, LV1/i;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Z
    .locals 1

    invoke-super {p0}, LV1/i;->k()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LV1/i;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic s(ZZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, LV1/i;->s(ZZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, LV1/i;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, LV1/i;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, LV1/i;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, LV1/i;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    invoke-super {p0}, LV1/i;->stop()V

    return-void
.end method

.method public t(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, LV1/i;->t(ZZZ)Z

    move-result p2

    invoke-virtual {p0}, LV1/l;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LV1/l;->t:LV1/k;

    invoke-virtual {v0}, LV1/k;->a()V

    :cond_0
    iget-object v0, p0, LV1/i;->d:LV1/a;

    iget-object v1, p0, LV1/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, LV1/a;->a(Landroid/content/ContentResolver;)F

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LV1/l;->t:LV1/k;

    invoke-virtual {p1}, LV1/k;->g()V

    :cond_2
    :goto_0
    return p2
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LV1/i;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method

.method public w()LV1/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV1/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LV1/l;->t:LV1/k;

    return-object v0
.end method

.method public x()LV1/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV1/j<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, LV1/l;->s:LV1/j;

    return-object v0
.end method

.method public y(LV1/k;)V
    .locals 0
    .param p1    # LV1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV1/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LV1/l;->t:LV1/k;

    invoke-virtual {p1, p0}, LV1/k;->e(LV1/l;)V

    return-void
.end method

.method public z(LV1/j;)V
    .locals 0
    .param p1    # LV1/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV1/j<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, LV1/l;->s:LV1/j;

    invoke-virtual {p1, p0}, LV1/j;->f(LV1/i;)V

    return-void
.end method
