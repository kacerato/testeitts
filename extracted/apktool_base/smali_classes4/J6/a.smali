.class public LJ6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final d0:Ljava/lang/String; = "LineTipPanel"

.field public static final e0:Ljava/lang/Class;


# instance fields
.field public X:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

.field public Y:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

.field public Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final b0:Ljava/lang/String;

.field public final c0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LJ6/a;

    sput-object v0, LJ6/a;->e0:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "scriptName"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "LineTipPanel"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->getDARCULA()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v0

    iput-object v0, p0, LJ6/a;->Y:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p1, p0, LJ6/a;->b0:Ljava/lang/String;

    iput-object p2, p0, LJ6/a;->c0:Ljava/lang/String;

    return-void
.end method

.method public static A1(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "xPixel",
            "yPixel",
            "text",
            "className"
        }
    .end annotation

    new-instance v0, LJ6/a$a;

    invoke-direct {v0, p0, p1, p2, p3}, LJ6/a$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const p0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p1(LJ6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LJ6/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic q1(LJ6/a;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
    .locals 0

    iget-object p0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    return-object p0
.end method

.method public static synthetic r1(LJ6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LJ6/a;->b0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s1(LJ6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LJ6/a;->c0:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LJ6/a$b;

    invoke-direct {v1, p0}, LJ6/a$b;-><init>(LJ6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iput-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->setHorizontallyScrolling(Z)V

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    new-instance v2, LJ6/a$c;

    invoke-direct {v2, p0}, LJ6/a$c;-><init>(LJ6/a;)V

    invoke-virtual {v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->setOnTextChangeListener(Lorg/blacksquircle/ui/editorkit/utils/OnTextChangeListener;)V

    invoke-virtual {p0}, LJ6/a;->v1()V

    invoke-static {}, LN7/c;->e()V

    return-object v0
.end method

.method public n1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    invoke-static {}, LN7/c;->e()V

    return-void
.end method

.method public t1()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 2

    iget-object v0, p0, LJ6/a;->X:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, LJ6/a;->c0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LJ6/a;->c0:Ljava/lang/String;

    invoke-static {v0}, Ld8/j;->J(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iput-object v0, p0, LJ6/a;->X:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v0, :cond_0

    new-instance v1, LJ6/a$e;

    invoke-direct {v1, p0}, LJ6/a$e;-><init>(LJ6/a;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Failed to find JavaMetaInfo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, LJ6/a;->X:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    return-object v0
.end method

.method public u1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 5

    iget-object v0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v4, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    const/4 v0, 0x1

    aget v0, v2, v0

    add-int/2addr v0, v3

    iget-object v2, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scripting Cursor Position X: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", Y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v1

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Scripting Cursor Position NO LAYOUT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v1()V
    .locals 2

    new-instance v0, LC6/d;

    new-instance v1, LJ6/a$d;

    invoke-direct {v1, p0}, LJ6/a$d;-><init>(LJ6/a;)V

    invoke-direct {v0, v1}, LC6/d;-><init>(LF6/b;)V

    invoke-virtual {p0, v0}, LJ6/a;->y1(Lorg/blacksquircle/ui/language/base/Language;)V

    invoke-virtual {p0}, LJ6/a;->x1()V

    iget-object v0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iget-object v1, p0, LJ6/a;->b0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, LJ6/a;->w1()V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, LJ6/a;->z1(I)V

    return-void
.end method

.method public w1()V
    .locals 2

    iget-object v0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iget-object v1, p0, LJ6/a;->Y:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setColorScheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    return-void
.end method

.method public x1()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;

    iget-object v1, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->f(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/content/Context;)V

    return-void
.end method

.method public y1(Lorg/blacksquircle/ui/language/base/Language;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    iget-object v0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    return-void
.end method

.method public final z1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, LJ6/a;->Z:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextSize(F)V

    return-void
.end method
