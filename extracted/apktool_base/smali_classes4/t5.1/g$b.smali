.class public Lt5/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK9/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/g;->q1(Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;LJ9/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

.field public final synthetic b:LJ9/d;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

.field public final synthetic d:Lt5/g;


# direct methods
.method public constructor <init>(Lt5/g;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;LJ9/d;Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$curve",
            "val$display",
            "val$curveView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt5/g$b;->d:Lt5/g;

    iput-object p2, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    iput-object p3, p0, Lt5/g$b;->b:LJ9/d;

    iput-object p4, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->i(I)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v4}, LNc/b;->E(FFF)F

    move-result v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q()F

    move-result v5

    div-float/2addr v1, v5

    invoke-static {v3, v1, v4}, LNc/b;->E(FFF)F

    move-result v1

    iget-object v3, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lt5/g$b;->d:Lt5/g;

    invoke-static {p1}, Lt5/g;->p1(Lt5/g;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object p1

    iget-object v0, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->E(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V

    iget-object p1, p0, Lt5/g$b;->b:LJ9/d;

    invoke-virtual {p1}, LJ9/d;->d()V

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

    iget-object p1, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->d()V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->B()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lt5/g$b;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->z(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    iget-object v0, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p()F

    move-result v2

    mul-float/2addr v1, v2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v2, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q()F

    move-result v2

    mul-float/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->a(FF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lt5/g$b;->c:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v()V

    return-void
.end method
