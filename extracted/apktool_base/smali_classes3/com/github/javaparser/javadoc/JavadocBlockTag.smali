.class public Lcom/github/javaparser/javadoc/JavadocBlockTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;
    }
.end annotation


# instance fields
.field private content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

.field private name:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagName:Ljava/lang/String;

.field private type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "content"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    .line 4
    invoke-static {p1}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->access$000(Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->hasName()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->nextWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    .line 7
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->parseText(Ljava/lang/String;)Lcom/github/javaparser/javadoc/description/JavadocDescription;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 9
    invoke-static {p1}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->fromName(Ljava/lang/String;)Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/javadoc/JavadocBlockTag;-><init>(Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/javadoc/JavadocBlockTag;->lambda$toText$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static createParamBlockTag(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/javadoc/JavadocBlockTag;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramName",
            "content"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/javadoc/JavadocBlockTag;

    sget-object v1, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->PARAM:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/javadoc/JavadocBlockTag;-><init>(Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$toText$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "s"
        }
    .end annotation

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/javadoc/JavadocBlockTag;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    iget-object v2, p1, Lcom/github/javaparser/javadoc/JavadocBlockTag;->type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    iget-object v2, p1, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    iget-object p1, p1, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    invoke-virtual {v0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getContent()Lcom/github/javaparser/javadoc/description/JavadocDescription;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    return-object v0
.end method

.method public getName()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavadocBlockTag{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->type:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

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

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    new-instance v2, Ld0/b;

    invoke-direct {v2, v0}, Ld0/b;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag;->content:Lcom/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lcom/github/javaparser/javadoc/description/JavadocDescription;->toText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
