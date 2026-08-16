.class public interface abstract Lorg/openjdk/source/util/DocTreeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract at(I)Lorg/openjdk/source/util/DocTreeFactory;
.end method

.method public abstract getFirstSentence(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract newAttributeTree(Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/source/doctree/AttributeTree$ValueKind;Ljava/util/List;)Lorg/openjdk/source/doctree/AttributeTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Lorg/openjdk/source/doctree/AttributeTree$ValueKind;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/AttributeTree;"
        }
    .end annotation
.end method

.method public abstract newAuthorTree(Ljava/util/List;)Lorg/openjdk/source/doctree/AuthorTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/AuthorTree;"
        }
    .end annotation
.end method

.method public abstract newCodeTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/source/doctree/LiteralTree;
.end method

.method public abstract newCommentTree(Ljava/lang/String;)Lorg/openjdk/source/doctree/CommentTree;
.end method

.method public abstract newDeprecatedTree(Ljava/util/List;)Lorg/openjdk/source/doctree/DeprecatedTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/DeprecatedTree;"
        }
    .end annotation
.end method

.method public abstract newDocCommentTree(Ljava/util/List;Ljava/util/List;)Lorg/openjdk/source/doctree/DocCommentTree;
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
            "Lorg/openjdk/source/doctree/DocCommentTree;"
        }
    .end annotation
.end method

.method public abstract newDocRootTree()Lorg/openjdk/source/doctree/DocRootTree;
.end method

.method public abstract newEndElementTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/source/doctree/EndElementTree;
.end method

.method public abstract newEntityTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/source/doctree/EntityTree;
.end method

.method public abstract newErroneousTree(Ljava/lang/String;Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/source/doctree/ErroneousTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Lorg/openjdk/source/doctree/ErroneousTree;"
        }
    .end annotation
.end method

.method public abstract newExceptionTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ThrowsTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/ThrowsTree;"
        }
    .end annotation
.end method

.method public abstract newHiddenTree(Ljava/util/List;)Lorg/openjdk/source/doctree/HiddenTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/HiddenTree;"
        }
    .end annotation
.end method

.method public abstract newIdentifierTree(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/source/doctree/IdentifierTree;
.end method

.method public abstract newIndexTree(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)Lorg/openjdk/source/doctree/IndexTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/IndexTree;"
        }
    .end annotation
.end method

.method public abstract newInheritDocTree()Lorg/openjdk/source/doctree/InheritDocTree;
.end method

.method public abstract newLinkPlainTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/LinkTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/LinkTree;"
        }
    .end annotation
.end method

.method public abstract newLinkTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/LinkTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/LinkTree;"
        }
    .end annotation
.end method

.method public abstract newLiteralTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/source/doctree/LiteralTree;
.end method

.method public abstract newParamTree(ZLorg/openjdk/source/doctree/IdentifierTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ParamTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/openjdk/source/doctree/IdentifierTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/ParamTree;"
        }
    .end annotation
.end method

.method public abstract newProvidesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ProvidesTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/ProvidesTree;"
        }
    .end annotation
.end method

.method public abstract newReferenceTree(Ljava/lang/String;)Lorg/openjdk/source/doctree/ReferenceTree;
.end method

.method public abstract newReturnTree(Ljava/util/List;)Lorg/openjdk/source/doctree/ReturnTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/ReturnTree;"
        }
    .end annotation
.end method

.method public abstract newSeeTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SeeTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/SeeTree;"
        }
    .end annotation
.end method

.method public abstract newSerialDataTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SerialDataTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/SerialDataTree;"
        }
    .end annotation
.end method

.method public abstract newSerialFieldTree(Lorg/openjdk/source/doctree/IdentifierTree;Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/SerialFieldTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/IdentifierTree;",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/SerialFieldTree;"
        }
    .end annotation
.end method

.method public abstract newSerialTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SerialTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/SerialTree;"
        }
    .end annotation
.end method

.method public abstract newSinceTree(Ljava/util/List;)Lorg/openjdk/source/doctree/SinceTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/SinceTree;"
        }
    .end annotation
.end method

.method public abstract newStartElementTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;Z)Lorg/openjdk/source/doctree/StartElementTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;Z)",
            "Lorg/openjdk/source/doctree/StartElementTree;"
        }
    .end annotation
.end method

.method public abstract newTextTree(Ljava/lang/String;)Lorg/openjdk/source/doctree/TextTree;
.end method

.method public abstract newThrowsTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/ThrowsTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/ThrowsTree;"
        }
    .end annotation
.end method

.method public abstract newUnknownBlockTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/source/doctree/UnknownBlockTagTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/UnknownBlockTagTree;"
        }
    .end annotation
.end method

.method public abstract newUnknownInlineTagTree(Lorg/openjdk/javax/lang/model/element/Name;Ljava/util/List;)Lorg/openjdk/source/doctree/UnknownInlineTagTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/UnknownInlineTagTree;"
        }
    .end annotation
.end method

.method public abstract newUsesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/source/doctree/UsesTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/UsesTree;"
        }
    .end annotation
.end method

.method public abstract newValueTree(Lorg/openjdk/source/doctree/ReferenceTree;)Lorg/openjdk/source/doctree/ValueTree;
.end method

.method public abstract newVersionTree(Ljava/util/List;)Lorg/openjdk/source/doctree/VersionTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Lorg/openjdk/source/doctree/VersionTree;"
        }
    .end annotation
.end method
