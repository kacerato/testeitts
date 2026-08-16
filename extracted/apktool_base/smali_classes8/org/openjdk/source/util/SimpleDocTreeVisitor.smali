.class public Lorg/openjdk/source/util/SimpleDocTreeVisitor;
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


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "TP;)TR;"
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object p1
.end method

.method public final visit(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/doctree/DocTree;

    .line 3
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->visit(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final visit(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocCommentTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitIndex(Lorg/openjdk/source/doctree/IndexTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/IndexTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/LinkTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ParamTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ProvidesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/SerialFieldTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ThrowsTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/UsesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleDocTreeVisitor;->defaultAction(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
