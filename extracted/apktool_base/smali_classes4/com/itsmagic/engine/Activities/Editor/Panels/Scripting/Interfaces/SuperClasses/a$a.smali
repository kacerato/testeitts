.class public final Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;)Lnf/P0;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->i(Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;)Lnf/P0;
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->k(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)Lnf/P0;
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->g(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;)Lnf/P0;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->j(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;)Lnf/P0;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->h(Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)Lnf/P0;
    .locals 2

    const-string v0, "$this$create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LF6/e;

    invoke-direct {v0}, LF6/e;-><init>()V

    invoke-static {p1, v0}, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/ActionsKt;->pinchZoom(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;)V

    new-instance v0, LF6/f;

    invoke-direct {v0}, LF6/f;-><init>()V

    invoke-static {p1, v0}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/ActionsKt;->lineNumbers(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lorg/blacksquircle/ui/editorkit/plugin/delimiters/ActionsKt;->highlightDelimiters$default(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;ILjava/lang/Object;)V

    new-instance v0, LF6/g;

    invoke-direct {v0}, LF6/g;-><init>()V

    invoke-static {p1, v0}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/ActionsKt;->autoIndentation(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;)V

    new-instance v0, LF6/h;

    invoke-direct {v0, p0}, LF6/h;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/ActionsKt;->codeCompletion(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;LMf/l;)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final h(Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;)Lnf/P0;
    .locals 1

    const-string v0, "$this$pinchZoom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->setMinTextSize(F)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->setMaxTextSize(F)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final i(Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;)Lnf/P0;
    .locals 1

    const-string v0, "$this$lineNumbers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->setLineNumbers(Z)V

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->setHighlightCurrentLine(Z)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final j(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;)Lnf/P0;
    .locals 1

    const-string v0, "$this$autoIndentation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->setAutoIndentLines(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->setAutoCloseBrackets(Z)V

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->setAutoCloseQuotes(Z)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final k(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;)Lnf/P0;
    .locals 1

    const-string v0, "$this$codeCompletion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LF6/a;

    invoke-direct {v0, p0}, LF6/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->setSuggestionAdapter(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method


# virtual methods
.method public final f(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/content/Context;)V
    .locals 2
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;

    new-instance v1, LF6/i;

    invoke-direct {v1, p2}, LF6/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;->create(LMf/l;)Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins(Lorg/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)V

    return-void
.end method
