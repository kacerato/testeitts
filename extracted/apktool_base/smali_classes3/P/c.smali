.class public LP/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements LP/g$b;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP/c$a;
    }
.end annotation


# static fields
.field public static final m:I = -0x1

.field public static final n:I = 0x0

.field public static final o:I = 0x77


# instance fields
.field public final b:LP/c$a;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Rect;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LP/c$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LP/c;->f:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, LP/c;->h:I

    .line 8
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP/c$a;

    iput-object p1, p0, LP/c;->b:LP/c$a;

    return-void
.end method

.method public constructor <init>(LP/g;Landroid/graphics/Paint;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 9
    new-instance v0, LP/c$a;

    invoke-direct {v0, p1}, LP/c$a;-><init>(LP/g;)V

    invoke-direct {p0, v0}, LP/c;-><init>(LP/c$a;)V

    .line 10
    iput-object p2, p0, LP/c;->j:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB/a;LC/l;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LB/a;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, LP/c$a;

    new-instance v8, LP/g;

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, LP/g;-><init>(Lcom/bumptech/glide/b;LB/a;IILC/l;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, LP/c$a;-><init>(LP/g;)V

    .line 4
    invoke-direct {p0, v0}, LP/c;-><init>(LP/c$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB/a;LF/e;LC/l;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LB/a;",
            "LF/e;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, LP/c;-><init>(Landroid/content/Context;LB/a;LC/l;IILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, LP/c;->b()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LP/c;->stop()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, LP/c;->g()I

    move-result v0

    invoke-virtual {p0}, LP/c;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, LP/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LP/c;->g:I

    :cond_1
    iget v0, p0, LP/c;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, LP/c;->g:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, LP/c;->l()V

    invoke-virtual {p0}, LP/c;->stop()V

    :cond_2
    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    iget-object v0, p0, LP/c;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final d()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, LP/c;->k:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LP/c;->k:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, LP/c;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, LP/c;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LP/c;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LP/c;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, LP/c;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, LP/c;->d()Landroid/graphics/Rect;

    move-result-object v3

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/c;->i:Z

    :cond_1
    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, LP/c;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, LP/c;->i()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->f()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->d()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->i()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->m()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public h()LC/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->h()LC/l;

    move-result-object v0

    return-object v0
.end method

.method public final i()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, LP/c;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LP/c;->j:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, LP/c;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, LP/c;->c:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->l()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, LP/c;->e:Z

    return v0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, LP/c;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LP/c;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LP/c;->e:Z

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->a()V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LP/c;->g:I

    return-void
.end method

.method public o(LC/l;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0, p1, p2}, LP/g;->q(LC/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LP/c;->i:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, LP/c;->c:Z

    return-void
.end method

.method public q(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, LP/c;->b:LP/c$a;

    iget-object p1, p1, LP/c$a;->a:LP/g;

    invoke-virtual {p1}, LP/g;->j()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iput v0, p0, LP/c;->h:I

    goto :goto_2

    :cond_3
    iput p1, p0, LP/c;->h:I

    :goto_2
    return-void
.end method

.method public r()V
    .locals 2

    iget-boolean v0, p0, LP/c;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "You cannot restart a currently running animation."

    invoke-static {v0, v1}, LY/k;->a(ZLjava/lang/String;)V

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->r()V

    invoke-virtual {p0}, LP/c;->start()V

    return-void
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LP/c;->l:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP/c;->l:Ljava/util/List;

    :cond_1
    iget-object v0, p0, LP/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s()V
    .locals 3

    iget-boolean v0, p0, LP/c;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, LY/k;->a(ZLjava/lang/String;)V

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0}, LP/g;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LP/c;->c:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, LP/c;->c:Z

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0, p0}, LP/g;->v(LP/g$b;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-virtual {p0}, LP/c;->i()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-virtual {p0}, LP/c;->i()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    iget-boolean v0, p0, LP/c;->e:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, LY/k;->a(ZLjava/lang/String;)V

    iput-boolean p1, p0, LP/c;->f:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, LP/c;->t()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LP/c;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LP/c;->s()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LP/c;->d:Z

    invoke-virtual {p0}, LP/c;->n()V

    iget-boolean v0, p0, LP/c;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LP/c;->s()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/c;->d:Z

    invoke-virtual {p0}, LP/c;->t()V

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/c;->c:Z

    iget-object v0, p0, LP/c;->b:LP/c$a;

    iget-object v0, v0, LP/c$a;->a:LP/g;

    invoke-virtual {v0, p0}, LP/g;->w(LP/g$b;)V

    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LP/c;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
