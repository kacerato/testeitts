package org.openjdk.source.util;

import java.util.List;
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

public class DocTreeScanner<R, P> implements DocTreeVisitor<R, P> {
    private R scanAndReduce(DocTree docTree, P p10, R r10) {
        return reduce(scan(docTree, (DocTree) p10), r10);
    }

    public R reduce(R r10, R r11) {
        return r10;
    }

    public R scan(DocTree docTree, P p10) {
        if (docTree == null) {
            return null;
        }
        return (R) docTree.accept(this, p10);
    }

    @Override
    public R visitAttribute(AttributeTree attributeTree, P p10) {
        return null;
    }

    @Override
    public R visitAuthor(AuthorTree authorTree, P p10) {
        return scan(authorTree.getName(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitComment(CommentTree commentTree, P p10) {
        return null;
    }

    @Override
    public R visitDeprecated(DeprecatedTree deprecatedTree, P p10) {
        return scan(deprecatedTree.getBody(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitDocComment(DocCommentTree docCommentTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) docCommentTree.getBlockTags(), (List<? extends DocTree>) p10, (P) scanAndReduce((Iterable<? extends DocTree>) docCommentTree.getBody(), (List<? extends DocTree>) p10, (P) scan(docCommentTree.getFirstSentence(), (List<? extends DocTree>) p10)));
    }

    @Override
    public R visitDocRoot(DocRootTree docRootTree, P p10) {
        return null;
    }

    @Override
    public R visitEndElement(EndElementTree endElementTree, P p10) {
        return null;
    }

    @Override
    public R visitEntity(EntityTree entityTree, P p10) {
        return null;
    }

    @Override
    public R visitErroneous(ErroneousTree erroneousTree, P p10) {
        return null;
    }

    @Override
    public R visitHidden(HiddenTree hiddenTree, P p10) {
        return scan(hiddenTree.getBody(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitIdentifier(IdentifierTree identifierTree, P p10) {
        return null;
    }

    @Override
    public R visitIndex(IndexTree indexTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) indexTree.getDescription(), (List<? extends DocTree>) p10, (P) scan(indexTree.getSearchTerm(), (DocTree) p10));
    }

    @Override
    public R visitInheritDoc(InheritDocTree inheritDocTree, P p10) {
        return null;
    }

    @Override
    public R visitLink(LinkTree linkTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) linkTree.getLabel(), (List<? extends DocTree>) p10, (P) scan((DocTree) linkTree.getReference(), (ReferenceTree) p10));
    }

    @Override
    public R visitLiteral(LiteralTree literalTree, P p10) {
        return null;
    }

    @Override
    public R visitOther(DocTree docTree, P p10) {
        return null;
    }

    @Override
    public R visitParam(ParamTree paramTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) paramTree.getDescription(), (List<? extends DocTree>) p10, (P) scan((DocTree) paramTree.getName(), (IdentifierTree) p10));
    }

    @Override
    public R visitProvides(ProvidesTree providesTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) providesTree.getDescription(), (List<? extends DocTree>) p10, (P) scan((DocTree) providesTree.getServiceType(), (ReferenceTree) p10));
    }

    @Override
    public R visitReference(ReferenceTree referenceTree, P p10) {
        return null;
    }

    @Override
    public R visitReturn(ReturnTree returnTree, P p10) {
        return scan(returnTree.getDescription(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitSee(SeeTree seeTree, P p10) {
        return scan(seeTree.getReference(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitSerial(SerialTree serialTree, P p10) {
        return scan(serialTree.getDescription(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitSerialData(SerialDataTree serialDataTree, P p10) {
        return scan(serialDataTree.getDescription(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitSerialField(SerialFieldTree serialFieldTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) serialFieldTree.getDescription(), (List<? extends DocTree>) p10, (P) scanAndReduce((DocTree) serialFieldTree.getType(), (ReferenceTree) p10, (P) scan((DocTree) serialFieldTree.getName(), (IdentifierTree) p10)));
    }

    @Override
    public R visitSince(SinceTree sinceTree, P p10) {
        return scan(sinceTree.getBody(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitStartElement(StartElementTree startElementTree, P p10) {
        return scan(startElementTree.getAttributes(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitText(TextTree textTree, P p10) {
        return null;
    }

    @Override
    public R visitThrows(ThrowsTree throwsTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) throwsTree.getDescription(), (List<? extends DocTree>) p10, (P) scan((DocTree) throwsTree.getExceptionName(), (ReferenceTree) p10));
    }

    @Override
    public R visitUnknownBlockTag(UnknownBlockTagTree unknownBlockTagTree, P p10) {
        return scan(unknownBlockTagTree.getContent(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitUnknownInlineTag(UnknownInlineTagTree unknownInlineTagTree, P p10) {
        return scan(unknownInlineTagTree.getContent(), (List<? extends DocTree>) p10);
    }

    @Override
    public R visitUses(UsesTree usesTree, P p10) {
        return scanAndReduce((Iterable<? extends DocTree>) usesTree.getDescription(), (List<? extends DocTree>) p10, (P) scan((DocTree) usesTree.getServiceType(), (ReferenceTree) p10));
    }

    @Override
    public R visitValue(ValueTree valueTree, P p10) {
        return scan((DocTree) valueTree.getReference(), (ReferenceTree) p10);
    }

    @Override
    public R visitVersion(VersionTree versionTree, P p10) {
        return scan(versionTree.getBody(), (List<? extends DocTree>) p10);
    }

    private R scanAndReduce(Iterable<? extends DocTree> iterable, P p10, R r10) {
        return reduce(scan(iterable, (Iterable<? extends DocTree>) p10), r10);
    }

    public R scan(Iterable<? extends DocTree> iterable, P p10) {
        R r10 = null;
        if (iterable != null) {
            boolean z10 = true;
            for (DocTree docTree : iterable) {
                r10 = z10 ? scan(docTree, (DocTree) p10) : scanAndReduce(docTree, (DocTree) p10, (P) r10);
                z10 = false;
            }
        }
        return r10;
    }
}
