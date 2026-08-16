.class public Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:F

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 2
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->b:I

    const/high16 p1, 0x40800000    # 4.0f

    .line 3
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->c:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->d:Z

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->b:I

    const/high16 p1, 0x40800000    # 4.0f

    .line 7
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->c:F

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x1000000

    .line 10
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->b:I

    const/high16 p1, 0x40800000    # 4.0f

    .line 11
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->c:F

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->d:Z

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->c:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->b:I

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->d:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widthPx"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->c:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
