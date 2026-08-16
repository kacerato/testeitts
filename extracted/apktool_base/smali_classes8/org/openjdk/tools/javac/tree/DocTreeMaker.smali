.class public Lorg/openjdk/tools/javac/tree/DocTreeMaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/DocTreeFactory;


# static fields
.field protected static final treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/tree/DocTreeMaker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field public pos:I

.field private final referenceParser:Lorg/openjdk/tools/javac/parser/ReferenceParser;

.field final sentenceBreakTags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/doclint/HtmlTag;",
            ">;"
        }
    .end annotation
.end field

.field private final trees:Lorg/openjdk/tools/javac/api/JavacTrees;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v1, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iput v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    invoke-static {p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/JavacTrees;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->trees:Lorg/openjdk/tools/javac/api/JavacTrees;

    new-instance v0, Lorg/openjdk/tools/javac/parser/ReferenceParser;

    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/parser/ReferenceParser;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->referenceParser:Lorg/openjdk/tools/javac/parser/ReferenceParser;

    sget-object p1, Lorg/openjdk/tools/doclint/HtmlTag;->H1:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->H2:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v1, Lorg/openjdk/tools/doclint/HtmlTag;->H3:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v2, Lorg/openjdk/tools/doclint/HtmlTag;->H4:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v3, Lorg/openjdk/tools/doclint/HtmlTag;->H5:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v4, Lorg/openjdk/tools/doclint/HtmlTag;->H6:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v5, Lorg/openjdk/tools/doclint/HtmlTag;->PRE:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v6, Lorg/openjdk/tools/doclint/HtmlTag;->P:Lorg/openjdk/tools/doclint/HtmlTag;

    filled-new-array/range {v0 .. v6}, [Lorg/openjdk/tools/doclint/HtmlTag;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->sentenceBreakTags:Ljava/util/EnumSet;

    return-void
.end method

.method private cast(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private defaultSentenceBreak(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    const/16 v2, 0x2e

    if-eq v3, v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    if-ltz v2, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getSentenceBreak(Ljava/lang/String;Lorg/openjdk/source/doctree/DocTree;)I
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->trees:Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getBreakIterator()Ljava/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->defaultSentenceBreak(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v1

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->isTextTree(Lorg/openjdk/source/doctree/DocTree;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lorg/openjdk/source/doctree/TextTree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/openjdk/source/doctree/TextTree;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v2

    if-ge v1, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->isSentenceBreak(Lorg/openjdk/source/doctree/DocTree;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dummy Sentence."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result p1

    if-gt p1, v1, :cond_5

    return p1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/DocTreeMaker;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->treeMakerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isSentenceBreak(Lorg/openjdk/javax/lang/model/element/Name;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->sentenceBreakTags:Ljava/util/EnumSet;

    invoke-static {p1}, Lorg/openjdk/tools/doclint/HtmlTag;->get(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/doclint/HtmlTag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSentenceBreak(Lorg/openjdk/source/doctree/DocTree;Z)Z
    .locals 4

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/tree/DocTreeMaker$2;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjdk/source/doctree/EndElementTree;

    if-nez p2, :cond_1

    .line 4
    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    if-le p1, v3, :cond_1

    invoke-interface {v0}, Lorg/openjdk/source/doctree/EndElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->isSentenceBreak(Lorg/openjdk/javax/lang/model/element/Name;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 5
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/openjdk/source/doctree/StartElementTree;

    if-nez p2, :cond_3

    .line 6
    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    if-le p1, v3, :cond_3

    invoke-interface {v0}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->isSentenceBreak(Lorg/openjdk/javax/lang/model/element/Name;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method private isTextTree(Lorg/openjdk/source/doctree/DocTree;)Z
    .locals 1

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->TEXT:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private skipWhiteSpace(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private splitBody(Ljava/util/Collection;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/DCTree;",
            ">;>;"
        }
    .end annotation

    iget v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/source/doctree/DocTree;

    move-object v9, v8

    check-cast v9, Lorg/openjdk/tools/javac/tree/DCTree;

    iget v9, v9, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    if-eqz v5, :cond_1

    check-cast v8, Lorg/openjdk/tools/javac/tree/DCTree;

    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v10, Lorg/openjdk/tools/javac/tree/DocTreeMaker$2;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    invoke-interface {v8}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v7, :cond_3

    invoke-direct {p0, v8, v6}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->isSentenceBreak(Lorg/openjdk/source/doctree/DocTree;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast v8, Lorg/openjdk/tools/javac/tree/DCTree;

    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    move v5, v7

    goto :goto_0

    :cond_3
    move-object v6, v8

    check-cast v6, Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/DCTree$DCText;->getBody()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjdk/source/doctree/DocTree;

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    invoke-direct {p0, v10, v11}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->getSentenceBreak(Ljava/lang/String;Lorg/openjdk/source/doctree/DocTree;)I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->removeTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/DCTree$DCText;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v11}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v8

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/DCTree$DCText;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/source/doctree/DocTree;

    invoke-direct {p0, v6, v4}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->isSentenceBreak(Lorg/openjdk/source/doctree/DocTree;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/source/doctree/DocTree;

    invoke-direct {p0, v10}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->removeTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    check-cast v5, Lorg/openjdk/tools/javac/tree/DCTree;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    check-cast v8, Lorg/openjdk/tools/javac/tree/DCTree;

    invoke-virtual {v2, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    return-object p1

    :goto_3
    iput v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    throw p1
.end method


# virtual methods
.method public bridge synthetic at(I)Lorg/openjdk/source/util/DocTreeFactory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    return-object p1
.end method

.method public at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;
    .locals 0

    .line 2
    iput p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    return-object p0
.end method

.method public at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/DocTreeMaker;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    return-object p0
.end method

.method public getFirstSentence(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->splitBody(Ljava/util/Collection;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic newAttributeTree(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)Lorg/openjdk/source/doctree/AttributeTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newAttributeTree(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;

    move-result-object p1

    return-object p1
.end method

.method public newAttributeTree(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Lorg/openjdk/source/doctree/AttributeTree$ValueKind;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;-><init>(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newAuthorTree(Ljava/util/List;)Lorg/openjdk/source/doctree/AuthorTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newAuthorTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCAuthor;

    move-result-object p1

    return-object p1
.end method

.method public newAuthorTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCAuthor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCAuthor;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCAuthor;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCAuthor;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newCodeTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/source/doctree/LiteralTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newCodeTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;

    move-result-object p1

    return-object p1
.end method

.method public newCodeTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->CODE:Lorg/openjdk/source/doctree/DocTree$Kind;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;-><init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCText;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newCommentTree(Ljava/lang/String;)Lorg/openjdk/source/doctree/CommentTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newCommentTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCComment;

    move-result-object p1

    return-object p1
.end method

.method public newCommentTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCComment;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCComment;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCComment;-><init>(Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newDeprecatedTree(Ljava/util/List;)Lorg/openjdk/source/doctree/DeprecatedTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newDeprecatedTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDeprecated;

    move-result-object p1

    return-object p1
.end method

.method public newDeprecatedTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDeprecated;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCDeprecated;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDeprecated;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCDeprecated;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newDocCommentTree(Ljava/util/List;Ljava/util/List;)Lorg/openjdk/source/doctree/DocCommentTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newDocCommentTree(Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    move-result-object p1

    return-object p1
.end method

.method public newDocCommentTree(Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    .line 8
    new-instance v3, Lorg/openjdk/tools/javac/tree/DocTreeMaker$1;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker$1;-><init>(Lorg/openjdk/tools/javac/tree/DocTreeMaker;)V

    .line 9
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->splitBody(Ljava/util/Collection;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    .line 10
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$Comment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public newDocCommentTree(Lorg/openjdk/tools/javac/parser/Tokens$Comment;Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->splitBody(Ljava/util/Collection;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    .line 3
    new-instance v7, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object p2, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Ljava/util/List;

    iget-object p2, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$Comment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v7, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v7
.end method

.method public bridge synthetic newDocRootTree()Lorg/openjdk/source/doctree/DocRootTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newDocRootTree()Lorg/openjdk/tools/javac/tree/DCTree$DCDocRoot;

    move-result-object v0

    return-object v0
.end method

.method public newDocRootTree()Lorg/openjdk/tools/javac/tree/DCTree$DCDocRoot;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocRoot;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/tree/DCTree$DCDocRoot;-><init>()V

    .line 3
    iget v1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput v1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newEndElementTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/source/doctree/EndElementTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newEndElementTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;

    move-result-object p1

    return-object p1
.end method

.method public newEndElementTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;-><init>(Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newEntityTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/source/doctree/EntityTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newEntityTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCEntity;

    move-result-object p1

    return-object p1
.end method

.method public newEntityTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCEntity;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCEntity;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCEntity;-><init>(Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newErroneousTree(Ljava/lang/String;Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/source/doctree/ErroneousTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newErroneousTree(Ljava/lang/String;Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public newErroneousTree(Ljava/lang/String;Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    check-cast p2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public varargs newErroneousTree(Ljava/lang/String;Lorg/openjdk/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;
    .locals 7

    .line 4
    new-instance v6, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    iget-object v2, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v6, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v6
.end method

.method public bridge synthetic newExceptionTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ThrowsTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newExceptionTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;

    move-result-object p1

    return-object p1
.end method

.method public newExceptionTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->EXCEPTION:Lorg/openjdk/source/doctree/DocTree$Kind;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;-><init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newHiddenTree(Ljava/util/List;)Lorg/openjdk/source/doctree/HiddenTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newHiddenTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCHidden;

    move-result-object p1

    return-object p1
.end method

.method public newHiddenTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCHidden;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCHidden;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCHidden;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCHidden;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newIdentifierTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/source/doctree/IdentifierTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newIdentifierTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public newIdentifierTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;-><init>(Lorg/openjdk/javax/lang/model/element/Name;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newIndexTree(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)Lorg/openjdk/source/doctree/IndexTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newIndexTree(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;

    move-result-object p1

    return-object p1
.end method

.method public newIndexTree(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;-><init>(Lorg/openjdk/tools/javac/tree/DCTree;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newInheritDocTree()Lorg/openjdk/source/doctree/InheritDocTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newInheritDocTree()Lorg/openjdk/tools/javac/tree/DCTree$DCInheritDoc;

    move-result-object v0

    return-object v0
.end method

.method public newInheritDocTree()Lorg/openjdk/tools/javac/tree/DCTree$DCInheritDoc;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCInheritDoc;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/tree/DCTree$DCInheritDoc;-><init>()V

    .line 3
    iget v1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput v1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newLinkPlainTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/LinkTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newLinkPlainTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCLink;

    move-result-object p1

    return-object p1
.end method

.method public newLinkPlainTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCLink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCLink;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCLink;

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK_PLAIN:Lorg/openjdk/source/doctree/DocTree$Kind;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCLink;-><init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newLinkTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/LinkTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newLinkTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCLink;

    move-result-object p1

    return-object p1
.end method

.method public newLinkTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCLink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCLink;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCLink;

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK:Lorg/openjdk/source/doctree/DocTree$Kind;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCLink;-><init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newLiteralTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/source/doctree/LiteralTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newLiteralTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;

    move-result-object p1

    return-object p1
.end method

.method public newLiteralTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->LITERAL:Lorg/openjdk/source/doctree/DocTree$Kind;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;-><init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCText;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newParamTree(ZLorg/openjdk/source/doctree/IdentifierTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ParamTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newParamTree(ZLorg/openjdk/source/doctree/IdentifierTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCParam;

    move-result-object p1

    return-object p1
.end method

.method public newParamTree(ZLorg/openjdk/source/doctree/IdentifierTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/openjdk/source/doctree/IdentifierTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCParam;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;

    check-cast p2, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;-><init>(ZLorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newProvidesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ProvidesTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newProvidesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;

    move-result-object p1

    return-object p1
.end method

.method public newProvidesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;-><init>(Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newReferenceTree(Ljava/lang/String;)Lorg/openjdk/source/doctree/ReferenceTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newReferenceTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    move-result-object p1

    return-object p1
.end method

.method public newReferenceTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->referenceParser:Lorg/openjdk/tools/javac/parser/ReferenceParser;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/parser/ReferenceParser;->parse(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    iget-object v2, v0, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;->qualExpr:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;->member:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;->paramTypes:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {v1, p1, v2, v3, v0}, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)V

    .line 4
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v1, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I
    :try_end_0
    .catch Lorg/openjdk/tools/javac/parser/ReferenceParser$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid signature"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public newReferenceTree(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCReference;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;-><init>(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)V

    .line 7
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newReturnTree(Ljava/util/List;)Lorg/openjdk/source/doctree/ReturnTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newReturnTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCReturn;

    move-result-object p1

    return-object p1
.end method

.method public newReturnTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCReturn;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCReturn;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCReturn;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newSeeTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SeeTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSeeTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSee;

    move-result-object p1

    return-object p1
.end method

.method public newSeeTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCSee;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCSee;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCSee;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newSerialDataTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SerialDataTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSerialDataTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerialData;

    move-result-object p1

    return-object p1
.end method

.method public newSerialDataTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerialData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCSerialData;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialData;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialData;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newSerialFieldTree(Lorg/openjdk/source/doctree/IdentifierTree;Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/SerialFieldTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSerialFieldTree(Lorg/openjdk/source/doctree/IdentifierTree;Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;

    move-result-object p1

    return-object p1
.end method

.method public newSerialFieldTree(Lorg/openjdk/source/doctree/IdentifierTree;Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/IdentifierTree;",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    check-cast p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;-><init>(Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newSerialTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SerialTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSerialTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerial;

    move-result-object p1

    return-object p1
.end method

.method public newSerialTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCSerial;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCSerial;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCSerial;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newSinceTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SinceTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSinceTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSince;

    move-result-object p1

    return-object p1
.end method

.method public newSinceTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSince;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCSince;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCSince;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCSince;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newStartElementTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;Z)Lorg/openjdk/source/doctree/StartElementTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newStartElementTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;Z)Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;

    move-result-object p1

    return-object p1
.end method

.method public newStartElementTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;Z)Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;Z)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;-><init>(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;Z)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newTextTree(Ljava/lang/String;)Lorg/openjdk/source/doctree/TextTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object p1

    return-object p1
.end method

.method public newTextTree(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/DCTree$DCText;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCText;-><init>(Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newThrowsTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ThrowsTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newThrowsTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;

    move-result-object p1

    return-object p1
.end method

.method public newThrowsTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->THROWS:Lorg/openjdk/source/doctree/DocTree$Kind;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;-><init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newUnknownBlockTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/source/doctree/UnknownBlockTagTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newUnknownBlockTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;

    move-result-object p1

    return-object p1
.end method

.method public newUnknownBlockTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;-><init>(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newUnknownInlineTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/source/doctree/UnknownInlineTagTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newUnknownInlineTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;

    move-result-object p1

    return-object p1
.end method

.method public newUnknownInlineTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;-><init>(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newUsesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/UsesTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newUsesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUses;

    move-result-object p1

    return-object p1
.end method

.method public newUsesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCUses;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCUses;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCUses;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCUses;-><init>(Lorg/openjdk/tools/javac/tree/DCTree$DCReference;Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newValueTree(Lorg/openjdk/source/doctree/ReferenceTree;)Lorg/openjdk/source/doctree/ValueTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newValueTree(Lorg/openjdk/source/doctree/ReferenceTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCValue;

    move-result-object p1

    return-object p1
.end method

.method public newValueTree(Lorg/openjdk/source/doctree/ReferenceTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCValue;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCValue;

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCValue;-><init>(Lorg/openjdk/tools/javac/tree/DCTree$DCReference;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method

.method public bridge synthetic newVersionTree(Ljava/util/List;)Lorg/openjdk/source/doctree/VersionTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newVersionTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCVersion;

    move-result-object p1

    return-object p1
.end method

.method public newVersionTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCVersion;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/tree/DCTree$DCVersion;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->cast(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/DCTree$DCVersion;-><init>(Ljava/util/List;)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->pos:I

    iput p1, v0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return-object v0
.end method
