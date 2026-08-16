.class public LE6/a;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/graphics/Canvas;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, LE6/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LE6/a;->b:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, LE6/a;->onDrawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iput-object p1, p0, LE6/a;->b:Landroid/graphics/Canvas;

    iget-object v0, p0, LE6/a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outShadowSize",
            "outShadowTouchPoint"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p1, p0, LE6/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, LE6/a;->c:I

    iget-object p1, p0, LE6/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, LE6/a;->d:I

    return-void
.end method
