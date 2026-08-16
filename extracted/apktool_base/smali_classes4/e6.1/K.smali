.class public Le6/K;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public c:Lga/H;

.field public d:Z

.field public e:I

.field public f:Le6/E;

.field public g:Z

.field public h:Z

.field public i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le6/K;->b:Landroid/graphics/Paint;

    .line 3
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    iput-object p1, p0, Le6/K;->c:Lga/H;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Le6/K;->i:F

    .line 5
    invoke-virtual {p0}, Le6/K;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le6/K;->b:Landroid/graphics/Paint;

    .line 8
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    iput-object p1, p0, Le6/K;->c:Lga/H;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Le6/K;->i:F

    .line 10
    invoke-virtual {p0}, Le6/K;->d()V

    return-void
.end method


# virtual methods
.method public a(Le6/E;ZILga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeView",
            "input",
            "slotIndex",
            "type"
        }
    .end annotation

    iput-object p1, p0, Le6/K;->f:Le6/E;

    iput-boolean p2, p0, Le6/K;->d:Z

    iput p3, p0, Le6/K;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Le6/K;->g:Z

    iput-boolean p1, p0, Le6/K;->h:Z

    invoke-virtual {p0, p4}, Le6/K;->setType(Lga/H;)V

    return-void
.end method

.method public b(Le6/E;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeView"
        }
    .end annotation

    iput-object p1, p0, Le6/K;->f:Le6/E;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le6/K;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Le6/K;->e:I

    iput-boolean p1, p0, Le6/K;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Le6/K;->h:Z

    sget-object p1, Lga/H;->BRANCH:Lga/H;

    invoke-virtual {p0, p1}, Le6/K;->setType(Lga/H;)V

    return-void
.end method

.method public c(Le6/E;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeView"
        }
    .end annotation

    iput-object p1, p0, Le6/K;->f:Le6/E;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le6/K;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Le6/K;->e:I

    iput-boolean p1, p0, Le6/K;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Le6/K;->h:Z

    sget-object p1, Lga/H;->BRANCH:Lga/H;

    invoke-virtual {p0, p1}, Le6/K;->setType(Lga/H;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Le6/K;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Le6/K;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Le6/K;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Le6/K;->d:Z

    return v0
.end method

.method public getNodeView()Le6/E;
    .locals 1

    iget-object v0, p0, Le6/K;->f:Le6/E;

    return-object v0
.end method

.method public getSlotIndex()I
    .locals 1

    iget v0, p0, Le6/K;->e:I

    return v0
.end method

.method public getType()Lga/H;
    .locals 1

    iget-object v0, p0, Le6/K;->c:Lga/H;

    return-object v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Le6/K;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Le6/K;->c:Lga/H;

    invoke-static {v1}, Lga/e;->a(Lga/H;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Le6/K;->i:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v1, p0, Le6/K;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setType(Lga/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    :goto_0
    iput-object p1, p0, Le6/K;->c:Lga/H;

    iget-object v0, p0, Le6/K;->b:Landroid/graphics/Paint;

    invoke-static {p1}, Lga/e;->a(Lga/H;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisualScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iget v0, p0, Le6/K;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Le6/K;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
