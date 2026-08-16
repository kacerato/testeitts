.class public Lcom/github/javaparser/javadoc/Javadoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private blockTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/javadoc/JavadocBlockTag;",
            ">;"
        }
    .end annotation
.end field

.field private description:Lcom/github/javaparser/javadoc/description/JavadocDescription;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/javadoc/description/JavadocDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/JavadocBlockTag;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/javadoc/Javadoc;->lambda$toText$0(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/JavadocBlockTag;)V

    return-void
.end method

.method private static synthetic lambda$toText$0(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/JavadocBlockTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "bt"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/javadoc/JavadocBlockTag;->toText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addBlockTag(Lcom/github/javaparser/javadoc/JavadocBlockTag;)Lcom/github/javaparser/javadoc/Javadoc;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockTag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addBlockTag(Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagName"
        }
    .end annotation

    .line 4
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/javadoc/Javadoc;->addBlockTag(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object p1

    return-object p1
.end method

.method public addBlockTag(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagName",
            "content"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/javadoc/JavadocBlockTag;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/javadoc/JavadocBlockTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/javadoc/Javadoc;->addBlockTag(Lcom/github/javaparser/javadoc/JavadocBlockTag;)Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object p1

    return-object p1
.end method

.method public addBlockTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagName",
            "parameter",
            "content"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/javadoc/Javadoc;->addBlockTag(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/github/javaparser/javadoc/Javadoc;

    iget-object v2, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    iget-object v3, p1, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v2, v3}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    iget-object p1, p1, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBlockTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/javadoc/JavadocBlockTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Lcom/github/javaparser/javadoc/description/JavadocDescription;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v0}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toComment()Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/github/javaparser/javadoc/Javadoc;->toComment(Ljava/lang/String;)Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public toComment(Ljava/lang/String;)Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentation"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 3
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The indentation string should be composed only by whitespace characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/github/javaparser/javadoc/Javadoc;->toText()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v5, " * "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    sget-object v4, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance p1, Lcom/github/javaparser/ast/comments/JavadocComment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/github/javaparser/ast/comments/JavadocComment;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Javadoc{description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blockTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

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

    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->description:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->toText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    new-instance v2, Ld0/a;

    invoke-direct {v2, v0}, Ld0/a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
