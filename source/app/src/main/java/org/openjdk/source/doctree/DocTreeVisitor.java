package org.openjdk.source.doctree;

public interface DocTreeVisitor<R, P> {
    R visitAttribute(AttributeTree attributeTree, P p10);

    R visitAuthor(AuthorTree authorTree, P p10);

    R visitComment(CommentTree commentTree, P p10);

    R visitDeprecated(DeprecatedTree deprecatedTree, P p10);

    R visitDocComment(DocCommentTree docCommentTree, P p10);

    R visitDocRoot(DocRootTree docRootTree, P p10);

    R visitEndElement(EndElementTree endElementTree, P p10);

    R visitEntity(EntityTree entityTree, P p10);

    R visitErroneous(ErroneousTree erroneousTree, P p10);

    R visitHidden(HiddenTree hiddenTree, P p10);

    R visitIdentifier(IdentifierTree identifierTree, P p10);

    R visitIndex(IndexTree indexTree, P p10);

    R visitInheritDoc(InheritDocTree inheritDocTree, P p10);

    R visitLink(LinkTree linkTree, P p10);

    R visitLiteral(LiteralTree literalTree, P p10);

    R visitOther(DocTree docTree, P p10);

    R visitParam(ParamTree paramTree, P p10);

    R visitProvides(ProvidesTree providesTree, P p10);

    R visitReference(ReferenceTree referenceTree, P p10);

    R visitReturn(ReturnTree returnTree, P p10);

    R visitSee(SeeTree seeTree, P p10);

    R visitSerial(SerialTree serialTree, P p10);

    R visitSerialData(SerialDataTree serialDataTree, P p10);

    R visitSerialField(SerialFieldTree serialFieldTree, P p10);

    R visitSince(SinceTree sinceTree, P p10);

    R visitStartElement(StartElementTree startElementTree, P p10);

    R visitText(TextTree textTree, P p10);

    R visitThrows(ThrowsTree throwsTree, P p10);

    R visitUnknownBlockTag(UnknownBlockTagTree unknownBlockTagTree, P p10);

    R visitUnknownInlineTag(UnknownInlineTagTree unknownInlineTagTree, P p10);

    R visitUses(UsesTree usesTree, P p10);

    R visitValue(ValueTree valueTree, P p10);

    R visitVersion(VersionTree versionTree, P p10);
}
