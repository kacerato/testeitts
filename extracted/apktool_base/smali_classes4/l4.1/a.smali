.class public Ll4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/a$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:Ll4/a$a;

.field public p:Landroid/view/View;

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/graphics/Rect;

.field public s:Lp4/a;

.field public t:Ll4/b;

.field public u:Ltc/h;


# direct methods
.method public constructor <init>(Lp4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "divisionAreaToSplitArea"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll4/a;->o:Ll4/a$a;

    iput-object v0, p0, Ll4/a;->p:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ll4/a;->q:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ll4/a;->r:Landroid/graphics/Rect;

    iput-object p1, p0, Ll4/a;->s:Lp4/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ll4/a;->p:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public b(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ll4/a;->p:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ll4/a;->t:Ll4/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ll4/a;->u:Ltc/h;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v2, p0, Ll4/a;->t:Ll4/b;

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll4/a;->u:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ll4/a;->u:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->k()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ll4/a;->u:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ll4/a;->u:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Ll4/a;->u:Ltc/h;

    invoke-virtual {v2}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Ll4/a;->t:Ll4/b;

    iget v4, v3, Ll4/b;->a:I

    sub-int/2addr v1, v4

    iget v3, v3, Ll4/b;->b:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Ll4/a;->o:Ll4/a$a;

    sget-object v4, Ll4/a$a;->Horizontal:Ll4/a$a;

    if-ne v3, v4, :cond_1

    int-to-float v1, v1

    iget-object v2, p0, Ll4/a;->s:Lp4/a;

    invoke-interface {v2}, Lp4/a;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Ll4/a;->s:Lp4/a;

    iget-object v3, p0, Ll4/a;->t:Ll4/b;

    iget v3, v3, Ll4/b;->c:F

    add-float/2addr v3, v1

    invoke-static {v3}, LNc/b;->I(F)F

    move-result v1

    invoke-interface {v2, v1, v0}, Lp4/a;->a(FLandroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ll4/a$a;->Vertical:Ll4/a$a;

    if-ne v3, v1, :cond_3

    int-to-float v1, v2

    iget-object v2, p0, Ll4/a;->s:Lp4/a;

    invoke-interface {v2}, Lp4/a;->d()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Ll4/a;->s:Lp4/a;

    iget-object v3, p0, Ll4/a;->t:Ll4/b;

    iget v3, v3, Ll4/b;->c:F

    add-float/2addr v3, v1

    invoke-static {v3}, LNc/b;->I(F)F

    move-result v1

    invoke-interface {v2, v1, v0}, Lp4/a;->a(FLandroid/content/Context;)V

    goto :goto_0

    :cond_2
    iput-object v2, p0, Ll4/a;->t:Ll4/b;

    iput-object v2, p0, Ll4/a;->u:Ltc/h;

    :cond_3
    :goto_0
    iget-object v0, p0, Ll4/a;->q:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ll4/a;->t:Ll4/b;

    if-nez v1, :cond_4

    iget-object v1, p0, Ll4/a;->u:Ltc/h;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ltc/h;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ll4/a;->s:Lp4/a;

    invoke-interface {v2}, Lp4/a;->b()Li4/e;

    move-result-object v2

    invoke-interface {v2, v1}, Li4/e;->c(Ltc/h;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v2, v2

    invoke-virtual {v1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v3, v3

    iget-object v4, p0, Ll4/a;->q:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v5, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-gt v2, v5, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v5, :cond_4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_4

    iput-object v1, p0, Ll4/a;->u:Ltc/h;

    new-instance v1, Ll4/b;

    invoke-direct {v1}, Ll4/b;-><init>()V

    iput-object v1, p0, Ll4/a;->t:Ll4/b;

    iput v2, v1, Ll4/b;->a:I

    iput v3, v1, Ll4/b;->b:I

    iget-object v2, p0, Ll4/a;->s:Lp4/a;

    invoke-interface {v2}, Lp4/a;->e()F

    move-result v2

    iput v2, v1, Ll4/b;->c:F

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p2, p0, Ll4/a;->o:Ll4/a$a;

    sget-object p3, Ll4/a$a;->Horizontal:Ll4/a$a;

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const p2, 0x7f0c0089

    invoke-virtual {p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Ll4/a;->p:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p2, 0x7f0c008b

    invoke-virtual {p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Ll4/a;->p:Landroid/view/View;

    :goto_0
    iget-object p2, p0, Ll4/a;->p:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p5}, Ll4/a;->j(Li4/a;)V

    return-void
.end method

.method public f(Lk4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lk4/c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    iget v0, p0, Ll4/a;->e:F

    iput v0, p0, Ll4/a;->i:F

    iget v1, p0, Ll4/a;->f:F

    iput v1, p0, Ll4/a;->j:F

    iget v2, p0, Ll4/a;->g:F

    iput v2, p0, Ll4/a;->k:F

    iget v3, p0, Ll4/a;->h:F

    iput v3, p0, Ll4/a;->l:F

    iput v0, p0, Ll4/a;->a:F

    iput v1, p0, Ll4/a;->b:F

    iput v2, p0, Ll4/a;->c:F

    iput v3, p0, Ll4/a;->d:F

    return-void
.end method

.method public i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLl4/a$a;Li4/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "x",
            "y",
            "w",
            "h",
            "direction",
            "editor3DScreen",
            "stepLerp"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p9

    move v1, p5

    iput v1, v7, Ll4/a;->e:F

    move v1, p6

    iput v1, v7, Ll4/a;->f:F

    move v1, p7

    iput v1, v7, Ll4/a;->g:F

    move/from16 v1, p8

    iput v1, v7, Ll4/a;->h:F

    if-eqz p11, :cond_0

    invoke-virtual {p0}, Ll4/a;->h()V

    :cond_0
    iget-object v1, v7, Ll4/a;->q:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v2, v7, Ll4/a;->p:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v3, v7, Ll4/a;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v7, Ll4/a;->q:Landroid/graphics/Rect;

    iget-object v3, v7, Ll4/a;->r:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v7, Ll4/a;->p:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, v7, Ll4/a;->o:Ll4/a$a;

    if-eq v2, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v0, p10

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, p1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v7, Ll4/a;->p:Landroid/view/View;

    :cond_4
    iput-object v0, v7, Ll4/a;->o:Ll4/a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p10

    invoke-virtual/range {v1 .. v6}, Ll4/a;->e(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0, v0}, Ll4/a;->j(Li4/a;)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j(Li4/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DScreen"
        }
    .end annotation

    iget-object v0, p0, Ll4/a;->p:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll4/a;->q:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ll4/a;->e:F

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Ll4/a;->e:F

    iget v1, p0, Ll4/a;->f:F

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Ll4/a;->f:F

    iget v1, p0, Ll4/a;->g:F

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Ll4/a;->g:F

    iget v1, p0, Ll4/a;->h:F

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Ll4/a;->h:F

    iget v2, p0, Ll4/a;->e:F

    iput v2, p0, Ll4/a;->i:F

    iget v3, p0, Ll4/a;->f:F

    iput v3, p0, Ll4/a;->j:F

    iget v3, p0, Ll4/a;->g:F

    iput v3, p0, Ll4/a;->k:F

    iput v1, p0, Ll4/a;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v1, p0, Ll4/a;->a:F

    sub-float v3, v2, v1

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    add-float/2addr v3, v4

    const/high16 v5, 0x420c0000    # 35.0f

    mul-float/2addr v3, v5

    invoke-static {}, LK8/d;->d()F

    move-result v6

    mul-float/2addr v3, v6

    invoke-static {v1, v2, v3}, LNc/b;->N0(FFF)F

    move-result v1

    iput v1, p0, Ll4/a;->a:F

    iget v1, p0, Ll4/a;->b:F

    iget v2, p0, Ll4/a;->j:F

    sub-float v3, v2, v1

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {}, LK8/d;->d()F

    move-result v6

    mul-float/2addr v3, v6

    invoke-static {v1, v2, v3}, LNc/b;->N0(FFF)F

    move-result v1

    iput v1, p0, Ll4/a;->b:F

    iget v1, p0, Ll4/a;->c:F

    iget v2, p0, Ll4/a;->k:F

    sub-float v3, v2, v1

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {}, LK8/d;->d()F

    move-result v6

    mul-float/2addr v3, v6

    invoke-static {v1, v2, v3}, LNc/b;->N0(FFF)F

    move-result v1

    iput v1, p0, Ll4/a;->c:F

    iget v1, p0, Ll4/a;->d:F

    iget v2, p0, Ll4/a;->l:F

    sub-float v3, v2, v1

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {}, LK8/d;->d()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v1, v2, v3}, LNc/b;->N0(FFF)F

    move-result v1

    iput v1, p0, Ll4/a;->d:F

    iget-object v1, p0, Ll4/a;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v2, v2

    iget v3, p0, Ll4/a;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v2

    iget v4, p0, Ll4/a;->d:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    iget v4, p0, Ll4/a;->a:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    iget v4, p0, Ll4/a;->b:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget v4, p1, Li4/a;->a:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Ll4/a;->d:F

    iget p1, p1, Li4/a;->b:I

    int-to-float v5, p1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Ll4/a;->a:F

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Ll4/a;->b:F

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v2, :cond_2

    iget-object p1, p0, Ll4/a;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_5
    return-void
.end method
