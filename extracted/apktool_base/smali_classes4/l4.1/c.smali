.class public Ll4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/c$a;
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

.field public o:Ll4/c$a;

.field public p:Landroid/view/View;

.field public q:Lp4/a;


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

    iput-object v0, p0, Ll4/c;->o:Ll4/c$a;

    iput-object v0, p0, Ll4/c;->p:Landroid/view/View;

    iput-object p1, p0, Ll4/c;->q:Lp4/a;

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

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ll4/c;->p:Landroid/view/View;

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

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ll4/c;->p:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
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

    iget-object p2, p0, Ll4/c;->o:Ll4/c$a;

    sget-object p3, Ll4/c$a;->Horizontal:Ll4/c$a;

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const p2, 0x7f0c008a

    invoke-virtual {p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Ll4/c;->p:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p2, 0x7f0c008c

    invoke-virtual {p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Ll4/c;->p:Landroid/view/View;

    :goto_0
    iget-object p2, p0, Ll4/c;->p:Landroid/view/View;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANELS_SPACING:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Ll4/c;->p:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p5}, Ll4/c;->j(Li4/a;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANELS_SPACING:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
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

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lk4/c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    iget v0, p0, Ll4/c;->e:F

    iput v0, p0, Ll4/c;->i:F

    iget v1, p0, Ll4/c;->f:F

    iput v1, p0, Ll4/c;->j:F

    iget v2, p0, Ll4/c;->g:F

    iput v2, p0, Ll4/c;->k:F

    iget v3, p0, Ll4/c;->h:F

    iput v3, p0, Ll4/c;->l:F

    iput v0, p0, Ll4/c;->a:F

    iput v1, p0, Ll4/c;->b:F

    iput v2, p0, Ll4/c;->c:F

    iput v3, p0, Ll4/c;->d:F

    return-void
.end method

.method public i(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;FFFFLl4/c$a;Li4/a;Z)V
    .locals 7
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

    move-object v6, p0

    move-object/from16 v0, p9

    move v1, p5

    iput v1, v6, Ll4/c;->e:F

    move v1, p6

    iput v1, v6, Ll4/c;->f:F

    move v1, p7

    iput v1, v6, Ll4/c;->g:F

    move v1, p8

    iput v1, v6, Ll4/c;->h:F

    if-eqz p11, :cond_0

    invoke-virtual {p0}, Ll4/c;->h()V

    :cond_0
    iget-object v1, v6, Ll4/c;->p:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, v6, Ll4/c;->o:Ll4/c$a;

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, p10

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, p1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v6, Ll4/c;->p:Landroid/view/View;

    :cond_3
    iput-object v0, v6, Ll4/c;->o:Ll4/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Ll4/c;->d(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    goto :goto_0

    :goto_2
    invoke-virtual {p0, v0}, Ll4/c;->j(Li4/a;)V

    return-void
.end method

.method public final j(Li4/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DScreen"
        }
    .end annotation

    iget v0, p0, Ll4/c;->e:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Ll4/c;->e:F

    iget v0, p0, Ll4/c;->f:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Ll4/c;->f:F

    iget v0, p0, Ll4/c;->g:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Ll4/c;->g:F

    iget v0, p0, Ll4/c;->h:F

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    iput v0, p0, Ll4/c;->h:F

    iget v1, p0, Ll4/c;->e:F

    iput v1, p0, Ll4/c;->i:F

    iget v2, p0, Ll4/c;->f:F

    iput v2, p0, Ll4/c;->j:F

    iget v2, p0, Ll4/c;->g:F

    iput v2, p0, Ll4/c;->k:F

    iput v0, p0, Ll4/c;->l:F

    :try_start_0
    iget v0, p0, Ll4/c;->a:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    add-float/2addr v2, v3

    const/high16 v4, 0x420c0000    # 35.0f

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Ll4/c;->a:F

    iget v0, p0, Ll4/c;->b:F

    iget v1, p0, Ll4/c;->j:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Ll4/c;->b:F

    iget v0, p0, Ll4/c;->c:F

    iget v1, p0, Ll4/c;->k:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Ll4/c;->c:F

    iget v0, p0, Ll4/c;->d:F

    iget v1, p0, Ll4/c;->l:F

    sub-float v2, v1, v0

    invoke-static {v2}, LNc/b;->k(F)F

    move-result v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {}, LK8/d;->d()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v0, v1, v2}, LNc/b;->N0(FFF)F

    move-result v0

    iput v0, p0, Ll4/c;->d:F

    iget-object v0, p0, Ll4/c;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    iget v2, p0, Ll4/c;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v3, p0, Ll4/c;->d:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    iget v3, p0, Ll4/c;->a:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    iget v3, p0, Ll4/c;->b:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget v3, p1, Li4/a;->a:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Ll4/c;->d:F

    iget p1, p1, Li4/a;->b:I

    int-to-float v4, p1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Ll4/c;->a:F

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Ll4/c;->b:F

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_2

    iget-object p1, p0, Ll4/c;->p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method
