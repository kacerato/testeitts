.class public abstract Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;
.super Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;
    }
.end annotation


# instance fields
.field private isDoingUndoRedo:Z

.field private onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-direct {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    .line 5
    new-instance p1, Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-direct {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;-><init>()V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7f030046

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final canRedo()Z
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->canUndo()Z

    move-result v0

    return v0
.end method

.method public final canUndo()Z
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->canUndo()Z

    move-result v0

    return v0
.end method

.method public clearText()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setTextContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean p4, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    if-nez p4, :cond_2

    const p4, 0x7fffffff

    const/4 v0, 0x0

    if-ge p3, p4, :cond_1

    new-instance p4, Lorg/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz p1, :cond_0

    add-int/2addr p3, p2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-direct {p4, p3, p1, p2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, p4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    :goto_0
    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    :cond_2
    return-void
.end method

.method public doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean p3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    if-nez p3, :cond_b

    iget-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz p3, :cond_b

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-ge p4, v0, :cond_9

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    add-int/2addr p4, p2

    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result p1

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    move p1, p3

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    move p2, p3

    :cond_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_6
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v1

    :goto_4
    iget-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    move-object p2, v1

    :goto_5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    iget-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    invoke-static {p2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->push(Lorg/blacksquircle/ui/editorkit/model/TextChange;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    :cond_a
    :goto_6
    iput-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lorg/blacksquircle/ui/editorkit/model/TextChange;

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    :cond_b
    return-void
.end method

.method public final getOnUndoRedoChangedListener()Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    return-object v0
.end method

.method public final getRedoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    return-object v0
.end method

.method public final getUndoStack()Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    return-object v0
.end method

.method public final redo()V
    .locals 5

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lorg/blacksquircle/ui/editorkit/model/TextChange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->push(Lorg/blacksquircle/ui/editorkit/model/TextChange;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v2

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    :goto_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    :cond_1
    return-void
.end method

.method public final setOnUndoRedoChangedListener(Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;)V
    .locals 0
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    return-void
.end method

.method public final setRedoStack(Lorg/blacksquircle/ui/editorkit/model/UndoStack;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/model/UndoStack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    return-void
.end method

.method public setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 1
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setTextContent(Landroidx/core/text/PrecomputedTextCompat;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    :cond_0
    return-void
.end method

.method public final setUndoStack(Lorg/blacksquircle/ui/editorkit/model/UndoStack;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/model/UndoStack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    return-void
.end method

.method public final undo()V
    .locals 6

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lorg/blacksquircle/ui/editorkit/model/TextChange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setStart(I)V

    :cond_0
    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v1, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_2
    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v3, v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->push(Lorg/blacksquircle/ui/editorkit/model/TextChange;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v4

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :try_start_0
    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-boolean v2, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    :goto_1
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    :cond_4
    return-void
.end method
