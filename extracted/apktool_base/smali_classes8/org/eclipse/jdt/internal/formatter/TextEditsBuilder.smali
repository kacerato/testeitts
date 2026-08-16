.class public Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alignChar:I

.field private final buffer:Ljava/lang/StringBuilder;

.field private childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

.field private currentRegion:I

.field private final edits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field private final parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

.field private parentTokenIndex:I

.field private final regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/String;

.field private sourceLimit:I

.field private final stringLiteralsInLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;",
            "Lorg/eclipse/jdt/internal/formatter/TokenManager;",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->stringLiteralsInLine:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    .line 7
    iput-object p4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    .line 8
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->adaptRegions(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    .line 9
    iget-boolean p2, p4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    iget p2, p4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    :goto_0
    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->alignChar:I

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->stringLiteralsInLine:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    .line 17
    iget-object v0, p1, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    .line 18
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    .line 19
    iget-object v0, p1, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    .line 21
    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->alignChar:I

    return-void
.end method

.method private adaptRegions(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/16 v6, 0x3eb

    const/16 v7, 0x3ea

    const/4 v8, -0x1

    if-le v3, v4, :cond_2

    iget-object v9, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v9, v3, v8, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v9

    iget v10, v9, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq v10, v7, :cond_1

    if-ne v10, v6, :cond_2

    :cond_1
    iget v10, v9, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-gt v3, v10, :cond_2

    iget v3, v9, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    :cond_2
    if-le v2, v3, :cond_4

    if-le v2, v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2, v8, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq v5, v7, :cond_3

    if-ne v5, v6, :cond_4

    :cond_3
    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-ge v2, v4, :cond_4

    move v2, v4

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v4

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v4, v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    :cond_5
    add-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_6

    move v2, v1

    :cond_6
    new-instance v1, Lorg/eclipse/jface/text/Region;

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v3, v2}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private adaptReplaceText(Ljava/lang/String;IZI)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-eqz p3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    move v4, v0

    :goto_2
    if-ltz v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    const/16 v7, 0xd

    if-eq v5, v7, :cond_3

    if-ne v5, v6, :cond_6

    :cond_3
    if-lt v4, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int v8, v2, v3

    if-ltz v8, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v7, :cond_5

    if-ne v9, v6, :cond_6

    :cond_5
    if-eq v9, v5, :cond_6

    move v2, v8

    :cond_6
    add-int/2addr v2, v3

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-eqz p3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    goto :goto_5

    :cond_9
    move p2, v0

    :cond_a
    :goto_5
    if-ltz p2, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_13

    if-ltz p4, :cond_13

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p4, v2, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    const/16 v6, 0x20

    if-ne v2, v4, :cond_d

    if-eq v2, v6, :cond_c

    if-ne v2, v5, :cond_d

    :cond_c
    sub-int/2addr p2, v3

    :goto_6
    add-int/2addr p4, v3

    goto :goto_5

    :cond_d
    if-ne v2, v5, :cond_10

    if-ne v4, v6, :cond_10

    move v2, v0

    :goto_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    if-lt v2, v4, :cond_e

    sub-int/2addr p2, v3

    goto :goto_5

    :cond_e
    add-int/2addr p4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_f

    if-ltz p4, :cond_a

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p4, v4, :cond_a

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    if-ne v4, v5, :cond_13

    if-ne v2, v6, :cond_13

    move v2, v0

    :goto_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    if-lt v2, v4, :cond_11

    goto :goto_6

    :cond_11
    sub-int/2addr p2, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_12

    if-ltz p2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_12

    goto :goto_5

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    :goto_9
    if-eqz p3, :cond_14

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_14
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public static appendIndentationString(Ljava/lang/StringBuilder;IIII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    if-lez p2, :cond_0

    div-int p1, p3, p2

    rem-int/2addr p3, p2

    add-int/2addr p4, p3

    goto :goto_0

    :cond_0
    add-int/2addr p4, p3

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unrecognized tab char: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-lez p2, :cond_1

    div-int p1, p3, p2

    rem-int/2addr p3, p2

    if-lez p3, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_0
    add-int/2addr p4, p1

    new-array p2, p4, [C

    const/16 p3, 0x9

    invoke-static {p2, v1, p1, p3}, Ljava/util/Arrays;->fill([CIIC)V

    const/16 p3, 0x20

    invoke-static {p2, p1, p4, p3}, Ljava/util/Arrays;->fill([CIIC)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private bufferAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->alignChar:I

    const/4 v2, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    move v1, v2

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    if-eqz p1, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    invoke-virtual {p2, v4, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v3

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    sub-int/2addr p2, v5

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result p1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    invoke-virtual {v4, p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result p2

    add-int/2addr p1, p2

    :goto_1
    if-lt p1, v0, :cond_5

    return v3

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    const/16 v3, 0x9

    if-eq v1, v5, :cond_c

    const/16 v4, 0x20

    if-eq v1, v2, :cond_a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    :goto_2
    if-lez p2, :cond_7

    add-int v1, p1, p2

    rem-int v2, p1, p2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v1, p2, v2

    add-int/2addr p1, v1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 p2, p1, 0x1

    if-lt p1, v0, :cond_8

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p2

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized align char: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    add-int/lit8 p2, p1, 0x1

    if-lt p1, v0, :cond_b

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p2

    goto :goto_4

    :cond_c
    :goto_5
    if-ge p1, v0, :cond_e

    if-gtz p2, :cond_d

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int v1, p1, p2

    sub-int v1, p2, v1

    add-int/2addr p1, v1

    goto :goto_5

    :cond_e
    :goto_6
    return v5
.end method

.method private bufferIndent(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getCurrent()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getCurrent()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getCurrent()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getEmptyLineIndentAdjustment()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-eqz v2, :cond_1

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parentTokenIndex:I

    if-ne v2, p2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    sub-int v3, p1, v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    :goto_0
    move-object p1, p2

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/2addr v3, p1

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    sub-int/2addr v0, v3

    invoke-static {p1, v1, p2, v0, v3}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->appendIndentationString(Ljava/lang/StringBuilder;IIII)V

    return-void
.end method

.method private bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->line_separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iput v1, v0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parentTokenIndex:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parentTokenIndex:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferIndent(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :goto_1
    if-lt v0, p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    if-ge v0, p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_5

    :cond_6
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    :cond_7
    if-nez p2, :cond_a

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    const-string p2, " * "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_3
    return-void

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private bufferWhitespaceBefore(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->stringLiteralsInLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_empty_lines:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    :goto_0
    move-object v0, p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v4, p2, -0x1

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(IZZ)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v4

    if-le v3, v4, :cond_3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v4

    if-lt v3, v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferIndent(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)Z

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferIndent(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_5

    :cond_7
    if-nez p2, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferIndent(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_5

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->isSpaceBefore()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :goto_5
    return-void
.end method

.method private flushBuffer(I)V
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    if-ne v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_8

    iget v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    iget v5, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    if-ge p1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    if-lt v6, v5, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    goto :goto_0

    :cond_3
    iget v6, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-eq v6, v7, :cond_7

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    iget v7, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    add-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v6}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v6

    if-le v6, p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->regions:Ljava/util/List;

    iget v7, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->currentRegion:I

    add-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jface/text/IRegion;

    const v7, 0x7fffffff

    move v8, v2

    move v9, v8

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v8, v10, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    iget v7, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v5, v8, v4}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->getReplaceEdit(IILjava/lang/String;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/text/edits/ReplaceEdit;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput v5, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    goto :goto_0

    :cond_5
    iget v10, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11, v4}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->getReplaceEdit(IILjava/lang/String;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/text/edits/ReplaceEdit;

    move-result-object v10

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v5, p1, v11, v6}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->getReplaceEdit(IILjava/lang/String;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/text/edits/ReplaceEdit;

    move-result-object v11

    invoke-virtual {v10}, Lorg/eclipse/text/edits/ReplaceEdit;->getLength()I

    move-result v12

    invoke-virtual {v10}, Lorg/eclipse/text/edits/ReplaceEdit;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v12, v10

    invoke-virtual {v11}, Lorg/eclipse/text/edits/ReplaceEdit;->getLength()I

    move-result v10

    add-int/2addr v12, v10

    invoke-virtual {v11}, Lorg/eclipse/text/edits/ReplaceEdit;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v12, v10

    if-ge v12, v7, :cond_6

    move v9, v8

    move v7, v12

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    iget v3, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-direct {p0, v3, p1, v0, v4}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->getReplaceEdit(IILjava/lang/String;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/text/edits/ReplaceEdit;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    return-void
.end method

.method private getReplaceEdit(IILjava/lang/String;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/text/edits/ReplaceEdit;
    .locals 7

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v0

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p3, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    invoke-virtual {v3, v4, p1, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_0

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result p1

    const-string p3, ""

    move p2, v0

    :cond_0
    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, p1, :cond_1

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->isOnlyWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p3, v2, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v6

    invoke-virtual {v4, v5, p1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-direct {p0, p3, v1, v2, p1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->adaptReplaceText(Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result p1

    :cond_1
    if-ge v0, p2, :cond_2

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->isOnlyWhitespace(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, p3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result p4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result p2

    sub-int/2addr p4, p2

    invoke-direct {p0, p3, p4, v3, v0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->adaptReplaceText(Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    new-instance p2, Lorg/eclipse/text/edits/ReplaceEdit;

    sub-int/2addr v0, p1

    invoke-direct {p2, p1, v0, p3}, Lorg/eclipse/text/edits/ReplaceEdit;-><init>(IILjava/lang/String;)V

    return-object p2
.end method

.method private handleMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 1

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;-><init>(Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->traverseInternalStructure(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->childBuilder:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    return-void
.end method

.method private handleSingleLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    goto :goto_0

    :cond_1
    iget v2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    :goto_0
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v4

    if-lez v4, :cond_5

    invoke-direct {p0, v3, v1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferAlign(Lorg/eclipse/jdt/internal/formatter/Token;I)Z

    :cond_4
    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferIndent(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v2, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->stringLiteralsInLine:Ljava/util/List;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getNLSTag()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    const-string v5, "//$NON-NLS-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget v4, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v5, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    if-ge v4, v5, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isOnlyWhitespace(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private traverseInternalStructure(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parent:Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;-><init>(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->parentTokenIndex:I

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->traverse(Ljava/util/List;I)I

    return-void
.end method


# virtual methods
.method public getEdits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->edits:Ljava/util/List;

    return-object v0
.end method

.method public processComment(Lorg/eclipse/jdt/internal/formatter/Token;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->indexOf(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->handleSingleLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->indexOf(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->handleMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    :goto_0
    return-void
.end method

.method public setAlignChar(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->alignChar:I

    return-void
.end method

.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferWhitespaceBefore(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v2, 0x3e9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->handleSingleLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->handleMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_0

    :cond_1
    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isToEscape()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->buffer:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    goto :goto_0

    :cond_2
    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/2addr p2, v3

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :goto_0
    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v0, 0x2e

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->stringLiteralsInLine:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->source:Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xd

    if-eq v0, p1, :cond_4

    const/16 p1, 0xa

    if-ne v0, p1, :cond_5

    :cond_4
    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V

    :cond_5
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->sourceLimit:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->flushBuffer(I)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v1

    if-ne v0, v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, p2

    :goto_2
    invoke-direct {p0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->bufferLineSeparator(Lorg/eclipse/jdt/internal/formatter/Token;Z)V

    goto :goto_1

    :cond_8
    :goto_3
    return v3
.end method
