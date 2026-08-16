package org.openjdk.tools.javac.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.doctree.AttributeTree;
import org.openjdk.source.doctree.AuthorTree;
import org.openjdk.source.doctree.BlockTagTree;
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
import org.openjdk.source.doctree.InlineTagTree;
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
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.JCDiagnostic;

public abstract class DCTree implements DocTree {
    public int pos;

    public static class DCAttribute extends DCTree implements AttributeTree {
        public final Name name;
        public final List<DCTree> value;
        public final AttributeTree.ValueKind vkind;

        public DCAttribute(Name name, AttributeTree.ValueKind valueKind, List<DCTree> list) {
            boolean z10 = false;
            if (valueKind != AttributeTree.ValueKind.EMPTY ? list != null : list == null) {
                z10 = true;
            }
            Assert.check(z10);
            this.name = name;
            this.vkind = valueKind;
            this.value = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitAttribute(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.ATTRIBUTE;
        }

        @Override
        public Name getName() {
            return this.name;
        }

        @Override
        public List<DCTree> getValue() {
            return this.value;
        }

        @Override
        public AttributeTree.ValueKind getValueKind() {
            return this.vkind;
        }
    }

    public static class DCAuthor extends DCBlockTag implements AuthorTree {
        public final List<DCTree> name;

        public DCAuthor(List<DCTree> list) {
            this.name = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitAuthor(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.AUTHOR;
        }

        @Override
        public List<? extends DocTree> getName() {
            return this.name;
        }
    }

    public static abstract class DCBlockTag extends DCTree implements BlockTagTree {
        @Override
        public String getTagName() {
            return getKind().tagName;
        }
    }

    public static class DCComment extends DCTree implements CommentTree {
        public final String body;

        public DCComment(String str) {
            this.body = str;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitComment(this, d10);
        }

        @Override
        public String getBody() {
            return this.body;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.COMMENT;
        }
    }

    public static class DCDeprecated extends DCBlockTag implements DeprecatedTree {
        public final List<DCTree> body;

        public DCDeprecated(List<DCTree> list) {
            this.body = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitDeprecated(this, d10);
        }

        @Override
        public List<? extends DocTree> getBody() {
            return this.body;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.DEPRECATED;
        }
    }

    public static class DCDocComment extends DCTree implements DocCommentTree {
        public final List<DCTree> body;
        public final Tokens.Comment comment;
        public final List<DCTree> firstSentence;
        public final List<DCTree> fullBody;
        public final List<DCTree> tags;

        public DCDocComment(Tokens.Comment comment, List<DCTree> list, List<DCTree> list2, List<DCTree> list3, List<DCTree> list4) {
            this.comment = comment;
            this.firstSentence = list2;
            this.fullBody = list;
            this.body = list3;
            this.tags = list4;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitDocComment(this, d10);
        }

        @Override
        public List<? extends DocTree> getBlockTags() {
            return this.tags;
        }

        @Override
        public List<? extends DocTree> getBody() {
            return this.body;
        }

        @Override
        public List<? extends DocTree> getFirstSentence() {
            return this.firstSentence;
        }

        @Override
        public List<? extends DocTree> getFullBody() {
            return this.fullBody;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.DOC_COMMENT;
        }
    }

    public static class DCDocRoot extends DCInlineTag implements DocRootTree {
        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitDocRoot(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.DOC_ROOT;
        }
    }

    public static class DCEndElement extends DCTree implements EndElementTree {
        public final Name name;

        public DCEndElement(Name name) {
            this.name = name;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitEndElement(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.END_ELEMENT;
        }

        @Override
        public Name getName() {
            return this.name;
        }
    }

    public static abstract class DCEndPosTree<T extends DCEndPosTree<T>> extends DCTree {
        private int endPos = -1;

        public int getEndPos(DCDocComment dCDocComment) {
            return dCDocComment.comment.getSourcePos(this.endPos);
        }

        public T setEndPos(int i10) {
            this.endPos = i10;
            return this;
        }
    }

    public static class DCEntity extends DCTree implements EntityTree {
        public final Name name;

        public DCEntity(Name name) {
            this.name = name;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitEntity(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.ENTITY;
        }

        @Override
        public Name getName() {
            return this.name;
        }
    }

    public static class DCHidden extends DCBlockTag implements HiddenTree {
        public final List<DCTree> body;

        public DCHidden(List<DCTree> list) {
            this.body = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitHidden(this, d10);
        }

        @Override
        public List<? extends DocTree> getBody() {
            return this.body;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.HIDDEN;
        }
    }

    public static class DCIdentifier extends DCTree implements IdentifierTree {
        public final Name name;

        public DCIdentifier(Name name) {
            this.name = name;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitIdentifier(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.IDENTIFIER;
        }

        @Override
        public Name getName() {
            return this.name;
        }
    }

    public static class DCIndex extends DCInlineTag implements IndexTree {
        public final List<DCTree> description;
        public final DCTree term;

        public DCIndex(DCTree dCTree, List<DCTree> list) {
            this.term = dCTree;
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitIndex(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.INDEX;
        }

        @Override
        public DocTree getSearchTerm() {
            return this.term;
        }
    }

