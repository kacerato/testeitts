.class public Lorg/google/googlejavaformat/java/SnippetFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;,
        Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    }
.end annotation


# static fields
.field private static final INDENTATION_SIZE:I = 0x2

.field private static final NOT_WHITESPACE:Lw2/e;


# instance fields
.field private final formatter:Lorg/google/googlejavaformat/java/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v0

    invoke-virtual {v0}, Lw2/e;->F()Lw2/e;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lw2/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/google/googlejavaformat/java/Formatter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/Formatter;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/SnippetFormatter;->formatter:Lorg/google/googlejavaformat/java/Formatter;

    return-void
.end method

.method private static offsetRange(Lcom/google/common/collect/j2;I)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "range",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method private static offsetRanges(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ranges",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Ljava/util/List<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-static {v1, p1}, Lorg/google/googlejavaformat/java/SnippetFormatter;->offsetRange(Lcom/google/common/collect/j2;I)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private snippetWrapper(Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;Ljava/lang/String;I)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kind",
            "source",
            "initialIndent"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "class Dummy {\n"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    const-string v4, "{\n"

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    new-instance p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {p1, p0, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lorg/google/googlejavaformat/java/SnippetFormatter;Lorg/google/googlejavaformat/java/SnippetFormatter$1;)V

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    :goto_0
    if-gt v5, p3, :cond_0

    invoke-virtual {p1, v4}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Object o = "

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-virtual {p1, p3}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown snippet kind: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {p1, p0, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lorg/google/googlejavaformat/java/SnippetFormatter;Lorg/google/googlejavaformat/java/SnippetFormatter$1;)V

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    :goto_1
    if-gt v5, p3, :cond_3

    invoke-virtual {p1, v4}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-virtual {p1, p3}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {p1, p0, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lorg/google/googlejavaformat/java/SnippetFormatter;Lorg/google/googlejavaformat/java/SnippetFormatter$1;)V

    :goto_2
    if-gt v3, p3, :cond_5

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-virtual {p1, p3}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    return-object p1

    :cond_6
    new-instance p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {p1, p0, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lorg/google/googlejavaformat/java/SnippetFormatter;Lorg/google/googlejavaformat/java/SnippetFormatter$1;)V

    :goto_3
    if-gt v3, p3, :cond_7

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-virtual {p1, p3}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    return-object p1
.end method

.method private static toReplacements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lw2/e;

    invoke-virtual {v0, p0}, Lw2/e;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lw2/e;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lw2/e;->n(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v0, p1}, Lw2/e;->n(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/google/googlejavaformat/java/Replacement;->create(Lcom/google/common/collect/j2;Ljava/lang/String;)Lorg/google/googlejavaformat/java/Replacement;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    if-eq v0, v3, :cond_5

    sget-object v4, Lorg/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lw2/e;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, p0, v5}, Lw2/e;->o(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, p1, v7}, Lw2/e;->o(Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v6, v3, :cond_5

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v6, v2

    sub-int v0, v4, v0

    if-ne v2, v0, :cond_3

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/google/googlejavaformat/java/Replacement;->create(Lcom/google/common/collect/j2;Ljava/lang/String;)Lorg/google/googlejavaformat/java/Replacement;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v4

    move v2, v6

    goto :goto_0

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", replacement = \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createIndentationString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentationLevel"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Indentation level cannot be less than zero. Given: %s"

    invoke-static {v1, v2, p1}, Lw2/H;->k(ZLjava/lang/String;I)V

    mul-int/lit8 p1, p1, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;Ljava/lang/String;Ljava/util/List;IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kind",
            "source",
            "ranges",
            "initialIndent",
            "includeComments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;IZ)",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/j2;

    invoke-interface {v0, v2}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    sget-object p4, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->COMPILATION_UNIT:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lorg/google/googlejavaformat/java/SnippetFormatter;->formatter:Lorg/google/googlejavaformat/java/Formatter;

    invoke-virtual {p1, p2, p3}, Lorg/google/googlejavaformat/java/Formatter;->getFormatReplacements(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "comment formatting is only supported for compilation units"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lorg/google/googlejavaformat/java/SnippetFormatter;->snippetWrapper(Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;Ljava/lang/String;I)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object p1

    iget p4, p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    invoke-static {p3, p4}, Lorg/google/googlejavaformat/java/SnippetFormatter;->offsetRanges(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    iget-object p4, p0, Lorg/google/googlejavaformat/java/SnippetFormatter;->formatter:Lorg/google/googlejavaformat/java/Formatter;

    iget-object p5, p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p3

    iget p4, p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    iget-object v1, p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget p1, p1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr p5, v1

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/google/googlejavaformat/java/SnippetFormatter;->toReplacements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/google/googlejavaformat/java/Replacement;

    invoke-virtual {p3}, Lorg/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/j2;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/common/collect/m2;->i(Lcom/google/common/collect/j2;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p2
.end method
