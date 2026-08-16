.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->X(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->a:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    int-to-float p1, p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->a:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public c()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    int-to-float p1, p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-static {p1, v0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->a:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method public e()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->b:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-static {p1, v0}, LNc/b;->g1(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public g(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    int-to-float p1, p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-static {p1, v0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->b:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->a:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-static {p1, v0}, LNc/b;->g1(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public l()I
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->a:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    int-to-float p1, p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->b:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public o()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->l()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, LK8/c;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
