.class public final LRd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LRd/b;


# static fields
.field public static final p:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# instance fields
.field public c:F

.field public final d:LRd/a;

.field public e:LRd/c;

.field public f:Landroid/graphics/Bitmap;

.field public final g:Landroid/view/View;

.field public h:I

.field public final i:Landroid/view/ViewGroup;

.field public final j:[I

.field public final k:[I

.field public final l:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public m:Z

.field public n:Z

.field public o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;ILRd/a;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, LRd/g;->c:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, LRd/g;->j:[I

    new-array v0, v0, [I

    iput-object v0, p0, LRd/g;->k:[I

    new-instance v0, LRd/g$a;

    invoke-direct {v0, p0}, LRd/g$a;-><init>(LRd/g;)V

    iput-object v0, p0, LRd/g;->l:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, LRd/g;->m:Z

    iput-object p2, p0, LRd/g;->i:Landroid/view/ViewGroup;

    iput-object p1, p0, LRd/g;->g:Landroid/view/View;

    iput p3, p0, LRd/g;->h:I

    iput-object p4, p0, LRd/g;->d:LRd/a;

    instance-of p2, p4, LRd/p;

    if-eqz p2, :cond_0

    check-cast p4, LRd/p;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p4, p2}, LRd/p;->f(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, LRd/g;->h(II)V

    return-void
.end method


# virtual methods
.method public a(Z)LRd/d;
    .locals 0

    iput-boolean p1, p0, LRd/g;->m:Z

    invoke-virtual {p0, p1}, LRd/g;->e(Z)LRd/d;

    iget-object p1, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LRd/g;->h(II)V

    return-void
.end method

.method public c(F)LRd/d;
    .locals 0

    iput p1, p0, LRd/g;->c:F

    return-object p0
.end method

.method public d(I)LRd/d;
    .locals 1

    iget v0, p0, LRd/g;->h:I

    if-eq v0, p1, :cond_0

    iput p1, p0, LRd/g;->h:I

    iget-object p1, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LRd/g;->e(Z)LRd/d;

    iget-object v1, p0, LRd/g;->d:LRd/a;

    invoke-interface {v1}, LRd/a;->destroy()V

    iput-boolean v0, p0, LRd/g;->n:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    iget-boolean v0, p0, LRd/g;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LRd/g;->n:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, LRd/c;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, LRd/g;->d:LRd/a;

    iget-object v2, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, LRd/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, LRd/g;->h:I

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public e(Z)LRd/d;
    .locals 2

    iget-object v0, p0, LRd/g;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, LRd/g;->l:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, LRd/g;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, LRd/g;->l:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)LRd/d;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LRd/g;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, LRd/g;->d:LRd/a;

    iget-object v1, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    iget v2, p0, LRd/g;->c:F

    invoke-interface {v0, v1, v2}, LRd/a;->e(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, LRd/g;->d:LRd/a;

    invoke-interface {v0}, LRd/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LRd/g;->e:LRd/c;

    iget-object v1, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public h(II)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LRd/g;->e(Z)LRd/d;

    new-instance v1, LRd/r;

    iget-object v2, p0, LRd/g;->d:LRd/a;

    invoke-interface {v2}, LRd/a;->c()F

    move-result v2

    invoke-direct {v1, v2}, LRd/r;-><init>(F)V

    invoke-virtual {v1, p1, p2}, LRd/r;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    :cond_0
    iget-object v2, p0, LRd/g;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v1, p1, p2}, LRd/r;->d(II)LRd/r$a;

    move-result-object p1

    iget p2, p1, LRd/r$a;->a:I

    iget p1, p1, LRd/r$a;->b:I

    iget-object v1, p0, LRd/g;->d:LRd/a;

    invoke-interface {v1}, LRd/a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    new-instance p1, LRd/c;

    iget-object p2, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, LRd/c;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, LRd/g;->e:LRd/c;

    iput-boolean v0, p0, LRd/g;->n:Z

    invoke-virtual {p0}, LRd/g;->j()V

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, LRd/g;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, LRd/g;->j:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, LRd/g;->g:Landroid/view/View;

    iget-object v1, p0, LRd/g;->k:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, LRd/g;->k:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, LRd/g;->j:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, LRd/g;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v4, p0, LRd/g;->e:LRd/c;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, LRd/g;->e:LRd/c;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-boolean v0, p0, LRd/g;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LRd/g;->n:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LRd/g;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, LRd/g;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LRd/g;->e:LRd/c;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, p0, LRd/g;->e:LRd/c;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LRd/g;->i()V

    iget-object v0, p0, LRd/g;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, LRd/g;->e:LRd/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, LRd/g;->e:LRd/c;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, LRd/g;->g()V

    :cond_2
    :goto_1
    return-void
.end method
