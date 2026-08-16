.class public Lcom/github/javaparser/javadoc/description/JavadocDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/github/javaparser/javadoc/description/JavadocDescription;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->lambda$toText$0(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)V

    return-void
.end method

.method private static indexOfNextInlineTag(Ljava/lang/String;I)Lcom/github/javaparser/utils/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/github/javaparser/utils/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "{@"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "}"

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/github/javaparser/utils/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$toText$0(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "e"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;->toText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parseText(Ljava/lang/String;)Lcom/github/javaparser/javadoc/description/JavadocDescription;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-direct {v0}, Lcom/github/javaparser/javadoc/description/JavadocDescription;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->indexOfNextInlineTag(Ljava/lang/String;I)Lcom/github/javaparser/utils/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_0

    new-instance v3, Lcom/github/javaparser/javadoc/description/JavadocSnippet;

    iget-object v4, v2, Lcom/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/github/javaparser/javadoc/description/JavadocSnippet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->addElement(Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z

    :cond_0
    iget-object v1, v2, Lcom/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lcom/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/javadoc/description/JavadocInlineTag;->fromText(Ljava/lang/String;)Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->addElement(Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z

    iget-object v1, v2, Lcom/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Lcom/github/javaparser/javadoc/description/JavadocSnippet;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/github/javaparser/javadoc/description/JavadocSnippet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->addElement(Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addElement(Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/javadoc/description/JavadocDescription;

    iget-object v0, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    iget-object p1, p1, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/javadoc/description/JavadocDescriptionElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->toText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavadocDescription{elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    new-instance v2, Le0/a;

    invoke-direct {v2, v0}, Le0/a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
