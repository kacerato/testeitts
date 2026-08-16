package org.openjdk.tools.javac.tree;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;
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
import org.openjdk.tools.javac.util.Convert;

public class DocPretty implements DocTreeVisitor<Void, Void> {
    final Writer out;
    int lmargin = 0;
    final String lineSep = System.getProperty("line.separator");

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind;

        static {
            int[] iArr = new int[AttributeTree.ValueKind.values().length];
            $SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind = iArr;
            try {
                iArr[AttributeTree.ValueKind.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind[AttributeTree.ValueKind.UNQUOTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind[AttributeTree.ValueKind.SINGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind[AttributeTree.ValueKind.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class UncheckedIOException extends Error {
        static final long serialVersionUID = -4032692679158424751L;

        public UncheckedIOException(IOException iOException) {
            super(iOException.getMessage(), iOException);
        }
    }

    public DocPretty(Writer writer) {
        this.out = writer;
    }

    public void print(DocTree docTree) throws IOException {
        try {
            if (docTree == null) {
                print("/*missing*/");
            } else {
                docTree.accept(this, null);
            }
        } catch (UncheckedIOException e10) {
            throw new IOException(e10.getMessage(), e10);
        }
    }

    public void printTagName(DocTree docTree) throws IOException {
        this.out.write("@");
        this.out.write(docTree.getKind().tagName);
    }

    public void println() throws IOException {
        this.out.write(this.lineSep);
    }

    @Override
    public Void visitAttribute(AttributeTree attributeTree, Void r52) {
        String str;
        try {
            print(attributeTree.getName());
            int i10 = AnonymousClass1.$SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind[attributeTree.getValueKind().ordinal()];
            if (i10 == 1) {
                str = null;
            } else if (i10 == 2) {
                str = "";
            } else if (i10 == 3) {
                str = "'";
            } else if (i10 == 4) {
                str = JavadocConstants.ANCHOR_PREFIX_END;
            } else {
                throw new AssertionError();
            }
            if (str != null) {
                print("=" + str);
                print(attributeTree.getValue());
                print(str);
            }
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitAuthor(AuthorTree authorTree, Void r22) {
        try {
            printTagName(authorTree);
            print(" ");
            print(authorTree.getName());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitComment(CommentTree commentTree, Void r22) {
        try {
            print(commentTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitDeprecated(DeprecatedTree deprecatedTree, Void r22) {
        try {
            printTagName(deprecatedTree);
            if (deprecatedTree.getBody().isEmpty()) {
                return null;
            }
            print(" ");
            print(deprecatedTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitDocComment(DocCommentTree docCommentTree, Void r32) {
        try {
            List<? extends DocTree> fullBody = docCommentTree.getFullBody();
            List<? extends DocTree> blockTags = docCommentTree.getBlockTags();
            print(fullBody);
            if (!fullBody.isEmpty() && !blockTags.isEmpty()) {
                print("\n");
            }
            print(blockTags, "\n");
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitDocRoot(DocRootTree docRootTree, Void r22) {
        try {
            print("{");
            printTagName(docRootTree);
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitEndElement(EndElementTree endElementTree, Void r22) {
        try {
            print("</");
            print(endElementTree.getName());
            print(">");
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitEntity(EntityTree entityTree, Void r22) {
        try {
            print("&");
            print(entityTree.getName());
            print(";");
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitErroneous(ErroneousTree erroneousTree, Void r22) {
        try {
            print(erroneousTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitHidden(HiddenTree hiddenTree, Void r22) {
        try {
            printTagName(hiddenTree);
            if (hiddenTree.getBody().isEmpty()) {
                return null;
            }
            print(" ");
            print(hiddenTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitIdentifier(IdentifierTree identifierTree, Void r22) {
        try {
            print(identifierTree.getName());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitIndex(IndexTree indexTree, Void r32) {
        try {
            print("{");
            printTagName(indexTree);
            print(" ");
            print(indexTree.getSearchTerm());
            if (!indexTree.getDescription().isEmpty()) {
                print(" ");
                print(indexTree.getDescription());
            }
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitInheritDoc(InheritDocTree inheritDocTree, Void r22) {
        try {
            print("{");
            printTagName(inheritDocTree);
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitLink(LinkTree linkTree, Void r32) {
        try {
            print("{");
            printTagName(linkTree);
            print(" ");
            print((DocTree) linkTree.getReference());
            if (!linkTree.getLabel().isEmpty()) {
                print(" ");
                print(linkTree.getLabel());
            }
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitLiteral(LiteralTree literalTree, Void r32) {
        try {
            print("{");
            printTagName(literalTree);
            String body = literalTree.getBody().getBody();
            if (!body.isEmpty() && !Character.isWhitespace(body.charAt(0))) {
                print(" ");
            }
            print((DocTree) literalTree.getBody());
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitOther(DocTree docTree, Void r32) {
        try {
            print("(UNKNOWN: " + ((Object) docTree) + ")");
            println();
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitParam(ParamTree paramTree, Void r32) {
        try {
            printTagName(paramTree);
            print(" ");
            if (paramTree.isTypeParameter()) {
                print("<");
            }
            print((DocTree) paramTree.getName());
            if (paramTree.isTypeParameter()) {
                print(">");
            }
            if (paramTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(paramTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitProvides(ProvidesTree providesTree, Void r32) {
        try {
            printTagName(providesTree);
            print(" ");
            print((DocTree) providesTree.getServiceType());
            if (providesTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(providesTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitReference(ReferenceTree referenceTree, Void r22) {
        try {
            print(referenceTree.getSignature());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitReturn(ReturnTree returnTree, Void r22) {
        try {
            printTagName(returnTree);
            print(" ");
            print(returnTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitSee(SeeTree seeTree, Void r62) {
        try {
            printTagName(seeTree);
            boolean z10 = true;
            boolean z11 = true;
            for (DocTree docTree : seeTree.getReference()) {
                if (z10) {
                    print(" ");
                }
                boolean z12 = z11 && (docTree instanceof ReferenceTree);
                print(docTree);
                boolean z13 = z12;
                z11 = false;
                z10 = z13;
            }
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitSerial(SerialTree serialTree, Void r22) {
        try {
            printTagName(serialTree);
            if (serialTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(serialTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitSerialData(SerialDataTree serialDataTree, Void r22) {
        try {
            printTagName(serialDataTree);
            if (serialDataTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(serialDataTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitSerialField(SerialFieldTree serialFieldTree, Void r32) {
        try {
            printTagName(serialFieldTree);
            print(" ");
            print((DocTree) serialFieldTree.getName());
            print(" ");
            print((DocTree) serialFieldTree.getType());
            if (serialFieldTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(serialFieldTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitSince(SinceTree sinceTree, Void r22) {
        try {
            printTagName(sinceTree);
            print(" ");
            print(sinceTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitStartElement(StartElementTree startElementTree, Void r42) {
        try {
            print("<");
            print(startElementTree.getName());
            List<? extends DocTree> attributes = startElementTree.getAttributes();
            if (!attributes.isEmpty()) {
                print(" ");
                print(attributes);
                DocTree docTree = startElementTree.getAttributes().get(attributes.size() - 1);
                if (startElementTree.isSelfClosing() && (docTree instanceof AttributeTree) && ((AttributeTree) docTree).getValueKind() == AttributeTree.ValueKind.UNQUOTED) {
                    print(" ");
                }
            }
            if (startElementTree.isSelfClosing()) {
                print("/");
            }
            print(">");
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitText(TextTree textTree, Void r22) {
        try {
            print(textTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitThrows(ThrowsTree throwsTree, Void r32) {
        try {
            printTagName(throwsTree);
            print(" ");
            print((DocTree) throwsTree.getExceptionName());
            if (throwsTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(throwsTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitUnknownBlockTag(UnknownBlockTagTree unknownBlockTagTree, Void r22) {
        try {
            print("@");
            print(unknownBlockTagTree.getTagName());
            print(" ");
            print(unknownBlockTagTree.getContent());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitUnknownInlineTag(UnknownInlineTagTree unknownInlineTagTree, Void r22) {
        try {
            print("{");
            print("@");
            print(unknownInlineTagTree.getTagName());
            print(" ");
            print(unknownInlineTagTree.getContent());
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitUses(UsesTree usesTree, Void r32) {
        try {
            printTagName(usesTree);
            print(" ");
            print((DocTree) usesTree.getServiceType());
            if (usesTree.getDescription().isEmpty()) {
                return null;
            }
            print(" ");
            print(usesTree.getDescription());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitValue(ValueTree valueTree, Void r22) {
        try {
            print("{");
            printTagName(valueTree);
            if (valueTree.getReference() != null) {
                print(" ");
                print((DocTree) valueTree.getReference());
            }
            print(VectorFormat.DEFAULT_SUFFIX);
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public Void visitVersion(VersionTree versionTree, Void r22) {
        try {
            printTagName(versionTree);
            print(" ");
            print(versionTree.getBody());
            return null;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public void print(Object obj) throws IOException {
        this.out.write(Convert.escapeUnicode(obj.toString()));
    }

    public void print(List<? extends DocTree> list) throws IOException {
        Iterator<? extends DocTree> it = list.iterator();
        while (it.hasNext()) {
            print(it.next());
        }
    }

    public void print(List<? extends DocTree> list, String str) throws IOException {
        if (list.isEmpty()) {
            return;
        }
        boolean z10 = true;
        for (DocTree docTree : list) {
            if (!z10) {
                print(str);
            }
            print(docTree);
            z10 = false;
        }
    }
}
