package org.openjdk.tools.javac.tree;

import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.ListIterator;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.doctree.AttributeTree;
import org.openjdk.source.doctree.AuthorTree;
import org.openjdk.source.doctree.DeprecatedTree;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.doctree.EndElementTree;
import org.openjdk.source.doctree.ErroneousTree;
import org.openjdk.source.doctree.HiddenTree;
import org.openjdk.source.doctree.IdentifierTree;
import org.openjdk.source.doctree.IndexTree;
import org.openjdk.source.doctree.LinkTree;
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
import org.openjdk.source.doctree.VersionTree;
import org.openjdk.source.util.DocTreeFactory;
import org.openjdk.tools.doclint.HtmlTag;
import org.openjdk.tools.javac.api.JavacTrees;
import org.openjdk.tools.javac.parser.ParserFactory;
import org.openjdk.tools.javac.parser.ReferenceParser;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.tree.DCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Pair;

public class DocTreeMaker implements DocTreeFactory {
    protected static final Context.Key<DocTreeMaker> treeMakerKey = new Context.Key<>();
    private final JCDiagnostic.Factory diags;
    public int pos;
    private final ReferenceParser referenceParser;
    final EnumSet<HtmlTag> sentenceBreakTags;
    private final JavacTrees trees;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$sun$source$doctree$DocTree$Kind;

