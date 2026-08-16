.class public final Lorg/blacksquircle/ui/editorkit/model/UndoStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/model/UndoStack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/model/UndoStack$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_SIZE:I = 0x7fffffff


# instance fields
.field private currentSize:I

.field private stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/model/TextChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/model/UndoStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->Companion:Lorg/blacksquircle/ui/editorkit/model/UndoStack$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/model/TextChange;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;-><init>()V

    .line 4
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lpf/S;->d6(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    return-void
.end method

.method private final removeLast()Z
    .locals 3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/model/TextChange;

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final canUndo()Z
    .locals 1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final clone()Lorg/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final get(I)Lorg/blacksquircle/ui/editorkit/model/TextChange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/blacksquircle/ui/editorkit/model/TextChange;

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final pop()Lorg/blacksquircle/ui/editorkit/model/TextChange;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/blacksquircle/ui/editorkit/model/TextChange;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    return-object v0
.end method

.method public final push(Lorg/blacksquircle/ui/editorkit/model/TextChange;)V
    .locals 9
    .param p1    # Lorg/blacksquircle/ui/editorkit/model/TextChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_19

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v2

    if-lez v2, :cond_16

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/blacksquircle/ui/editorkit/model/TextChange;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v5, "toCharArray(...)"

    const/4 v6, 0x0

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_9

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v7

    if-eq v3, v7, :cond_0

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lag/e;->r(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-char v8, v3, v7

    invoke-static {v8}, Lag/e;->r(C)Z

    move-result v8

    if-nez v8, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_6

    aget-char v8, v3, v7

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_5

    move v4, v6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_8
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_15

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_a

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v7

    if-eq v3, v7, :cond_c

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lag/e;->r(C)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_e

    aget-char v8, v3, v7

    invoke-static {v8}, Lag/e;->r(C)Z

    move-result v8

    if-nez v8, :cond_d

    move v4, v6

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_e
    if-eqz v4, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setOldText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setStart(I)V

    goto/16 :goto_5

    :cond_f
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_10
    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    move v7, v6

    :goto_3
    if-ge v7, v5, :cond_12

    aget-char v8, v3, v7

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_11

    move v4, v6

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_12
    if-eqz v4, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setOldText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/blacksquircle/ui/editorkit/model/TextChange;->setStart(I)V

    goto :goto_5

    :cond_13
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    :goto_4
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    iget p1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    :cond_17
    iget p1, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    if-le p1, v1, :cond_18

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeLast()Z

    move-result p1

    if-nez p1, :cond_17

    :cond_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    return-void
.end method

.method public final removeAll()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