    public static class DCInheritDoc extends DCInlineTag implements InheritDocTree {
        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitInheritDoc(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.INHERIT_DOC;
        }
    }

    public static abstract class DCInlineTag extends DCEndPosTree<DCInlineTag> implements InlineTagTree {
        @Override
        public String getTagName() {
            return getKind().tagName;
        }
    }

    public static class DCLink extends DCInlineTag implements LinkTree {
        public final DocTree.Kind kind;
        public final List<DCTree> label;
        public final DCReference ref;

        public DCLink(DocTree.Kind kind, DCReference dCReference, List<DCTree> list) {
            Assert.check(kind == DocTree.Kind.LINK || kind == DocTree.Kind.LINK_PLAIN);
            this.kind = kind;
            this.ref = dCReference;
            this.label = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitLink(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return this.kind;
        }

        @Override
        public List<? extends DocTree> getLabel() {
            return this.label;
        }

        @Override
        public ReferenceTree getReference() {
            return this.ref;
        }
    }

    public static class DCLiteral extends DCInlineTag implements LiteralTree {
        public final DCText body;
        public final DocTree.Kind kind;

        public DCLiteral(DocTree.Kind kind, DCText dCText) {
            Assert.check(kind == DocTree.Kind.CODE || kind == DocTree.Kind.LITERAL);
            this.kind = kind;
            this.body = dCText;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitLiteral(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return this.kind;
        }

        @Override
        public DCText getBody() {
            return this.body;
        }
    }

    public static class DCParam extends DCBlockTag implements ParamTree {
        public final List<DCTree> description;
        public final boolean isTypeParameter;
        public final DCIdentifier name;

        public DCParam(boolean z10, DCIdentifier dCIdentifier, List<DCTree> list) {
            this.isTypeParameter = z10;
            this.name = dCIdentifier;
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitParam(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.PARAM;
        }

        @Override
        public IdentifierTree getName() {
            return this.name;
        }

        @Override
        public boolean isTypeParameter() {
            return this.isTypeParameter;
        }
    }

    public static class DCProvides extends DCBlockTag implements ProvidesTree {
        public final List<DCTree> description;
        public final DCReference serviceType;

        public DCProvides(DCReference dCReference, List<DCTree> list) {
            this.serviceType = dCReference;
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitProvides(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.PROVIDES;
        }

        @Override
        public ReferenceTree getServiceType() {
            return this.serviceType;
        }
    }

    public static class DCReference extends DCEndPosTree<DCReference> implements ReferenceTree {
        public final Name memberName;
        public final List<JCTree> paramTypes;
        public final JCTree qualifierExpression;
        public final String signature;

        public DCReference(String str, JCTree jCTree, Name name, List<JCTree> list) {
            this.signature = str;
            this.qualifierExpression = jCTree;
            this.memberName = name;
            this.paramTypes = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitReference(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.REFERENCE;
        }

        @Override
        public String getSignature() {
            return this.signature;
        }
    }

    public static class DCReturn extends DCBlockTag implements ReturnTree {
        public final List<DCTree> description;

        public DCReturn(List<DCTree> list) {
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitReturn(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.RETURN;
        }
    }

    public static class DCSee extends DCBlockTag implements SeeTree {
        public final List<DCTree> reference;

        public DCSee(List<DCTree> list) {
            this.reference = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitSee(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.SEE;
        }

        @Override
        public List<? extends DocTree> getReference() {
            return this.reference;
        }
    }

    public static class DCSerial extends DCBlockTag implements SerialTree {
        public final List<DCTree> description;

        public DCSerial(List<DCTree> list) {
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitSerial(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.SERIAL;
        }
    }

    public static class DCSerialData extends DCBlockTag implements SerialDataTree {
        public final List<DCTree> description;

        public DCSerialData(List<DCTree> list) {
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitSerialData(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.SERIAL_DATA;
        }
    }

    public static class DCSerialField extends DCBlockTag implements SerialFieldTree {
        public final List<DCTree> description;
        public final DCIdentifier name;
        public final DCReference type;

        public DCSerialField(DCIdentifier dCIdentifier, DCReference dCReference, List<DCTree> list) {
            this.description = list;
            this.name = dCIdentifier;
            this.type = dCReference;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitSerialField(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.SERIAL_FIELD;
        }

        @Override
        public IdentifierTree getName() {
            return this.name;
        }

        @Override
        public ReferenceTree getType() {
            return this.type;
        }
    }

    public static class DCSince extends DCBlockTag implements SinceTree {
        public final List<DCTree> body;

        public DCSince(List<DCTree> list) {
            this.body = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitSince(this, d10);
        }

        @Override
        public List<? extends DocTree> getBody() {
            return this.body;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.SINCE;
        }
    }

    public static class DCStartElement extends DCEndPosTree<DCStartElement> implements StartElementTree {
        public final List<DCTree> attrs;
        public final Name name;
        public final boolean selfClosing;