        static {
            int[] iArr = new int[DocTree.Kind.values().length];
            $SwitchMap$com$sun$source$doctree$DocTree$Kind = iArr;
            try {
                iArr[DocTree.Kind.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.START_ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.END_ELEMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DocTreeMaker(Context context) {
        this.pos = -1;
        context.put((Context.Key<Context.Key<DocTreeMaker>>) treeMakerKey, (Context.Key<DocTreeMaker>) this);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.pos = -1;
        this.trees = JavacTrees.instance(context);
        this.referenceParser = new ReferenceParser(ParserFactory.instance(context));
        this.sentenceBreakTags = EnumSet.of(HtmlTag.f102887H1, HtmlTag.f102888H2, HtmlTag.f102889H3, HtmlTag.f102890H4, HtmlTag.f102891H5, HtmlTag.f102892H6, HtmlTag.PRE, HtmlTag.f102894P);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<DCTree> cast(List<? extends DocTree> list) {
        return list;
    }

    private int defaultSentenceBreak(String str) {
        int i10 = -1;
        for (int i11 = 0; i11 < str.length(); i11++) {
            char charAt = str.charAt(i11);
            if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                if (i10 >= 0) {
                    return i11;
                }
            } else {
                i10 = charAt != '.' ? -1 : i11;
            }
        }
        return -1;
    }

    private int getSentenceBreak(String str, DocTree docTree) {
        BreakIterator breakIterator = this.trees.getBreakIterator();
        if (breakIterator == null) {
            return defaultSentenceBreak(str);
        }
        breakIterator.setText(str);
        int next = breakIterator.next();
        if (docTree == null || next < str.length() - 1) {
            return next;
        }
        if (isTextTree(docTree)) {
            breakIterator.setText(str + ((TextTree) docTree).getBody());
            if (next < breakIterator.next()) {
                return next;
            }
        }
        if (isSentenceBreak(docTree, false)) {
            return next;
        }
        breakIterator.setText(str + "Dummy Sentence.");
        int next2 = breakIterator.next();
        if (next2 <= next) {
            return next2;
        }
        return -1;
    }

    public static DocTreeMaker instance(Context context) {
        DocTreeMaker docTreeMaker = (DocTreeMaker) context.get(treeMakerKey);
        return docTreeMaker == null ? new DocTreeMaker(context) : docTreeMaker;
    }

    private boolean isSentenceBreak(Name name) {
        return this.sentenceBreakTags.contains(HtmlTag.get(name));
    }

    private boolean isTextTree(DocTree docTree) {
        return docTree.getKind() == DocTree.Kind.TEXT;
    }

    private String removeTrailingWhitespace(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (!Character.isWhitespace(str.charAt(length))) {
                return str.substring(0, length + 1);
            }
        }
        return str;
    }

    private int skipWhiteSpace(String str, int i10) {
        while (i10 < str.length()) {
            if (!Character.isWhitespace(str.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private Pair<List<DCTree>, List<DCTree>> splitBody(Collection<? extends DocTree> collection) {
        int i10 = this.pos;
        try {
            ListBuffer listBuffer = new ListBuffer();
            ListBuffer listBuffer2 = new ListBuffer();
            if (collection.isEmpty()) {
                return new Pair<>(listBuffer2.toList(), listBuffer.toList());
            }
            ArrayList arrayList = new ArrayList(collection);
            ListIterator listIterator = arrayList.listIterator();
            boolean z10 = false;
            while (listIterator.hasNext()) {
                boolean z11 = !listIterator.hasPrevious();
                DocTree docTree = (DocTree) listIterator.next();
                int i11 = ((DCTree) docTree).pos;
                if (z10) {
                    listBuffer.add((DCTree) docTree);
                } else if (AnonymousClass2.$SwitchMap$com$sun$source$doctree$DocTree$Kind[docTree.getKind().ordinal()] == 1) {
                    DCTree.DCText dCText = (DCTree.DCText) docTree;
                    String body = dCText.getBody();
                    int sentenceBreak = getSentenceBreak(body, listIterator.hasNext() ? (DocTree) arrayList.get(listIterator.nextIndex()) : null);
                    if (sentenceBreak > 0) {
                        listBuffer2.add(at(i11).newTextTree(removeTrailingWhitespace(body.substring(0, sentenceBreak))));
                        int skipWhiteSpace = skipWhiteSpace(dCText.getBody(), sentenceBreak);
                        if (skipWhiteSpace > 0) {
                            listBuffer.add(at(i11 + skipWhiteSpace).newTextTree(dCText.getBody().substring(skipWhiteSpace)));
                        }
                    } else {
                        if (listIterator.hasNext() && isSentenceBreak((DocTree) arrayList.get(listIterator.nextIndex()), false)) {
                            DocTree docTree2 = (DocTree) listIterator.next();
                            listBuffer2.add(at(i11).newTextTree(removeTrailingWhitespace(body)));
                            listBuffer.add((DCTree) docTree2);
                        }
                        listBuffer2.add((DCTree) docTree);
                    }
                    z10 = true;
                } else if (isSentenceBreak(docTree, z11)) {
                    listBuffer.add((DCTree) docTree);
                    z10 = true;
                } else {
                    listBuffer2.add((DCTree) docTree);
                }
            }
            return new Pair<>(listBuffer2.toList(), listBuffer.toList());
        } finally {
            this.pos = i10;
        }
    }

    @Override
    public List<DocTree> getFirstSentence(List<? extends DocTree> list) {
        return new ArrayList(splitBody(list).fst);
    }

    @Override
    public AttributeTree newAttributeTree(Name name, AttributeTree.ValueKind valueKind, List list) {
        return newAttributeTree(name, valueKind, (List<? extends DocTree>) list);
    }

    @Override
    public AuthorTree newAuthorTree(List list) {
        return newAuthorTree((List<? extends DocTree>) list);
    }

    @Override
    public DeprecatedTree newDeprecatedTree(List list) {
        return newDeprecatedTree((List<? extends DocTree>) list);
    }

    @Override
    public DocCommentTree newDocCommentTree(List list, List list2) {
        return newDocCommentTree((List<? extends DocTree>) list, (List<? extends DocTree>) list2);
    }

    @Override
    public ErroneousTree newErroneousTree(String str, Diagnostic diagnostic) {
        return newErroneousTree(str, (Diagnostic<JavaFileObject>) diagnostic);
    }

    @Override
    public ThrowsTree newExceptionTree(ReferenceTree referenceTree, List list) {
        return newExceptionTree(referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public HiddenTree newHiddenTree(List list) {
        return newHiddenTree((List<? extends DocTree>) list);
    }

    @Override
    public IndexTree newIndexTree(DocTree docTree, List list) {
        return newIndexTree(docTree, (List<? extends DocTree>) list);
    }

    @Override
    public LinkTree newLinkPlainTree(ReferenceTree referenceTree, List list) {
        return newLinkPlainTree(referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public LinkTree newLinkTree(ReferenceTree referenceTree, List list) {
        return newLinkTree(referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public ParamTree newParamTree(boolean z10, IdentifierTree identifierTree, List list) {
        return newParamTree(z10, identifierTree, (List<? extends DocTree>) list);
    }

    @Override
    public ProvidesTree newProvidesTree(ReferenceTree referenceTree, List list) {
        return newProvidesTree(referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public ReturnTree newReturnTree(List list) {
        return newReturnTree((List<? extends DocTree>) list);
    }

    @Override
    public SeeTree newSeeTree(List list) {
        return newSeeTree((List<? extends DocTree>) list);
    }

    @Override
    public SerialDataTree newSerialDataTree(List list) {
        return newSerialDataTree((List<? extends DocTree>) list);
    }

    @Override
    public SerialFieldTree newSerialFieldTree(IdentifierTree identifierTree, ReferenceTree referenceTree, List list) {
        return newSerialFieldTree(identifierTree, referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public SerialTree newSerialTree(List list) {
        return newSerialTree((List<? extends DocTree>) list);
    }

    @Override
    public SinceTree newSinceTree(List list) {
        return newSinceTree((List<? extends DocTree>) list);
    }

    @Override
    public StartElementTree newStartElementTree(Name name, List list, boolean z10) {
        return newStartElementTree(name, (List<? extends DocTree>) list, z10);
    }

    @Override
    public ThrowsTree newThrowsTree(ReferenceTree referenceTree, List list) {
        return newThrowsTree(referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public UnknownBlockTagTree newUnknownBlockTagTree(Name name, List list) {
        return newUnknownBlockTagTree(name, (List<? extends DocTree>) list);
    }

    @Override
    public UnknownInlineTagTree newUnknownInlineTagTree(Name name, List list) {
        return newUnknownInlineTagTree(name, (List<? extends DocTree>) list);
    }

    @Override
    public UsesTree newUsesTree(ReferenceTree referenceTree, List list) {
        return newUsesTree(referenceTree, (List<? extends DocTree>) list);
    }

    @Override
    public VersionTree newVersionTree(List list) {
        return newVersionTree((List<? extends DocTree>) list);
    }

    private boolean isSentenceBreak(DocTree docTree, boolean z10) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$source$doctree$DocTree$Kind[docTree.getKind().ordinal()];
        if (i10 == 2) {
            return !z10 && ((DCTree) docTree).pos > 1 && isSentenceBreak(((StartElementTree) docTree).getName());
        }
        if (i10 != 3) {
            return false;
        }
        return !z10 && ((DCTree) docTree).pos > 1 && isSentenceBreak(((EndElementTree) docTree).getName());
    }

    @Override
    public DocTreeMaker at(int i10) {
        this.pos = i10;
        return this;
    }

    @Override
    public DCTree.DCAttribute newAttributeTree(Name name, AttributeTree.ValueKind valueKind, List<? extends DocTree> list) {
        DCTree.DCAttribute dCAttribute = new DCTree.DCAttribute(name, valueKind, cast(list));
        dCAttribute.pos = this.pos;
        return dCAttribute;
    }

    @Override
    public DCTree.DCAuthor newAuthorTree(List<? extends DocTree> list) {
        DCTree.DCAuthor dCAuthor = new DCTree.DCAuthor(cast(list));
        dCAuthor.pos = this.pos;
        return dCAuthor;
    }

    @Override
    public DCTree.DCLiteral newCodeTree(TextTree textTree) {
        DCTree.DCLiteral dCLiteral = new DCTree.DCLiteral(DocTree.Kind.CODE, (DCTree.DCText) textTree);
        dCLiteral.pos = this.pos;
        return dCLiteral;
    }

    @Override
    public DCTree.DCComment newCommentTree(String str) {
        DCTree.DCComment dCComment = new DCTree.DCComment(str);
        dCComment.pos = this.pos;
        return dCComment;
    }

    @Override
    public DCTree.DCDeprecated newDeprecatedTree(List<? extends DocTree> list) {
        DCTree.DCDeprecated dCDeprecated = new DCTree.DCDeprecated(cast(list));
        dCDeprecated.pos = this.pos;
        return dCDeprecated;
    }

    public DCTree.DCDocComment newDocCommentTree(Tokens.Comment comment, List<? extends DocTree> list, List<? extends DocTree> list2) {
        Pair<List<DCTree>, List<DCTree>> splitBody = splitBody(list);
        DCTree.DCDocComment dCDocComment = new DCTree.DCDocComment(comment, cast(list), splitBody.fst, splitBody.snd, cast(list2));
        dCDocComment.pos = this.pos;
        return dCDocComment;
    }

    @Override
    public DCTree.DCDocRoot newDocRootTree() {
        DCTree.DCDocRoot dCDocRoot = new DCTree.DCDocRoot();
        dCDocRoot.pos = this.pos;
        return dCDocRoot;
    }

    @Override
    public DCTree.DCEndElement newEndElementTree(Name name) {
        DCTree.DCEndElement dCEndElement = new DCTree.DCEndElement(name);
        dCEndElement.pos = this.pos;
        return dCEndElement;
    }

    @Override
    public DCTree.DCEntity newEntityTree(Name name) {
        DCTree.DCEntity dCEntity = new DCTree.DCEntity(name);
        dCEntity.pos = this.pos;
        return dCEntity;
    }

    @Override
    public DCTree.DCErroneous newErroneousTree(String str, Diagnostic<JavaFileObject> diagnostic) {
        DCTree.DCErroneous dCErroneous = new DCTree.DCErroneous(str, (JCDiagnostic) diagnostic);
        dCErroneous.pos = this.pos;
        return dCErroneous;
    }

    @Override
    public DCTree.DCThrows newExceptionTree(ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCThrows dCThrows = new DCTree.DCThrows(DocTree.Kind.EXCEPTION, (DCTree.DCReference) referenceTree, cast(list));
        dCThrows.pos = this.pos;
        return dCThrows;
    }

    @Override
    public DCTree.DCHidden newHiddenTree(List<? extends DocTree> list) {
        DCTree.DCHidden dCHidden = new DCTree.DCHidden(cast(list));
        dCHidden.pos = this.pos;
        return dCHidden;
    }

    @Override
    public DCTree.DCIdentifier newIdentifierTree(Name name) {
        DCTree.DCIdentifier dCIdentifier = new DCTree.DCIdentifier(name);
        dCIdentifier.pos = this.pos;
        return dCIdentifier;
    }

    @Override
    public DCTree.DCIndex newIndexTree(DocTree docTree, List<? extends DocTree> list) {
        DCTree.DCIndex dCIndex = new DCTree.DCIndex((DCTree) docTree, cast(list));
        dCIndex.pos = this.pos;
        return dCIndex;
    }

    @Override
    public DCTree.DCInheritDoc newInheritDocTree() {
        DCTree.DCInheritDoc dCInheritDoc = new DCTree.DCInheritDoc();
        dCInheritDoc.pos = this.pos;
        return dCInheritDoc;
    }

    @Override
    public DCTree.DCLink newLinkPlainTree(ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCLink dCLink = new DCTree.DCLink(DocTree.Kind.LINK_PLAIN, (DCTree.DCReference) referenceTree, cast(list));
        dCLink.pos = this.pos;
        return dCLink;
    }

    @Override
    public DCTree.DCLink newLinkTree(ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCLink dCLink = new DCTree.DCLink(DocTree.Kind.LINK, (DCTree.DCReference) referenceTree, cast(list));
        dCLink.pos = this.pos;
        return dCLink;
    }

    @Override
    public DCTree.DCLiteral newLiteralTree(TextTree textTree) {
        DCTree.DCLiteral dCLiteral = new DCTree.DCLiteral(DocTree.Kind.LITERAL, (DCTree.DCText) textTree);
        dCLiteral.pos = this.pos;
        return dCLiteral;
    }

    @Override
    public DCTree.DCParam newParamTree(boolean z10, IdentifierTree identifierTree, List<? extends DocTree> list) {
        DCTree.DCParam dCParam = new DCTree.DCParam(z10, (DCTree.DCIdentifier) identifierTree, cast(list));
        dCParam.pos = this.pos;
        return dCParam;
    }

    @Override
    public DCTree.DCProvides newProvidesTree(ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCProvides dCProvides = new DCTree.DCProvides((DCTree.DCReference) referenceTree, cast(list));
        dCProvides.pos = this.pos;
        return dCProvides;
    }

    @Override
    public DCTree.DCReference newReferenceTree(String str) {
        try {
            ReferenceParser.Reference parse = this.referenceParser.parse(str);
            DCTree.DCReference dCReference = new DCTree.DCReference(str, parse.qualExpr, parse.member, parse.paramTypes);
            dCReference.pos = this.pos;
            return dCReference;
        } catch (ReferenceParser.ParseException e10) {
            throw new IllegalArgumentException("invalid signature", e10);
        }
    }

    @Override
    public DCTree.DCReturn newReturnTree(List<? extends DocTree> list) {
        DCTree.DCReturn dCReturn = new DCTree.DCReturn(cast(list));
        dCReturn.pos = this.pos;
        return dCReturn;
    }

    @Override
    public DCTree.DCSee newSeeTree(List<? extends DocTree> list) {
        DCTree.DCSee dCSee = new DCTree.DCSee(cast(list));
        dCSee.pos = this.pos;
        return dCSee;
    }

    @Override
    public DCTree.DCSerialData newSerialDataTree(List<? extends DocTree> list) {
        DCTree.DCSerialData dCSerialData = new DCTree.DCSerialData(cast(list));
        dCSerialData.pos = this.pos;
        return dCSerialData;
    }

    @Override
    public DCTree.DCSerialField newSerialFieldTree(IdentifierTree identifierTree, ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCSerialField dCSerialField = new DCTree.DCSerialField((DCTree.DCIdentifier) identifierTree, (DCTree.DCReference) referenceTree, cast(list));
        dCSerialField.pos = this.pos;
        return dCSerialField;
    }

    @Override
    public DCTree.DCSerial newSerialTree(List<? extends DocTree> list) {
        DCTree.DCSerial dCSerial = new DCTree.DCSerial(cast(list));
        dCSerial.pos = this.pos;
        return dCSerial;
    }

    @Override
    public DCTree.DCSince newSinceTree(List<? extends DocTree> list) {
        DCTree.DCSince dCSince = new DCTree.DCSince(cast(list));
        dCSince.pos = this.pos;
        return dCSince;
    }

    @Override
    public DCTree.DCStartElement newStartElementTree(Name name, List<? extends DocTree> list, boolean z10) {
        DCTree.DCStartElement dCStartElement = new DCTree.DCStartElement(name, cast(list), z10);
        dCStartElement.pos = this.pos;
        return dCStartElement;
    }

    @Override
    public DCTree.DCText newTextTree(String str) {
        DCTree.DCText dCText = new DCTree.DCText(str);
        dCText.pos = this.pos;
        return dCText;
    }

    @Override
    public DCTree.DCThrows newThrowsTree(ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCThrows dCThrows = new DCTree.DCThrows(DocTree.Kind.THROWS, (DCTree.DCReference) referenceTree, cast(list));
        dCThrows.pos = this.pos;
        return dCThrows;
    }

    @Override
    public DCTree.DCUnknownBlockTag newUnknownBlockTagTree(Name name, List<? extends DocTree> list) {
        DCTree.DCUnknownBlockTag dCUnknownBlockTag = new DCTree.DCUnknownBlockTag(name, cast(list));
        dCUnknownBlockTag.pos = this.pos;
        return dCUnknownBlockTag;
    }

    @Override
    public DCTree.DCUnknownInlineTag newUnknownInlineTagTree(Name name, List<? extends DocTree> list) {
        DCTree.DCUnknownInlineTag dCUnknownInlineTag = new DCTree.DCUnknownInlineTag(name, cast(list));
        dCUnknownInlineTag.pos = this.pos;
        return dCUnknownInlineTag;
    }

    @Override
    public DCTree.DCUses newUsesTree(ReferenceTree referenceTree, List<? extends DocTree> list) {
        DCTree.DCUses dCUses = new DCTree.DCUses((DCTree.DCReference) referenceTree, cast(list));
        dCUses.pos = this.pos;
        return dCUses;
    }

    @Override
    public DCTree.DCValue newValueTree(ReferenceTree referenceTree) {
        DCTree.DCValue dCValue = new DCTree.DCValue((DCTree.DCReference) referenceTree);
        dCValue.pos = this.pos;
        return dCValue;
    }

    @Override
    public DCTree.DCVersion newVersionTree(List<? extends DocTree> list) {
        DCTree.DCVersion dCVersion = new DCTree.DCVersion(cast(list));
        dCVersion.pos = this.pos;
        return dCVersion;
    }

    public DocTreeMaker at(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        this.pos = diagnosticPosition == null ? -1 : diagnosticPosition.getStartPosition();
        return this;
    }

    public DCTree.DCErroneous newErroneousTree(String str, DiagnosticSource diagnosticSource, String str2, Object... objArr) {
        DCTree.DCErroneous dCErroneous = new DCTree.DCErroneous(str, this.diags, diagnosticSource, str2, objArr);
        dCErroneous.pos = this.pos;
        return dCErroneous;
    }

    @Override
    public DCTree.DCDocComment newDocCommentTree(List<? extends DocTree> list, List<? extends DocTree> list2) {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.addAll(cast(list));
        org.openjdk.tools.javac.util.List list3 = listBuffer.toList();
        Tokens.Comment comment = new Tokens.Comment() {
            @Override
            public int getSourcePos(int i10) {
                return -1;
            }

            @Override
            public Tokens.Comment.CommentStyle getStyle() {
                return Tokens.Comment.CommentStyle.JAVADOC;
            }

            @Override
            public String getText() {
                return null;
            }

            @Override
            public boolean isDeprecated() {
                return false;
            }
        };
        Pair<List<DCTree>, List<DCTree>> splitBody = splitBody(list);
        return new DCTree.DCDocComment(comment, list3, splitBody.fst, splitBody.snd, cast(list2));
    }

    public DCTree.DCReference newReferenceTree(String str, JCTree jCTree, Name name, List<JCTree> list) {
        DCTree.DCReference dCReference = new DCTree.DCReference(str, jCTree, name, list);
        dCReference.pos = this.pos;
        return dCReference;
    }
}
