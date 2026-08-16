.class public final Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "line-numbers-1141"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final gutterAlertLine:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gutterCurrentLineNumberPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gutterDigitCount:I

.field private final gutterDividerPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gutterErrorLine:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gutterMargin:I

.field private final gutterPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gutterTextPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gutterWidth:I

.field private highlightCurrentLine:Z

.field private lineNumbers:Z

.field private final selectedLinePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "line-numbers-1141"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    sget-object v0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;->access$getDp(Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;I)I

    move-result v0

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    return-void
.end method

.method private final updateGutter()V
    .locals 6

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDigitCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v1

    if-lez v5, :cond_0

    move v3, v2

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDigitCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v1, :cond_3

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    :cond_4
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v2, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v2, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    return-void
.end method


# virtual methods
.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime LF6/c;
    .end annotation

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-static {v1}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getTopVisibleLine(Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v4, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v5, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v4, v3

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-static {v5}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v5

    if-gt v1, v5, :cond_b

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v5

    if-eq v5, v3, :cond_a

    if-eqz p1, :cond_a

    add-int/lit8 v3, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v4

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->getRequestLineTips()Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->getRequestLineTips()Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v10

    invoke-static {v10}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v10

    if-ne v1, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    invoke-interface {v9, v3, v10}, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;->getTypeForLine(IZ)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    move-result-object v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    sget-object v9, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->Error:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    goto :goto_4

    :cond_5
    sget-object v9, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->Alert:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    if-ne v3, v9, :cond_6

    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    goto :goto_4

    :cond_6
    if-ne v5, v0, :cond_7

    iget-boolean v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_8
    if-ne v5, v0, :cond_9

    iget-boolean v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto/16 :goto_1

    :cond_b
    if-eqz p1, :cond_c

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterTextChanged(Landroid/text/Editable;)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->updateGutter()V

    return-void
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->beforeDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForStartOfLine(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForEndOfLine(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    if-eqz p1, :cond_1

    iget v3, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    int-to-float v5, v3

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v0

    iget-object v9, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->updateGutter()V

    return-void
.end method

.method public final getHighlightCurrentLine()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    return v0
.end method

.method public final getLineNumbers()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    return v0
.end method

.method public onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    const-string p1, "line-numbers-1141"

    const-string v0, "LineNumbers plugin loaded successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V
    .locals 6
    .param p1    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getSelectedLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterDividerColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    const v2, 0x40266666    # 2.6f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterCurrentLineNumberColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterLineError()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterLineAlert()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LF6/c;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->getRequestLineTips()Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    if-gt v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-static {}, LN7/c;->Y()V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->getRequestLineTips()Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-static {v4}, Lorg/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v4

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1, v0, v2, v3, v4}, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;->showLineTips(IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setHighlightCurrentLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    return-void
.end method

.method public final setLineNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextSize(F)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterErrorLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterAlertLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
