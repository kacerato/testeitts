.class public Lorg/openjdk/source/util/DocTreeScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/DocTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/source/doctree/DocTreeVisitor<",
        "TR;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;TP;TR;)TR;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/source/util/DocTreeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private scanAndReduce(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "TP;TR;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/source/util/DocTreeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;TP;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/doctree/DocTree;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v2, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "TP;)TR;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTree;->accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/AttributeTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/AuthorTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/AuthorTree;->getName()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitComment(Lorg/openjdk/source/doctree/CommentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/CommentTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitDeprecated(Lorg/openjdk/source/doctree/DeprecatedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DeprecatedTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DeprecatedTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocCommentTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocCommentTree;->getFirstSentence()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocCommentTree;->getBody()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocCommentTree;->getBlockTags()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocRootTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/EndElementTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/EntityTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ErroneousTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitHidden(Lorg/openjdk/source/doctree/HiddenTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/HiddenTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/HiddenTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/IdentifierTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitIndex(Lorg/openjdk/source/doctree/IndexTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/IndexTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/IndexTree;->getSearchTerm()Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/IndexTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/InheritDocTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/LinkTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/LinkTree;->getReference()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/LinkTree;->getLabel()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/LiteralTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitOther(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ParamTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getName()Lorg/openjdk/source/doctree/IdentifierTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ProvidesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ProvidesTree;->getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ProvidesTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReturnTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ReturnTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSee(Lorg/openjdk/source/doctree/SeeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/SeeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SeeTree;->getReference()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSerial(Lorg/openjdk/source/doctree/SerialTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/SerialTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/SerialDataTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialDataTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/SerialFieldTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getName()Lorg/openjdk/source/doctree/IdentifierTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/SinceTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/SinceTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/StartElementTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/TextTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ThrowsTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getExceptionName()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/UnknownBlockTagTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/UnknownBlockTagTree;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/UnknownInlineTagTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/UnknownInlineTagTree;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/UsesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/UsesTree;->getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/doctree/UsesTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/DocTreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ValueTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ValueTree;->getReference()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/VersionTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/doctree/VersionTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
