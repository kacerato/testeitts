.class public final Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "autocomplete-6743"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private suggestionAdapter:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "autocomplete-6743"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final getVisibleHeight()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private final onDropDownSizeChange(II)V
    .locals 1
    .annotation runtime LF6/c;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060062

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->onPopupChangePosition()V

    return-void
.end method

.method private final onPopupChangePosition()V
    .locals 4
    .annotation runtime LF6/c;
    .end annotation

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getDropDownHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getVisibleHeight()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getDropDownHeight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method private final updateAdapter()V
    .locals 2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/blacksquircle/ui/language/base/Language;->getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->setSuggestionProvider(Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;)V

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addLine(III)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->addLine(III)V

    :try_start_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/blacksquircle/ui/language/base/Language;->getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p3, p2

    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;->processLine(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public clearLines()V
    .locals 1

    invoke-super {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->clearLines()V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/blacksquircle/ui/language/base/Language;->getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;->clearLines()V

    :cond_0
    return-void
.end method

.method public final getSuggestionAdapter()Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    return-object v0
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

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer;

    invoke-direct {v0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string p1, "autocomplete-6743"

    const-string v0, "AutoComplete plugin loaded successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDetached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    return-void
.end method

.method public onLanguageChanged(Lorg/blacksquircle/ui/language/base/Language;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/language/base/Language;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLanguageChanged(Lorg/blacksquircle/ui/language/base/Language;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/blacksquircle/ui/language/base/Language;->getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->setSuggestionProvider(Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->onDropDownSizeChange(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->onPopupChangePosition()V

    return-void
.end method

.method public onTextReplaced(IILjava/lang/CharSequence;)V
    .locals 4
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextReplaced(IILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result p2

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {v0, p3}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result p1

    if-gt p2, p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForStartOfLine(I)I

    move-result p3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForEndOfLine(I)I

    move-result v0

    if-gt p3, v0, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/blacksquircle/ui/language/base/Language;->getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "getText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p2, p3}, Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;->processLine(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeLine(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->removeLine(I)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/blacksquircle/ui/language/base/Language;->getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;->deleteLine(I)V

    :cond_0
    return-void
.end method

.method public final setSuggestionAdapter(Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->updateAdapter()V

    return-void
.end method

.method public showDropDown()V
    .locals 1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->showDropDown()V

    :cond_0
    return-void
.end method