        public DCStartElement(Name name, List<DCTree> list, boolean z10) {
            this.name = name;
            this.attrs = list;
            this.selfClosing = z10;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitStartElement(this, d10);
        }

        @Override
        public List<? extends DocTree> getAttributes() {
            return this.attrs;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.START_ELEMENT;
        }

        @Override
        public Name getName() {
            return this.name;
        }

        @Override
        public boolean isSelfClosing() {
            return this.selfClosing;
        }
    }

    public static class DCText extends DCTree implements TextTree {
        public final String text;

        public DCText(String str) {
            this.text = str;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitText(this, d10);
        }

        @Override
        public String getBody() {
            return this.text;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.TEXT;
        }
    }

    public static class DCThrows extends DCBlockTag implements ThrowsTree {
        public final List<DCTree> description;
        public final DocTree.Kind kind;
        public final DCReference name;

        public DCThrows(DocTree.Kind kind, DCReference dCReference, List<DCTree> list) {
            Assert.check(kind == DocTree.Kind.EXCEPTION || kind == DocTree.Kind.THROWS);
            this.kind = kind;
            this.name = dCReference;
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitThrows(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public ReferenceTree getExceptionName() {
            return this.name;
        }

        @Override
        public DocTree.Kind getKind() {
            return this.kind;
        }
    }

    public static class DCUnknownBlockTag extends DCBlockTag implements UnknownBlockTagTree {
        public final List<DCTree> content;
        public final Name name;

        public DCUnknownBlockTag(Name name, List<DCTree> list) {
            this.name = name;
            this.content = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitUnknownBlockTag(this, d10);
        }

        @Override
        public List<? extends DocTree> getContent() {
            return this.content;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.UNKNOWN_BLOCK_TAG;
        }

        @Override
        public String getTagName() {
            return this.name.toString();
        }
    }

    public static class DCUnknownInlineTag extends DCInlineTag implements UnknownInlineTagTree {
        public final List<DCTree> content;
        public final Name name;

        public DCUnknownInlineTag(Name name, List<DCTree> list) {
            this.name = name;
            this.content = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitUnknownInlineTag(this, d10);
        }

        @Override
        public List<? extends DocTree> getContent() {
            return this.content;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.UNKNOWN_INLINE_TAG;
        }

        @Override
        public String getTagName() {
            return this.name.toString();
        }
    }

    public static class DCUses extends DCBlockTag implements UsesTree {
        public final List<DCTree> description;
        public final DCReference serviceType;

        public DCUses(DCReference dCReference, List<DCTree> list) {
            this.serviceType = dCReference;
            this.description = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitUses(this, d10);
        }

        @Override
        public List<? extends DocTree> getDescription() {
            return this.description;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.USES;
        }

        @Override
        public ReferenceTree getServiceType() {
            return this.serviceType;
        }
    }

    public static class DCValue extends DCInlineTag implements ValueTree {
        public final DCReference ref;

        public DCValue(DCReference dCReference) {
            this.ref = dCReference;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitValue(this, d10);
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.VALUE;
        }

        @Override
        public ReferenceTree getReference() {
            return this.ref;
        }
    }

    public static class DCVersion extends DCBlockTag implements VersionTree {
        public final List<DCTree> body;

        public DCVersion(List<DCTree> list) {
            this.body = list;
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitVersion(this, d10);
        }

        @Override
        public List<? extends DocTree> getBody() {
            return this.body;
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.VERSION;
        }
    }

    public long getSourcePosition(DCDocComment dCDocComment) {
        return dCDocComment.comment.getSourcePos(this.pos);
    }

    public JCDiagnostic.DiagnosticPosition pos(DCDocComment dCDocComment) {
        return new JCDiagnostic.SimpleDiagnosticPosition(dCDocComment.comment.getSourcePos(this.pos));
    }

    public String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            new DocPretty(stringWriter).print((DocTree) this);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public static class DCErroneous extends DCTree implements ErroneousTree, JCDiagnostic.DiagnosticPosition {
        public final String body;
        public final JCDiagnostic diag;

        public DCErroneous(String str, JCDiagnostic.Factory factory, DiagnosticSource diagnosticSource, String str2, Object... objArr) {
            this.body = str;
            this.diag = factory.error(null, diagnosticSource, this, str2, objArr);
        }

        @Override
        public <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10) {
            return docTreeVisitor.visitErroneous(this, d10);
        }

        @Override
        public String getBody() {
            return this.body;
        }

        @Override
        public Diagnostic<JavaFileObject> getDiagnostic() {
            return this.diag;
        }

        @Override
        public int getEndPosition(EndPosTable endPosTable) {
            return this.pos + this.body.length();
        }

        @Override
        public DocTree.Kind getKind() {
            return DocTree.Kind.ERRONEOUS;
        }

        @Override
        public int getPreferredPosition() {
            return (this.pos + this.body.length()) - 1;
        }

        @Override
        public int getStartPosition() {
            return this.pos;
        }

        @Override
        public JCTree getTree() {
            return null;
        }

        public DCErroneous(String str, JCDiagnostic jCDiagnostic) {
            this.body = str;
            this.diag = jCDiagnostic;
        }
    }
}
