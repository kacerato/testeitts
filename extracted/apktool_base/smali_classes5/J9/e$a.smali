.class public LJ9/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK9/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ9/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ9/e;


# direct methods
.method public constructor <init>(LJ9/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ9/e$a;->a:LJ9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v1}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v1}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i(I)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v3}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v4}, LNc/b;->E(FFF)F

    move-result v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v5}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q()F

    move-result v5

    div-float/2addr v1, v5

    invoke-static {v3, v1, v4}, LNc/b;->E(FFF)F

    move-result v1

    iget-object v3, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v3}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance v1, Lt5/g;

    iget-object v0, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    invoke-direct {v1, v0}, Lt5/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V

    new-instance v0, LJ9/e$a$a;

    invoke-direct {v0, p0}, LJ9/e$a$a;-><init>(LJ9/e$a;)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Lo4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    const/16 v0, 0x15e

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v3

    const/16 v2, 0xc8

    invoke-static {v2}, LN7/c;->f(I)F

    move-result v4

    sget-object v5, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v6, LJ9/e$a$b;

    invoke-direct {v6, p0, v0, v2}, LJ9/e$a$b;-><init>(LJ9/e$a;II)V

    move-object v0, p1

    move-object v2, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-void
.end method

.method public c(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    iget-object p1, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {p1}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->d()V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {p2}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->B()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {p2}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->z(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    iget-object v0, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v0

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v2}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p()F

    move-result v2

    mul-float/2addr v1, v2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v2, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v2}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q()F

    move-result v2

    mul-float/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->a(FF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJ9/e$a;->a:LJ9/e;

    invoke-static {p1}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v()V

    return-void
.end method
