.class public final Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLUGIN_ID:Ljava/lang/String; = "autoindent-7401"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private autoCloseBrackets:Z

.field private autoCloseQuotes:Z

.field private autoIndentLines:Z

.field private isAutoIndenting:Z

.field private newText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "autoindent-7401"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->completeIndentation$lambda$0(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V

    return-void
.end method

.method private final completeIndentation(II)V
    .locals 10

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->isAutoIndenting:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->executeIndentation(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    const-string v3, ""

    if-nez v1, :cond_3

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    aget-object v1, v0, v1

    if-eqz v1, :cond_2

    if-nez v1, :cond_1

    :goto_0
    move-object v8, v3

    goto :goto_3

    :cond_1
    move-object v8, v1

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    aget-object v2, v0, v2

    if-nez v2, :cond_5

    move-object v2, v3

    :cond_5
    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_3
    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    move v9, v0

    goto :goto_5

    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    new-instance v1, Ldh/b;

    move-object v4, v1

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Ldh/b;-><init>(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method private static final completeIndentation$lambda$0(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->isAutoIndenting:Z

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/2addr p2, p1

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :try_start_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getUndoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object p1

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lorg/blacksquircle/ui/editorkit/model/TextChange;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getUndoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object p1

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lorg/blacksquircle/ui/editorkit/model/TextChange;

    move-result-object p1

    const-string p2, ""

    invoke-static {p3, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getUndoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->push(Lorg/blacksquircle/ui/editorkit/model/TextChange;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->isAutoIndenting:Z

    return-void
.end method

.method private final executeIndentation(I)[Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v1, "\n"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x7d

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getIndentationForOffset(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, p1

    add-int/2addr v7, v5

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p1, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tab()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, p1

    add-int/2addr v7, v5

    :cond_0
    add-int/2addr p1, v5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge p1, v8, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v1, "\""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x5c

    const-string v7, ""

    const/4 v8, 0x2

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    if-eqz v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v9, 0x22

    if-ne v2, v9, :cond_4

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v10, p1, -0x1

    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_4

    new-array p1, v4, [Ljava/lang/String;

    aput-object v7, p1, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sub-int/2addr p1, v5

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-eq p1, v6, :cond_11

    :cond_5
    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v1, "\'"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    if-eqz v0, :cond_b

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_7

    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_8

    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_8
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v9, 0x27

    if-ne v2, v9, :cond_9

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v10, p1, -0x1

    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_9

    new-array p1, v4, [Ljava/lang/String;

    aput-object v7, p1, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_9
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_a

    if-lez p1, :cond_a

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sub-int/2addr p1, v5

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-eq p1, v6, :cond_11

    :cond_a
    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    :cond_b
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v1, "{"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "}"

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v0, :cond_c

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v0, :cond_d

    add-int/2addr p1, v5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_11

    new-array v0, v4, [Ljava/lang/String;

    aput-object v7, v0, v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v1, "("

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v0, :cond_e

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v0, :cond_f

    add-int/2addr p1, v5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_11

    new-array v0, v4, [Ljava/lang/String;

    aput-object v7, v0, v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v1, "["

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "]"

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v0, :cond_10

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :cond_10
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v0, :cond_11

    add-int/2addr p1, v5

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_11

    new-array v0, v4, [Ljava/lang/String;

    aput-object v7, v0, v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :cond_11
    new-array p1, v4, [Ljava/lang/String;

    return-object p1
.end method

.method private final getIndentationForLine(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLine(I)Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    move-result-object p1

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->getStart()I

    move-result p1

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lag/e;->r(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getIndentationForOffset(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLines()Lorg/blacksquircle/ui/editorkit/model/LinesCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineForIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getIndentationForLine(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAutoCloseBrackets()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    return v0
.end method

.method public final getAutoCloseQuotes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    return v0
.end method

.method public final getAutoIndentLines()Z
    .locals 1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

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

    const-string p1, "autoindent-7401"

    const-string v0, "AutoIndent plugin loaded successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextChanged(Ljava/lang/CharSequence;III)V

    if-eqz p1, :cond_0

    add-int p3, p2, p4

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-direct {p0, p2, p4}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->completeIndentation(II)V

    const-string p1, ""

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    return-void
.end method

.method public final setAutoCloseBrackets(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    return-void
.end method

.method public final setAutoCloseQuotes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    return-void
.end method

.method public final setAutoIndentLines(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    return-void
.end method
