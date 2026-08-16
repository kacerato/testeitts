.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->a:Ljava/lang/ThreadLocal;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Ltc/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltc/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltc/h;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->e2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Lf5/d;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->f2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/e;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->f2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/e;

    move-result-object v2

    invoke-virtual {v2}, LM7/g;->e()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->c:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->b:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    const/4 v6, 0x1

    if-ltz v5, :cond_3

    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v3, v4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    return v6

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->i2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->c:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_4
    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->b:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_5

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v3, v4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    return v6

    :cond_5
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->j2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, LM7/h;->m(Ltc/h;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v6

    :cond_6
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->k2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, LM7/h;->m(Ltc/h;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v6

    :cond_7
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->l2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, LM7/h;->m(Ltc/h;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v6

    :cond_8
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$e;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->m2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)LM7/h;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, LM7/h;->m(Ltc/h;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v6

    :cond_9
    return v1
.end method
