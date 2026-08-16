package org.openjdk.source.util;

import java.util.Iterator;
import org.openjdk.source.doctree.AttributeTree;
import org.openjdk.source.doctree.AuthorTree;
import org.openjdk.source.doctree.CommentTree;
import org.openjdk.source.doctree.DeprecatedTree;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocRootTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.doctree.DocTreeVisitor;
import org.openjdk.source.doctree.EndElementTree;
import org.openjdk.source.doctree.EntityTree;
import org.openjdk.source.doctree.ErroneousTree;
import org.openjdk.source.doctree.HiddenTree;
import org.openjdk.source.doctree.IdentifierTree;
import org.openjdk.source.doctree.IndexTree;
import org.openjdk.source.doctree.InheritDocTree;
import org.openjdk.source.doctree.LinkTree;
import org.openjdk.source.doctree.LiteralTree;
import org.openjdk.source.doctree.ParamTree;
import org.openjdk.source.doctree.ProvidesTree;
import org.openjdk.source.doctree.ReferenceTree;
import org.openjdk.source.doctree.ReturnTree;
import org.openjdk.source.doctree.SeeTree;
import org.openjdk.source.doctree.SerialDataTree;
import org.openjdk.source.doctree.SerialFieldTree;
import org.openjdk.source.doctree.SerialTree;
import org.openjdk.source.doctree.SinceTree;
import org.openjdk.source.doctree.StartElementTree;
import org.openjdk.source.doctree.TextTree;
import org.openjdk.source.doctree.ThrowsTree;
import org.openjdk.source.doctree.UnknownBlockTagTree;
import org.openjdk.source.doctree.UnknownInlineTagTree;
import org.openjdk.source.doctree.UsesTree;
import org.openjdk.source.doctree.ValueTree;
import org.openjdk.source.doctree.VersionTree;

public class SimpleDocTreeVisitor<R, P> implements DocTreeVisitor<R, P> {
    protected final R DEFAULT_VALUE;

    public SimpleDocTreeVisitor() {
        this.DEFAULT_VALUE = null;
    }

    public R defaultAction(DocTree docTree, P p10) {
        return this.DEFAULT_VALUE;
    }

    public final R visit(DocTree docTree, P p10) {
        if (docTree == null) {
            return null;
        }
        return (R) docTree.accept(this, p10);
    }

    @Override
    public R visitAttribute(AttributeTree attributeTree, P p10) {
        return defaultAction(attributeTree, p10);
    }

    @Override
    public R visitAuthor(AuthorTree authorTree, P p10) {
        return defaultAction(authorTree, p10);
    }

    @Override
    public R visitComment(CommentTree commentTree, P p10) {
        return defaultAction(commentTree, p10);
    }

    @Override
    public R visitDeprecated(DeprecatedTree deprecatedTree, P p10) {
        return defaultAction(deprecatedTree, p10);
    }

    @Override
    public R visitDocComment(DocCommentTree docCommentTree, P p10) {
        return defaultAction(docCommentTree, p10);
    }

    @Override
    public R visitDocRoot(DocRootTree docRootTree, P p10) {
        return defaultAction(docRootTree, p10);
    }

    @Override
    public R visitEndElement(EndElementTree endElementTree, P p10) {
        return defaultAction(endElementTree, p10);
    }

    @Override
    public R visitEntity(EntityTree entityTree, P p10) {
        return defaultAction(entityTree, p10);
    }

    @Override
    public R visitErroneous(ErroneousTree erroneousTree, P p10) {
        return defaultAction(erroneousTree, p10);
    }

    @Override
    public R visitHidden(HiddenTree hiddenTree, P p10) {
        return defaultAction(hiddenTree, p10);
    }

    @Override
    public R visitIdentifier(IdentifierTree identifierTree, P p10) {
        return defaultAction(identifierTree, p10);
    }

    @Override
    public R visitIndex(IndexTree indexTree, P p10) {
        return defaultAction(indexTree, p10);
    }

    @Override
    public R visitInheritDoc(InheritDocTree inheritDocTree, P p10) {
        return defaultAction(inheritDocTree, p10);
    }

    @Override
    public R visitLink(LinkTree linkTree, P p10) {
        return defaultAction(linkTree, p10);
    }

    @Override
    public R visitLiteral(LiteralTree literalTree, P p10) {
        return defaultAction(literalTree, p10);
    }

    @Override
    public R visitOther(DocTree docTree, P p10) {
        return defaultAction(docTree, p10);
    }

    @Override
    public R visitParam(ParamTree paramTree, P p10) {
        return defaultAction(paramTree, p10);
    }

    @Override
    public R visitProvides(ProvidesTree providesTree, P p10) {
        return defaultAction(providesTree, p10);
    }

    @Override
    public R visitReference(ReferenceTree referenceTree, P p10) {
        return defaultAction(referenceTree, p10);
    }

    @Override
    public R visitReturn(ReturnTree returnTree, P p10) {
        return defaultAction(returnTree, p10);
    }

    @Override
    public R visitSee(SeeTree seeTree, P p10) {
        return defaultAction(seeTree, p10);
    }

    @Override
    public R visitSerial(SerialTree serialTree, P p10) {
        return defaultAction(serialTree, p10);
    }

    @Override
    public R visitSerialData(SerialDataTree serialDataTree, P p10) {
        return defaultAction(serialDataTree, p10);
    }

    @Override
    public R visitSerialField(SerialFieldTree serialFieldTree, P p10) {
        return defaultAction(serialFieldTree, p10);
    }

    @Override
    public R visitSince(SinceTree sinceTree, P p10) {
        return defaultAction(sinceTree, p10);
    }

    @Override
    public R visitStartElement(StartElementTree startElementTree, P p10) {
        return defaultAction(startElementTree, p10);
    }

    @Override
    public R visitText(TextTree textTree, P p10) {
        return defaultAction(textTree, p10);
    }

    @Override
    public R visitThrows(ThrowsTree throwsTree, P p10) {
        return defaultAction(throwsTree, p10);
    }

    @Override
    public R visitUnknownBlockTag(UnknownBlockTagTree unknownBlockTagTree, P p10) {
        return defaultAction(unknownBlockTagTree, p10);
    }

    @Override
    public R visitUnknownInlineTag(UnknownInlineTagTree unknownInlineTagTree, P p10) {
        return defaultAction(unknownInlineTagTree, p10);
    }

    @Override
    public R visitUses(UsesTree usesTree, P p10) {
        return defaultAction(usesTree, p10);
    }

    @Override
    public R visitValue(ValueTree valueTree, P p10) {
        return defaultAction(valueTree, p10);
    }

    @Override
    public R visitVersion(VersionTree versionTree, P p10) {
        return defaultAction(versionTree, p10);
    }

    public final R visit(Iterable<? extends DocTree> iterable, P p10) {
        R r10 = null;
        if (iterable != null) {
            Iterator<? extends DocTree> it = iterable.iterator();
            while (it.hasNext()) {
                r10 = visit(it.next(), (DocTree) p10);
            }
        }
        return r10;
    }

    public SimpleDocTreeVisitor(R r10) {
        this.DEFAULT_VALUE = r10;
    }
}
