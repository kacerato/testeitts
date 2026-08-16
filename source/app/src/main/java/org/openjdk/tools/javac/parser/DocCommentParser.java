package org.openjdk.tools.javac.parser;

import java.text.BreakIterator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.v;
import org.openjdk.source.doctree.AttributeTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.doctree.IdentifierTree;
import org.openjdk.source.doctree.ReferenceTree;
import org.openjdk.source.doctree.TextTree;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.tree.DCTree;
import org.openjdk.tools.javac.tree.DocTreeMaker;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import yd.C16181m;

public class DocCommentParser {
    protected int bp;
    protected char[] buf;
    protected int buflen;

    protected char f103283ch;
    final Tokens.Comment comment;
    final DiagnosticSource diagSource;
    final ParserFactory fac;
    int lastNonWhite;

    final DocTreeMaker f103284m;
    final Names names;
    boolean newline;
    BreakIterator sentenceBreaker;
    Map<Name, TagParser> tagParsers;
    int textStart;

    public static class AnonymousClass24 {
        static final int[] $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$TagParser$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$WhitespaceRetentionPolicy;

        static {
            int[] iArr = new int[WhitespaceRetentionPolicy.values().length];
            $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$WhitespaceRetentionPolicy = iArr;
            try {
                iArr[WhitespaceRetentionPolicy.REMOVE_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$WhitespaceRetentionPolicy[WhitespaceRetentionPolicy.REMOVE_FIRST_SPACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$WhitespaceRetentionPolicy[WhitespaceRetentionPolicy.RETAIN_ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TagParser.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$TagParser$Kind = iArr2;
            try {
                iArr2[TagParser.Kind.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$DocCommentParser$TagParser$Kind[TagParser.Kind.INLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static class ParseException extends Exception {
        private static final long serialVersionUID = 0;

        public ParseException(String str) {
            super(str);
        }
    }

    public enum WhitespaceRetentionPolicy {
        RETAIN_ALL,
        REMOVE_FIRST_SPACE,
        REMOVE_ALL
    }

    public DocCommentParser(ParserFactory parserFactory, DiagnosticSource diagnosticSource, Tokens.Comment comment) {
        this.textStart = -1;
        this.lastNonWhite = -1;
        this.newline = true;
        this.fac = parserFactory;
        this.diagSource = diagnosticSource;
        this.comment = comment;
        this.names = parserFactory.names;
        this.f103284m = parserFactory.docTreeMaker;
        initTagParsers();
    }

    private void initTagParsers() {
        TagParser.Kind kind = TagParser.Kind.BLOCK;
        TagParser tagParser = new TagParser(kind, DocTree.Kind.AUTHOR) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newAuthorTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        };
        TagParser.Kind kind2 = TagParser.Kind.INLINE;
        boolean z10 = true;
        TagParser[] tagParserArr = {tagParser, new TagParser(kind2, DocTree.Kind.CODE, z10) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DCTree inlineText = DocCommentParser.this.inlineText(WhitespaceRetentionPolicy.REMOVE_FIRST_SPACE);
                DocCommentParser.this.nextChar();
                return DocCommentParser.this.f103284m.at(i10).newCodeTree((TextTree) inlineText);
            }
        }, new TagParser(kind, DocTree.Kind.DEPRECATED) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newDeprecatedTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind2, DocTree.Kind.DOC_ROOT) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser docCommentParser = DocCommentParser.this;
                if (docCommentParser.f103283ch == '}') {
                    docCommentParser.nextChar();
                    return DocCommentParser.this.f103284m.at(i10).newDocRootTree();
                }
                docCommentParser.inlineText(WhitespaceRetentionPolicy.REMOVE_ALL);
                DocCommentParser.this.nextChar();
                throw new ParseException("dc.unexpected.content");
            }
        }, new TagParser(kind, DocTree.Kind.EXCEPTION) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser.this.skipWhitespace();
                return DocCommentParser.this.f103284m.at(i10).newExceptionTree((ReferenceTree) DocCommentParser.this.reference(false), (List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.HIDDEN) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newHiddenTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind2, DocTree.Kind.INDEX) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser.this.skipWhitespace();
                DocCommentParser docCommentParser = DocCommentParser.this;
                char c10 = docCommentParser.f103283ch;
                if (c10 == '}') {
                    throw new ParseException("dc.no.content");
                }
                DCTree.DCText quotedString = c10 == '\"' ? docCommentParser.quotedString() : docCommentParser.inlineWord();
                if (quotedString == null) {
                    throw new ParseException("dc.no.content");
                }
                DocCommentParser.this.skipWhitespace();
                org.openjdk.tools.javac.util.List nil = org.openjdk.tools.javac.util.List.nil();
                DocCommentParser docCommentParser2 = DocCommentParser.this;
                if (docCommentParser2.f103283ch != '}') {
                    nil = docCommentParser2.inlineContent();
                } else {
                    docCommentParser2.nextChar();
                }
                return DocCommentParser.this.f103284m.at(i10).newIndexTree((DocTree) quotedString, (List<? extends DocTree>) nil);
            }
        }, new TagParser(kind2, DocTree.Kind.INHERIT_DOC) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser docCommentParser = DocCommentParser.this;
                if (docCommentParser.f103283ch == '}') {
                    docCommentParser.nextChar();
                    return DocCommentParser.this.f103284m.at(i10).newInheritDocTree();
                }
                docCommentParser.inlineText(WhitespaceRetentionPolicy.REMOVE_ALL);
                DocCommentParser.this.nextChar();
                throw new ParseException("dc.unexpected.content");
            }
        }, new TagParser(kind2, DocTree.Kind.LINK) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                return DocCommentParser.this.f103284m.at(i10).newLinkTree((ReferenceTree) DocCommentParser.this.reference(true), (List<? extends DocTree>) DocCommentParser.this.inlineContent());
            }
        }, new TagParser(kind2, DocTree.Kind.LINK_PLAIN) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                return DocCommentParser.this.f103284m.at(i10).newLinkPlainTree((ReferenceTree) DocCommentParser.this.reference(true), (List<? extends DocTree>) DocCommentParser.this.inlineContent());
            }
        }, new TagParser(kind2, DocTree.Kind.LITERAL, z10) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DCTree inlineText = DocCommentParser.this.inlineText(WhitespaceRetentionPolicy.REMOVE_FIRST_SPACE);
                DocCommentParser.this.nextChar();
                return DocCommentParser.this.f103284m.at(i10).newLiteralTree((TextTree) inlineText);
            }
        }, new TagParser(kind, DocTree.Kind.PARAM) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                boolean z11;
                DocCommentParser.this.skipWhitespace();
                DocCommentParser docCommentParser = DocCommentParser.this;
                if (docCommentParser.f103283ch == '<') {
                    docCommentParser.nextChar();
                    z11 = true;
                } else {
                    z11 = false;
                }
                DCTree.DCIdentifier identifier = DocCommentParser.this.identifier();
                if (z11) {
                    DocCommentParser docCommentParser2 = DocCommentParser.this;
                    if (docCommentParser2.f103283ch != '>') {
                        throw new ParseException("dc.gt.expected");
                    }
                    docCommentParser2.nextChar();
                }
                DocCommentParser.this.skipWhitespace();
                return DocCommentParser.this.f103284m.at(i10).newParamTree(z11, (IdentifierTree) identifier, (List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.PROVIDES) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser.this.skipWhitespace();
                return DocCommentParser.this.f103284m.at(i10).newProvidesTree((ReferenceTree) DocCommentParser.this.reference(true), (List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.RETURN) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newReturnTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.SEE) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser.this.skipWhitespace();
                DocCommentParser docCommentParser = DocCommentParser.this;
                char c10 = docCommentParser.f103283ch;
                if (c10 != 26) {
                    if (c10 == '\"') {
                        DCTree.DCText quotedString = docCommentParser.quotedString();
                        if (quotedString != null) {
                            DocCommentParser.this.skipWhitespace();
                            DocCommentParser docCommentParser2 = DocCommentParser.this;
                            char c11 = docCommentParser2.f103283ch;
                            if (c11 == '@' || (c11 == 26 && docCommentParser2.bp == docCommentParser2.buf.length - 1)) {
                                return docCommentParser2.f103284m.at(i10).newSeeTree((List<? extends DocTree>) org.openjdk.tools.javac.util.List.of(quotedString));
                            }
                        }
                    } else if (c10 == '<') {
                        org.openjdk.tools.javac.util.List<DCTree> blockContent = docCommentParser.blockContent();
                        if (blockContent != null) {
                            return DocCommentParser.this.f103284m.at(i10).newSeeTree((List<? extends DocTree>) blockContent);
                        }
                    } else if (c10 != '@') {
                        if (docCommentParser.isJavaIdentifierStart(c10) || DocCommentParser.this.f103283ch == '#') {
                            DCTree.DCReference reference = DocCommentParser.this.reference(true);
                            return DocCommentParser.this.f103284m.at(i10).newSeeTree((List<? extends DocTree>) DocCommentParser.this.blockContent().prepend(reference));
                        }
                    } else if (docCommentParser.newline) {
                        throw new ParseException("dc.no.content");
                    }
                } else if (docCommentParser.bp == docCommentParser.buf.length - 1) {
                    throw new ParseException("dc.no.content");
                }
                throw new ParseException("dc.unexpected.content");
            }
        }, new TagParser(kind, DocTree.Kind.SERIAL_DATA) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newSerialDataTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.SERIAL_FIELD) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                org.openjdk.tools.javac.util.List<DCTree> list;
                DocCommentParser.this.skipWhitespace();
                DCTree.DCIdentifier identifier = DocCommentParser.this.identifier();
                DocCommentParser.this.skipWhitespace();
                DCTree.DCReference reference = DocCommentParser.this.reference(false);
                DocCommentParser docCommentParser = DocCommentParser.this;
                if (docCommentParser.isWhitespace(docCommentParser.f103283ch)) {
                    DocCommentParser.this.skipWhitespace();
                    list = DocCommentParser.this.blockContent();
                } else {
                    list = null;
                }
                return DocCommentParser.this.f103284m.at(i10).newSerialFieldTree((IdentifierTree) identifier, (ReferenceTree) reference, (List<? extends DocTree>) list);
            }
        }, new TagParser(kind, DocTree.Kind.SERIAL) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newSerialTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.SINCE) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newSinceTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.THROWS) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser.this.skipWhitespace();
                return DocCommentParser.this.f103284m.at(i10).newThrowsTree((ReferenceTree) DocCommentParser.this.reference(false), (List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind, DocTree.Kind.USES) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DocCommentParser.this.skipWhitespace();
                return DocCommentParser.this.f103284m.at(i10).newUsesTree((ReferenceTree) DocCommentParser.this.reference(true), (List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }, new TagParser(kind2, DocTree.Kind.VALUE) {
            @Override
            public DCTree parse(int i10) throws ParseException {
                DCTree.DCReference reference = DocCommentParser.this.reference(true);
                DocCommentParser.this.skipWhitespace();
                DocCommentParser docCommentParser = DocCommentParser.this;
                if (docCommentParser.f103283ch == '}') {
                    docCommentParser.nextChar();
                    return DocCommentParser.this.f103284m.at(i10).newValueTree((ReferenceTree) reference);
                }
                docCommentParser.nextChar();
                throw new ParseException("dc.unexpected.content");
            }
        }, new TagParser(kind, DocTree.Kind.VERSION) {
            @Override
            public DCTree parse(int i10) {
                return DocCommentParser.this.f103284m.at(i10).newVersionTree((List<? extends DocTree>) DocCommentParser.this.blockContent());
            }
        }};
        this.tagParsers = new HashMap();
        for (int i10 = 0; i10 < 23; i10++) {
            TagParser tagParser2 = tagParserArr[i10];
            this.tagParsers.put(this.names.fromString(tagParser2.getTreeKind().tagName), tagParser2);
        }
    }

    public org.openjdk.tools.javac.util.List<DCTree> inlineContent() {
        ListBuffer<DCTree> listBuffer = new ListBuffer<>();
        skipWhitespace();
        int i10 = this.bp;
        this.textStart = -1;
        int i11 = 1;
        while (true) {
            int i12 = this.bp;
            if (i12 >= this.buflen) {
                break;
            }
            char c10 = this.f103283ch;
            if (c10 != '\t') {
                if (c10 == '\n' || c10 == '\f' || c10 == '\r') {
                    this.newline = true;
                } else if (c10 != ' ') {
                    if (c10 == '&') {
                        entity(listBuffer);
                    } else if (c10 != '<') {
                        if (c10 == '@') {
                            if (this.newline) {
                                break;
                            }
                        } else if (c10 == '{') {
                            if (this.textStart == -1) {
                                this.textStart = i12;
                            }
                            this.newline = false;
                            i11++;
                            nextChar();
                        } else if (c10 == '}') {
                            this.newline = false;
                            i11--;
                            if (i11 == 0) {
                                addPendingText(listBuffer, i12 - 1);
                                nextChar();
                                return listBuffer.toList();
                            }
                            nextChar();
                        }
                        if (this.textStart == -1) {
                            this.textStart = i12;
                        }
                        nextChar();
                    } else {
                        this.newline = false;
                        addPendingText(listBuffer, i12 - 1);
                        listBuffer.add(html());
                    }
                }
            }
            nextChar();
        }
        return org.openjdk.tools.javac.util.List.of(erroneous("dc.unterminated.inline.tag", i10));
    }

    public DCTree inlineText(WhitespaceRetentionPolicy whitespaceRetentionPolicy) throws ParseException {
        int i10 = AnonymousClass24.$SwitchMap$com$sun$tools$javac$parser$DocCommentParser$WhitespaceRetentionPolicy[whitespaceRetentionPolicy.ordinal()];
        if (i10 == 1) {
            skipWhitespace();
        } else if (i10 == 2 && this.f103283ch == ' ') {
            nextChar();
        }
        int i11 = this.bp;
        int i12 = 1;
        while (true) {
            int i13 = this.bp;
            if (i13 >= this.buflen) {
                break;
            }
            char c10 = this.f103283ch;
            if (c10 != '\t') {
                if (c10 != '\n' && c10 != '\f' && c10 != '\r') {
                    if (c10 != ' ') {
                        if (c10 == '@') {
                            if (this.newline) {
                                break;
                            }
                            this.newline = false;
                            this.lastNonWhite = i13;
                        } else if (c10 == '{') {
                            this.newline = false;
                            this.lastNonWhite = i13;
                            i12++;
                        } else if (c10 != '}') {
                            this.newline = false;
                            this.lastNonWhite = i13;
                        } else {
                            i12--;
                            if (i12 == 0) {
                                return this.f103284m.at(i11).newTextTree(newString(i11, this.bp));
                            }
                            this.newline = false;
                            this.lastNonWhite = i13;
                        }
                    } else {
                        continue;
                    }
                } else {
                    this.newline = true;
                }
            }
            nextChar();
        }
        throw new ParseException("dc.unterminated.inline.tag");
    }

    public void addPendingText(ListBuffer<DCTree> listBuffer, int i10) {
        int i11 = this.textStart;
        if (i11 != -1) {
            if (i11 <= i10) {
                listBuffer.add(this.f103284m.at(i11).newTextTree(newString(this.textStart, i10 + 1)));
            }
            this.textStart = -1;
        }
    }

    public void attrValueChar(ListBuffer<DCTree> listBuffer) {
        char c10 = this.f103283ch;
        if (c10 == '&') {
            entity(listBuffer);
        } else if (c10 != '{') {
            nextChar();
        } else {
            inlineTag(listBuffer);
        }
    }

    public org.openjdk.tools.javac.util.List<DCTree> blockContent() {
        ListBuffer<DCTree> listBuffer = new ListBuffer<>();
        this.textStart = -1;
        while (true) {
            int i10 = this.bp;
            if (i10 >= this.buflen) {
                break;
            }
            char c10 = this.f103283ch;
            if (c10 != '\t') {
                if (c10 == '\n' || c10 == '\f' || c10 == '\r') {
                    this.newline = true;
                } else if (c10 != ' ') {
                    if (c10 == '&') {
                        entity(listBuffer);
                    } else if (c10 == '<') {
                        this.newline = false;
                        addPendingText(listBuffer, i10 - 1);
                        listBuffer.add(html());
                        if (this.textStart == -1) {
                            this.textStart = this.bp;
                            this.lastNonWhite = -1;
                        }
                    } else if (c10 != '>') {
                        if (c10 == '@') {
                            if (this.newline) {
                                addPendingText(listBuffer, this.lastNonWhite);
                                break;
                            }
                        } else if (c10 == '{') {
                            inlineTag(listBuffer);
                        }
                        this.newline = false;
                        if (this.textStart == -1) {
                            this.textStart = i10;
                        }
                        this.lastNonWhite = i10;
                        nextChar();
                    } else {
                        this.newline = false;
                        addPendingText(listBuffer, i10 - 1);
                        DocTreeMaker at = this.f103284m.at(this.bp);
                        int i11 = this.bp;
                        listBuffer.add(at.newErroneousTree(newString(i11, i11 + 1), this.diagSource, "dc.bad.gt", new Object[0]));
                        nextChar();
                        if (this.textStart == -1) {
                            this.textStart = this.bp;
                            this.lastNonWhite = -1;
                        }
                    }
                }
            }
            nextChar();
        }
        int i12 = this.lastNonWhite;
        if (i12 != -1) {
            addPendingText(listBuffer, i12);
        }
        return listBuffer.toList();
    }

    public DCTree blockTag() {
        int i10 = this.bp;
        try {
            nextChar();
            if (isIdentifierStart(this.f103283ch)) {
                Name readTagName = readTagName();
                TagParser tagParser = this.tagParsers.get(readTagName);
                if (tagParser == null) {
                    return this.f103284m.at(i10).newUnknownBlockTagTree((org.openjdk.javax.lang.model.element.Name) readTagName, (List<? extends DocTree>) blockContent());
                }
                int i11 = AnonymousClass24.$SwitchMap$com$sun$tools$javac$parser$DocCommentParser$TagParser$Kind[tagParser.getKind().ordinal()];
                if (i11 == 1) {
                    return tagParser.parse(i10);
                }
                if (i11 == 2) {
                    return erroneous("dc.bad.inline.tag", i10);
                }
            }
            blockContent();
            return erroneous("dc.no.tag.name", i10);
        } catch (ParseException e10) {
            blockContent();
            return erroneous(e10.getMessage(), i10);
        }
    }

    public org.openjdk.tools.javac.util.List<DCTree> blockTags() {
        ListBuffer listBuffer = new ListBuffer();
        while (this.f103283ch == '@') {
            listBuffer.add(blockTag());
        }
        return listBuffer.toList();
    }

    public void entity(ListBuffer<DCTree> listBuffer) {
        this.newline = false;
        addPendingText(listBuffer, this.bp - 1);
        listBuffer.add(entity());
        if (this.textStart == -1) {
            this.textStart = this.bp;
            this.lastNonWhite = -1;
        }
    }

    public DCTree.DCErroneous erroneous(String str, int i10) {
        int i11 = this.bp - 1;
        while (i11 > i10) {
            char c10 = this.buf[i11];
            if (c10 != '\t') {
                if (c10 == '\n' || c10 == '\f' || c10 == '\r') {
                    this.newline = true;
                } else if (c10 != ' ') {
                    break;
                }
            }
            i11--;
        }
        this.textStart = -1;
        return this.f103284m.at(i10).newErroneousTree(newString(i10, i11 + 1), this.diagSource, str, new Object[0]);
    }

    public DCTree html() {
        char c10;
        int i10 = this.bp;
        nextChar();
        boolean z10 = false;
        if (isIdentifierStart(this.f103283ch)) {
            Name readIdentifier = readIdentifier();
            org.openjdk.tools.javac.util.List<DCTree> htmlAttrs = htmlAttrs();
            if (htmlAttrs != null) {
                if (this.f103283ch == '/') {
                    nextChar();
                    z10 = true;
                }
                if (this.f103283ch == '>') {
                    nextChar();
                    return this.f103284m.at(i10).newStartElementTree((org.openjdk.javax.lang.model.element.Name) readIdentifier, (List<? extends DocTree>) htmlAttrs, z10).setEndPos(this.bp);
                }
            }
        } else {
            char c11 = this.f103283ch;
            if (c11 == '/') {
                nextChar();
                if (isIdentifierStart(this.f103283ch)) {
                    Name readIdentifier2 = readIdentifier();
                    skipWhitespace();
                    if (this.f103283ch == '>') {
                        nextChar();
                        return this.f103284m.at(i10).newEndElementTree((org.openjdk.javax.lang.model.element.Name) readIdentifier2);
                    }
                }
            } else if (c11 == '!') {
                nextChar();
                if (this.f103283ch == '-') {
                    nextChar();
                    if (this.f103283ch == '-') {
                        nextChar();
                        while (this.bp < this.buflen) {
                            int i11 = 0;
                            while (true) {
                                c10 = this.f103283ch;
                                if (c10 != '-') {
                                    break;
                                }
                                i11++;
                                nextChar();
                            }
                            if (i11 >= 2 && c10 == '>') {
                                nextChar();
                                return this.f103284m.at(i10).newCommentTree(newString(i10, this.bp));
                            }
                            nextChar();
                        }
                    }
                }
            }
        }
        int i12 = i10 + 1;
        this.bp = i12;
        this.f103283ch = this.buf[i12];
        return erroneous("dc.malformed.html", i10);
    }

    public org.openjdk.tools.javac.util.List<DCTree> htmlAttrs() {
        org.openjdk.tools.javac.util.List<DCTree> list;
        int i10;
        AttributeTree.ValueKind valueKind;
        char c10;
        ListBuffer listBuffer = new ListBuffer();
        skipWhitespace();
        loop0: while (true) {
            if (!isIdentifierStart(this.f103283ch)) {
                break;
            }
            int i11 = this.bp;
            Name readAttributeName = readAttributeName();
            skipWhitespace();
            AttributeTree.ValueKind valueKind2 = AttributeTree.ValueKind.EMPTY;
            if (this.f103283ch == '=') {
                ListBuffer<DCTree> listBuffer2 = new ListBuffer<>();
                nextChar();
                skipWhitespace();
                char c11 = this.f103283ch;
                if (c11 == '\'' || c11 == '\"') {
                    AttributeTree.ValueKind valueKind3 = c11 == '\'' ? AttributeTree.ValueKind.SINGLE : AttributeTree.ValueKind.DOUBLE;
                    nextChar();
                    this.textStart = this.bp;
                    while (true) {
                        i10 = this.bp;
                        if (i10 < this.buflen && (c10 = this.f103283ch) != c11) {
                            if (this.newline && c10 == '@') {
                                listBuffer.add(erroneous("dc.unterminated.string", i11));
                                break loop0;
                            }
                            attrValueChar(listBuffer2);
                        } else {
                            break;
                        }
                    }
                    addPendingText(listBuffer2, i10 - 1);
                    nextChar();
                    valueKind = valueKind3;
                } else {
                    valueKind = AttributeTree.ValueKind.UNQUOTED;
                    this.textStart = this.bp;
                    while (this.bp < this.buflen && !isUnquotedAttrValueTerminator(this.f103283ch)) {
                        attrValueChar(listBuffer2);
                    }
                    addPendingText(listBuffer2, this.bp - 1);
                }
                skipWhitespace();
                AttributeTree.ValueKind valueKind4 = valueKind;
                list = listBuffer2.toList();
                valueKind2 = valueKind4;
            } else {
                list = null;
            }
            listBuffer.add(this.f103284m.at(i11).newAttributeTree((org.openjdk.javax.lang.model.element.Name) readAttributeName, valueKind2, (List<? extends DocTree>) list));
        }
        return listBuffer.toList();
    }

    public DCTree.DCIdentifier identifier() throws ParseException {
        skipWhitespace();
        int i10 = this.bp;
        if (!isJavaIdentifierStart(this.f103283ch)) {
            throw new ParseException("dc.identifier.expected");
        }
        return this.f103284m.at(i10).newIdentifierTree((org.openjdk.javax.lang.model.element.Name) readJavaIdentifier());
    }

    public void inlineTag(ListBuffer<DCTree> listBuffer) {
        this.newline = false;
        nextChar();
        if (this.f103283ch == '@') {
            addPendingText(listBuffer, this.bp - 2);
            listBuffer.add(inlineTag());
            this.textStart = this.bp;
            this.lastNonWhite = -1;
            return;
        }
        if (this.textStart == -1) {
            this.textStart = this.bp - 1;
        }
        this.lastNonWhite = this.bp;
    }

    public DCTree.DCText inlineWord() {
        int i10 = this.bp;
        int i11 = 0;
        while (this.bp < this.buflen) {
            char c10 = this.f103283ch;
            if (c10 != '\t') {
                if (c10 == '\n') {
                    this.newline = true;
                } else if (c10 != '\f' && c10 != '\r' && c10 != ' ') {
                    if (c10 != '@') {
                        if (c10 != '{') {
                            if (c10 == '}' && (i11 == 0 || i11 - 1 == 0)) {
                                return this.f103284m.at(i10).newTextTree(newString(i10, this.bp));
                            }
                            this.newline = false;
                            nextChar();
                        }
                    } else if (this.newline) {
                        return null;
                    }
                    i11++;
                    this.newline = false;
                    nextChar();
                }
            }
            return this.f103284m.at(i10).newTextTree(newString(i10, this.bp));
        }
        return null;
    }

    public boolean isDecimalDigit(char c10) {
        return '0' <= c10 && c10 <= '9';
    }

    public boolean isHexDigit(char c10) {
        return ('0' <= c10 && c10 <= '9') || ('a' <= c10 && c10 <= 'f') || ('A' <= c10 && c10 <= 'F');
    }

    public boolean isIdentifierStart(char c10) {
        return Character.isUnicodeIdentifierStart(c10);
    }

    public boolean isJavaIdentifierStart(char c10) {
        return Character.isJavaIdentifierStart(c10);
    }

    public boolean isUnquotedAttrValueTerminator(char c10) {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ' || c10 == '\"' || c10 == '\'' || c10 == '`') {
            return true;
        }
        switch (c10) {
            case '<':
            case '=':
            case '>':
                return true;
            default:
                return false;
        }
    }

    public boolean isWhitespace(char c10) {
        return Character.isWhitespace(c10);
    }

    public String newString(int i10, int i11) {
        return new String(this.buf, i10, i11 - i10);
    }

    public void nextChar() {
        char[] cArr = this.buf;
        int i10 = this.bp;
        int i11 = this.buflen;
        if (i10 < i11) {
            i11 = i10 + 1;
            this.bp = i11;
        }
        char c10 = cArr[i11];
        this.f103283ch = c10;
        if (c10 == '\n' || c10 == '\f' || c10 == '\r') {
            this.newline = true;
        }
    }

    public DCTree.DCDocComment parse() {
        String text = this.comment.getText();
        this.buf = new char[text.length() + 1];
        text.getChars(0, text.length(), this.buf, 0);
        this.buf[r0.length - 1] = 26;
        this.buflen = r0.length - 1;
        int i10 = -1;
        this.bp = -1;
        nextChar();
        org.openjdk.tools.javac.util.List<DCTree> blockContent = blockContent();
        org.openjdk.tools.javac.util.List<DCTree> blockTags = blockTags();
        if (!blockContent.isEmpty()) {
            i10 = blockContent.head.pos;
        } else if (!blockTags.isEmpty()) {
            i10 = blockTags.head.pos;
        }
        return this.f103284m.at(i10).newDocCommentTree(this.comment, blockContent, blockTags);
    }

    public Name parseMember(String str) throws ParseException {
        JavacParser newParser = this.fac.newParser(str, false, false, false);
        Name ident = newParser.ident();
        if (newParser.token().kind == Tokens.TokenKind.EOF) {
            return ident;
        }
        throw new ParseException("dc.ref.unexpected.input");
    }

    public org.openjdk.tools.javac.util.List<JCTree> parseParams(String str) throws ParseException {
        if (str.trim().isEmpty()) {
            return org.openjdk.tools.javac.util.List.nil();
        }
        JavacParser newParser = this.fac.newParser(str.replace("...", v.f99450n), false, false, false);
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.add(newParser.parseType());
        if (newParser.token().kind == Tokens.TokenKind.IDENTIFIER) {
            newParser.nextToken();
        }
        while (newParser.token().kind == Tokens.TokenKind.COMMA) {
            newParser.nextToken();
            listBuffer.add(newParser.parseType());
            if (newParser.token().kind == Tokens.TokenKind.IDENTIFIER) {
                newParser.nextToken();
            }
        }
        if (newParser.token().kind == Tokens.TokenKind.EOF) {
            return listBuffer.toList();
        }
        throw new ParseException("dc.ref.unexpected.input");
    }

    public JCTree parseType(String str) throws ParseException {
        JavacParser newParser = this.fac.newParser(str, false, false, false);
        JCTree.JCExpression parseType = newParser.parseType();
        if (newParser.token().kind == Tokens.TokenKind.EOF) {
            return parseType;
        }
        throw new ParseException("dc.ref.unexpected.input");
    }

    public DCTree.DCText quotedString() {
        int i10 = this.bp;
        nextChar();
        while (this.bp < this.buflen) {
            char c10 = this.f103283ch;
            if (c10 != '\n') {
                if (c10 == '\"') {
                    nextChar();
                    return this.f103284m.at(i10).newTextTree(newString(i10, this.bp));
                }
                if (c10 != '@') {
                    if (c10 != '\f' && c10 != '\r') {
                    }
                } else if (this.newline) {
                    return null;
                }
                nextChar();
            }
            this.newline = true;
            nextChar();
        }
        return null;
    }

    public Name readAttributeName() {
        int i10 = this.bp;
        nextChar();
        while (this.bp < this.buflen && (Character.isUnicodeIdentifierPart(this.f103283ch) || this.f103283ch == '-')) {
            nextChar();
        }
        return this.names.fromChars(this.buf, i10, this.bp - i10);
    }

    public Name readIdentifier() {
        int i10 = this.bp;
        nextChar();
        while (this.bp < this.buflen && Character.isUnicodeIdentifierPart(this.f103283ch)) {
            nextChar();
        }
        return this.names.fromChars(this.buf, i10, this.bp - i10);
    }

    public Name readJavaIdentifier() {
        int i10 = this.bp;
        nextChar();
        while (this.bp < this.buflen && Character.isJavaIdentifierPart(this.f103283ch)) {
            nextChar();
        }
        return this.names.fromChars(this.buf, i10, this.bp - i10);
    }

    public Name readTagName() {
        char c10;
        int i10 = this.bp;
        nextChar();
        while (this.bp < this.buflen && (Character.isUnicodeIdentifierPart(this.f103283ch) || (c10 = this.f103283ch) == '.' || c10 == '-' || c10 == ':')) {
            nextChar();
        }
        return this.names.fromChars(this.buf, i10, this.bp - i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
    
        if (r3 != ')') goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DCTree.DCReference reference(boolean z10) throws ParseException {
        int i10;
        org.openjdk.tools.javac.util.List<JCTree> list;
        JCTree parseType;
        Name parseMember;
        int i11 = this.bp;
        int i12 = 0;
        while (true) {
            i10 = this.bp;
            list = null;
            if (i10 >= this.buflen) {
                break;
            }
            char c10 = this.f103283ch;
            if (c10 != '\t') {
                if (c10 == '\n' || c10 == '\f' || c10 == '\r') {
                    this.newline = true;
                } else if (c10 != ' ') {
                    if (c10 != '<') {
                        if (c10 != '>') {
                            if (c10 == '@') {
                                if (this.newline) {
                                    break;
                                }
                                this.newline = false;
                            } else if (c10 != '}') {
                                if (c10 != '(') {
                                }
                            } else {
                                if (i10 == i11) {
                                    return null;
                                }
                                this.newline = false;
                            }
                            nextChar();
                        }
                        this.newline = false;
                        i12--;
                        nextChar();
                    }
                    this.newline = false;
                    i12++;
                    nextChar();
                }
            }
            if (i12 == 0) {
                break;
            }
            nextChar();
        }
        if (i12 != 0) {
            throw new ParseException("dc.unterminated.signature");
        }
        String newString = newString(i11, i10);
        Log.DeferredDiagnosticHandler deferredDiagnosticHandler = new Log.DeferredDiagnosticHandler(this.fac.log);
        try {
            int indexOf = newString.indexOf(C16181m.f130230g);
            int i13 = indexOf + 1;
            int indexOf2 = newString.indexOf("(", i13);
            if (indexOf != -1) {
                parseType = indexOf == 0 ? null : parseType(newString.substring(0, indexOf));
                parseMember = indexOf2 == -1 ? parseMember(newString.substring(i13)) : parseMember(newString.substring(i13, indexOf2));
            } else if (indexOf2 == -1) {
                parseType = parseType(newString);
                parseMember = null;
            } else {
                parseMember = parseMember(newString.substring(0, indexOf2));
                parseType = null;
            }
            if (indexOf2 >= 0) {
                int indexOf3 = newString.indexOf(")", indexOf2);
                if (indexOf3 != newString.length() - 1) {
                    throw new ParseException("dc.ref.bad.parens");
                }
                list = parseParams(newString.substring(indexOf2 + 1, indexOf3));
            }
            if (!deferredDiagnosticHandler.getDiagnostics().isEmpty()) {
                throw new ParseException("dc.ref.syntax.error");
            }
            this.fac.log.popDiagnosticHandler(deferredDiagnosticHandler);
            return this.f103284m.at(i11).newReferenceTree(newString, parseType, parseMember, list).setEndPos(this.bp);
        } catch (Throwable th2) {
            this.fac.log.popDiagnosticHandler(deferredDiagnosticHandler);
            throw th2;
        }
    }

    public void skipWhitespace() {
        while (isWhitespace(this.f103283ch)) {
            nextChar();
        }
    }

    public static abstract class TagParser {
        final Kind kind;
        final boolean retainWhiteSpace;
        final DocTree.Kind treeKind;

        public enum Kind {
            INLINE,
            BLOCK
        }

        public TagParser(Kind kind, DocTree.Kind kind2) {
            this.kind = kind;
            this.treeKind = kind2;
            this.retainWhiteSpace = false;
        }

        public Kind getKind() {
            return this.kind;
        }

        public DocTree.Kind getTreeKind() {
            return this.treeKind;
        }

        public abstract DCTree parse(int i10) throws ParseException;

        public TagParser(Kind kind, DocTree.Kind kind2, boolean z10) {
            this.kind = kind;
            this.treeKind = kind2;
            this.retainWhiteSpace = z10;
        }
    }

    public DCTree entity() {
        int i10 = this.bp;
        nextChar();
        char c10 = this.f103283ch;
        Name name = null;
        if (c10 == '#') {
            int i11 = this.bp;
            nextChar();
            if (isDecimalDigit(this.f103283ch)) {
                nextChar();
                while (isDecimalDigit(this.f103283ch)) {
                    nextChar();
                }
                name = this.names.fromChars(this.buf, i11, this.bp - i11);
            } else {
                char c11 = this.f103283ch;
                if (c11 == 'x' || c11 == 'X') {
                    nextChar();
                    if (isHexDigit(this.f103283ch)) {
                        nextChar();
                        while (isHexDigit(this.f103283ch)) {
                            nextChar();
                        }
                        name = this.names.fromChars(this.buf, i11, this.bp - i11);
                    }
                }
            }
        } else if (isIdentifierStart(c10)) {
            name = readIdentifier();
        }
        if (name == null) {
            return erroneous("dc.bad.entity", i10);
        }
        if (this.f103283ch != ';') {
            return erroneous("dc.missing.semicolon", i10);
        }
        nextChar();
        return this.f103284m.at(i10).newEntityTree((org.openjdk.javax.lang.model.element.Name) name);
    }

    public DocCommentParser(ParserFactory parserFactory) {
        this(parserFactory, null, null);
    }

    public DCTree inlineTag() {
        int i10 = this.bp - 1;
        try {
            nextChar();
            if (isIdentifierStart(this.f103283ch)) {
                Name readTagName = readTagName();
                TagParser tagParser = this.tagParsers.get(readTagName);
                if (tagParser == null) {
                    skipWhitespace();
                    DCTree inlineText = inlineText(WhitespaceRetentionPolicy.REMOVE_ALL);
                    if (inlineText != null) {
                        nextChar();
                        return this.f103284m.at(i10).newUnknownInlineTagTree((org.openjdk.javax.lang.model.element.Name) readTagName, (List<? extends DocTree>) org.openjdk.tools.javac.util.List.of(inlineText)).setEndPos(this.bp);
                    }
                } else {
                    if (!tagParser.retainWhiteSpace) {
                        skipWhitespace();
                    }
                    if (tagParser.getKind() == TagParser.Kind.INLINE) {
                        DCTree.DCEndPosTree dCEndPosTree = (DCTree.DCEndPosTree) tagParser.parse(i10);
                        if (dCEndPosTree != null) {
                            return dCEndPosTree.setEndPos(this.bp);
                        }
                    } else {
                        inlineText(WhitespaceRetentionPolicy.REMOVE_ALL);
                        nextChar();
                    }
                }
            }
            return erroneous("dc.no.tag.name", i10);
        } catch (ParseException e10) {
            return erroneous(e10.getMessage(), i10);
        }
    }
}
