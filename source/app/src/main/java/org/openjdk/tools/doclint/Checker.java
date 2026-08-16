package org.openjdk.tools.doclint;

import android.provider.Telephony;
import b3.s;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Deque;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.doctree.AttributeTree;
import org.openjdk.source.doctree.AuthorTree;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocRootTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.doctree.EndElementTree;
import org.openjdk.source.doctree.EntityTree;
import org.openjdk.source.doctree.ErroneousTree;
import org.openjdk.source.doctree.IdentifierTree;
import org.openjdk.source.doctree.InheritDocTree;
import org.openjdk.source.doctree.LinkTree;
import org.openjdk.source.doctree.LiteralTree;
import org.openjdk.source.doctree.ParamTree;
import org.openjdk.source.doctree.ProvidesTree;
import org.openjdk.source.doctree.ReferenceTree;
import org.openjdk.source.doctree.ReturnTree;
import org.openjdk.source.doctree.SerialDataTree;
import org.openjdk.source.doctree.SerialFieldTree;
import org.openjdk.source.doctree.SinceTree;
import org.openjdk.source.doctree.StartElementTree;
import org.openjdk.source.doctree.TextTree;
import org.openjdk.source.doctree.ThrowsTree;
import org.openjdk.source.doctree.UnknownBlockTagTree;
import org.openjdk.source.doctree.UnknownInlineTagTree;
import org.openjdk.source.doctree.UsesTree;
import org.openjdk.source.doctree.ValueTree;
import org.openjdk.source.doctree.VersionTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.util.DocTreePath;
import org.openjdk.source.util.DocTreePathScanner;
import org.openjdk.source.util.TreePath;
import org.openjdk.tools.doclint.HtmlTag;
import org.openjdk.tools.doclint.Messages;
import org.openjdk.tools.javac.tree.DocPretty;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.StringUtils;
import yd.C16181m;

public class Checker extends DocTreePathScanner<Void, Void> {
    private HtmlTag currHeaderTag;
    final Env env;
    private final int implicitHeaderLevel;
    private static final Pattern validName = Pattern.compile("[A-Za-z][A-Za-z0-9-_:.]*");
    private static final Pattern validNumber = Pattern.compile("-?[0-9]+");
    private static final Pattern docRoot = Pattern.compile("(?i)(\\{@docRoot *\\}/?)?(.*)");
    Set<Element> foundParams = new HashSet();
    Set<TypeMirror> foundThrows = new HashSet();
    Map<Element, Set<String>> foundAnchors = new HashMap();
    boolean foundInheritDoc = false;
    boolean foundReturn = false;
    private final Deque<TagStackItem> tagStack = new LinkedList();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$source$doctree$DocTree$Kind;
        static final int[] $SwitchMap$com$sun$tools$doclint$HtmlTag;
        static final int[] $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr;
        static final int[] $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind;
        static final int[] $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType;
        static final int[] $SwitchMap$com$sun$tools$doclint$HtmlVersion;
        static final int[] $SwitchMap$javax$lang$model$element$ElementKind;
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[HtmlTag.AttrKind.values().length];
            $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind = iArr;
            try {
                iArr[HtmlTag.AttrKind.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[HtmlTag.AttrKind.HTML4.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[HtmlTag.AttrKind.INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[HtmlTag.AttrKind.OBSOLETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[HtmlTag.AttrKind.USE_CSS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[HtmlTag.AttrKind.HTML5.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[HtmlTag.Attr.values().length];
            $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr = iArr2;
            try {
                iArr2[HtmlTag.Attr.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr[HtmlTag.Attr.ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr[HtmlTag.Attr.HREF.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr[HtmlTag.Attr.VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr[HtmlTag.Attr.BORDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[HtmlVersion.values().length];
            $SwitchMap$com$sun$tools$doclint$HtmlVersion = iArr3;
            try {
                iArr3[HtmlVersion.HTML4.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlVersion[HtmlVersion.HTML5.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr4 = new int[HtmlTag.BlockType.values().length];
            $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType = iArr4;
            try {
                iArr4[HtmlTag.BlockType.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType[HtmlTag.BlockType.INLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType[HtmlTag.BlockType.LIST_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType[HtmlTag.BlockType.TABLE_ITEM.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType[HtmlTag.BlockType.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr5 = new int[DocTree.Kind.values().length];
            $SwitchMap$com$sun$source$doctree$DocTree$Kind = iArr5;
            try {
                iArr5[DocTree.Kind.START_ELEMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.LINK.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.LINK_PLAIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            int[] iArr6 = new int[HtmlTag.values().length];
            $SwitchMap$com$sun$tools$doclint$HtmlTag = iArr6;
            try {
                iArr6[HtmlTag.f102887H1.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.f102888H2.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.f102889H3.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.f102890H4.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.f102891H5.ordinal()] = 5;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.f102892H6.ordinal()] = 6;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.CAPTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.IMG.ordinal()] = 8;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.SCRIPT.ordinal()] = 9;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.TABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.SECTION.ordinal()] = 11;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$tools$doclint$HtmlTag[HtmlTag.ARTICLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused34) {
            }
            int[] iArr7 = new int[ElementKind.values().length];
            $SwitchMap$javax$lang$model$element$ElementKind = iArr7;
            try {
                iArr7[ElementKind.METHOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.CONSTRUCTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.INTERFACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.PACKAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.FIELD.ordinal()] = 7;
            } catch (NoSuchFieldError unused41) {
            }
            int[] iArr8 = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr8;
            try {
                iArr8[TypeKind.VOID.ordinal()] = 1;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DECLARED.ordinal()] = 3;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.TYPEVAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused45) {
            }
        }
    }

    public enum Flag {
        TABLE_HAS_CAPTION,
        HAS_ELEMENT,
        HAS_HEADING,
        HAS_INLINE_TAG,
        HAS_TEXT,
        REPORTED_BAD_INLINE
    }

    public static class TagStackItem {
        final Set<HtmlTag.Attr> attrs = EnumSet.noneOf(HtmlTag.Attr.class);
        final Set<Flag> flags = EnumSet.noneOf(Flag.class);
        final HtmlTag tag;
        final DocTree tree;

        public TagStackItem(DocTree docTree, HtmlTag htmlTag) {
            this.tree = docTree;
            this.tag = htmlTag;
        }

        public String toString() {
            return String.valueOf(this.tag);
        }
    }

    public Checker(Env env) {
        this.env = (Env) Assert.checkNonNull(env);
        this.implicitHeaderLevel = env.implicitHeaderLevel;
    }

    private boolean checkAnchor(String str) {
        Element enclosingPackageOrClass = getEnclosingPackageOrClass(this.env.currElement);
        if (enclosingPackageOrClass == null) {
            return true;
        }
        Set<String> set = this.foundAnchors.get(enclosingPackageOrClass);
        if (set == null) {
            Map<Element, Set<String>> map = this.foundAnchors;
            HashSet hashSet = new HashSet();
            map.put(enclosingPackageOrClass, hashSet);
            set = hashSet;
        }
        return set.add(str);
    }

    private void checkHeader(StartElementTree startElementTree, HtmlTag htmlTag) {
        if (getHeaderLevel(htmlTag) > getHeaderLevel(this.currHeaderTag) + 1) {
            HtmlTag htmlTag2 = this.currHeaderTag;
            if (htmlTag2 == null) {
                this.env.messages.error(Messages.Group.ACCESSIBILITY, startElementTree, "dc.tag.header.sequence.1", htmlTag);
            } else {
                this.env.messages.error(Messages.Group.ACCESSIBILITY, startElementTree, "dc.tag.header.sequence.2", htmlTag, htmlTag2);
            }
        }
        this.currHeaderTag = htmlTag;
    }

    private void checkParamsDocumented(List<? extends Element> list) {
        if (this.foundInheritDoc) {
            return;
        }
        for (Element element : list) {
            if (!this.foundParams.contains(element)) {
                reportMissing("dc.missing.param", element.getKind() == ElementKind.TYPE_PARAMETER ? "<" + ((Object) element.getSimpleName()) + ">" : element.getSimpleName());
            }
        }
    }

    private void checkStructure(StartElementTree startElementTree, HtmlTag htmlTag) {
        Name name = startElementTree.getName();
        TagStackItem peek = this.tagStack.peek();
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType[htmlTag.blockType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3 || i10 == 4) {
                    if (peek != null) {
                        peek.flags.remove(Flag.REPORTED_BAD_INLINE);
                        if (peek.tag.accepts(htmlTag)) {
                            return;
                        }
                    }
                } else if (i10 == 5) {
                    if (AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag[htmlTag.ordinal()] != 9) {
                        this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.not.allowed", name);
                        return;
                    }
                    return;
                }
            } else if (peek == null || peek.tag.accepts(htmlTag)) {
                return;
            }
        } else {
            if (peek == null || peek.tag.accepts(htmlTag)) {
                return;
            }
            int i11 = AnonymousClass1.$SwitchMap$com$sun$source$doctree$DocTree$Kind[peek.tree.getKind().ordinal()];
            if (i11 != 1) {
                if (i11 == 2 || i11 == 3) {
                    this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.not.allowed.inline.tag", name, peek.tree.getKind().tagName);
                    return;
                }
            } else if (peek.tag.blockType == HtmlTag.BlockType.INLINE) {
                this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.not.allowed.inline.element", name, ((StartElementTree) peek.tree).getName());
                return;
            }
        }
        this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.not.allowed.here", name);
    }

    private void checkThrowsDeclared(ReferenceTree referenceTree, TypeMirror typeMirror, List<? extends TypeMirror> list) {
        boolean z10 = false;
        for (TypeMirror typeMirror2 : list) {
            if (this.env.types.isAssignable(typeMirror, typeMirror2)) {
                this.foundThrows.add(typeMirror2);
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        this.env.messages.error(Messages.Group.REFERENCE, referenceTree, "dc.exception.not.thrown", typeMirror);
    }

    private void checkThrowsDocumented(List<? extends TypeMirror> list) {
        if (this.foundInheritDoc) {
            return;
        }
        for (TypeMirror typeMirror : list) {
            if (isCheckedException(typeMirror) && !this.foundThrows.contains(typeMirror)) {
                reportMissing("dc.missing.throws", typeMirror);
            }
        }
    }

    private void checkURI(AttributeTree attributeTree, String str) {
        if (str.startsWith("javascript:")) {
            return;
        }
        try {
            new URI(str);
        } catch (URISyntaxException unused) {
            this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.invalid.uri", str);
        }
    }

    private void checkUnknownTag(DocTree docTree, String str) {
        Set<String> set = this.env.customTags;
        if (set == null || set.contains(str)) {
            return;
        }
        this.env.messages.error(Messages.Group.SYNTAX, docTree, "dc.tag.unknown", str);
    }

    private String getAttrValue(AttributeTree attributeTree) {
        if (attributeTree.getValue() == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            new DocPretty(stringWriter).print(attributeTree.getValue());
        } catch (IOException unused) {
        }
        return stringWriter.toString();
    }

    private Element getEnclosingPackageOrClass(Element element) {
        while (element != null) {
            int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[element.getKind().ordinal()];
            if (i10 == 3 || i10 == 4 || i10 == 5 || i10 == 6) {
                break;
            }
            element = element.getEnclosingElement();
        }
        return element;
    }

    private int getHeaderLevel(HtmlTag htmlTag) {
        if (htmlTag == null) {
            return this.implicitHeaderLevel;
        }
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag[htmlTag.ordinal()]) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean isCheckedException(TypeMirror typeMirror) {
        Env env = this.env;
        if (!env.types.isAssignable(typeMirror, env.java_lang_Error)) {
            Env env2 = this.env;
            if (!env2.types.isAssignable(typeMirror, env2.java_lang_RuntimeException)) {
                return true;
            }
        }
        return false;
    }

    private boolean isConstant(Element element) {
        return (element == null || AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[element.getKind().ordinal()] != 7 || ((VariableElement) element).getConstantValue() == null) ? false : true;
    }

    private boolean isSynthetic() {
        if (AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[this.env.currElement.getKind().ordinal()] != 2) {
            return false;
        }
        Env env = this.env;
        TreePath treePath = env.currPath;
        return env.getPos(treePath) == this.env.getPos(treePath.getParentPath());
    }

    private boolean isThrowable(TypeMirror typeMirror) {
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[typeMirror.getKind().ordinal()];
        if (i10 != 3 && i10 != 4) {
            return false;
        }
        Env env = this.env;
        return env.types.isAssignable(typeMirror, env.java_lang_Throwable);
    }

    private void reportMissing(String str, Object... objArr) {
        Env env = this.env;
        env.messages.report(Messages.Group.MISSING, Diagnostic.Kind.WARNING, env.currPath.getLeaf(), str, objArr);
    }

    private void reportReference(String str, Object... objArr) {
        Env env = this.env;
        env.messages.report(Messages.Group.REFERENCE, Diagnostic.Kind.WARNING, env.currPath.getLeaf(), str, objArr);
    }

    private void validateHtml4Attrs(AttributeTree attributeTree, Name name, HtmlTag.AttrKind attrKind) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[attrKind.ordinal()];
        if (i10 == 3) {
            this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.unknown", name);
            return;
        }
        if (i10 == 4) {
            this.env.messages.warning(Messages.Group.ACCESSIBILITY, attributeTree, "dc.attr.obsolete", name);
        } else if (i10 == 5) {
            this.env.messages.warning(Messages.Group.ACCESSIBILITY, attributeTree, "dc.attr.obsolete.use.css", name);
        } else {
            if (i10 != 6) {
                return;
            }
            this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.not.supported.html4", name);
        }
    }

    private void validateHtml5Attrs(AttributeTree attributeTree, Name name, HtmlTag.AttrKind attrKind) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind[attrKind.ordinal()];
        if (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) {
            this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.not.supported.html5", name);
        }
    }

    public void checkAllowsText(DocTree docTree) {
        TagStackItem peek = this.tagStack.peek();
        if (peek == null || peek.tree.getKind() != DocTree.Kind.START_ELEMENT || peek.tag.acceptsText() || !peek.flags.add(Flag.REPORTED_BAD_INLINE)) {
            return;
        }
        this.env.messages.error(Messages.Group.HTML, docTree, "dc.text.not.allowed", ((StartElementTree) peek.tree).getName());
    }

    public boolean hasNonWhitespace(TextTree textTree) {
        String body = textTree.getBody();
        for (int i10 = 0; i10 < body.length(); i10++) {
            if (!Character.isWhitespace(body.charAt(i10))) {
                return true;
            }
        }
        return false;
    }

    public void markEnclosingTag(Flag flag) {
        TagStackItem peek = this.tagStack.peek();
        if (peek != null) {
            peek.flags.add(flag);
        }
    }

    public Void scan(DocCommentTree docCommentTree, TreePath treePath) {
        int i10;
        this.env.initTypes();
        this.env.setCurrent(treePath, docCommentTree);
        boolean isEmpty = this.env.currOverriddenMethods.isEmpty();
        JavaFileObject sourceFile = treePath.getCompilationUnit().getSourceFile();
        if (treePath.getLeaf().getKind() == Tree.Kind.PACKAGE) {
            boolean isNameCompatible = sourceFile.isNameCompatible("package-info", JavaFileObject.Kind.SOURCE);
            if (docCommentTree == null) {
                if (isNameCompatible) {
                    reportMissing("dc.missing.comment", new Object[0]);
                }
                return null;
            }
            if (!isNameCompatible) {
                reportReference("dc.unexpected.comment", new Object[0]);
            }
        } else if (docCommentTree == null || !sourceFile.isNameCompatible(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, JavaFileObject.Kind.HTML)) {
            if (docCommentTree == null) {
                if (!isSynthetic() && isEmpty) {
                    reportMissing("dc.missing.comment", new Object[0]);
                }
                return null;
            }
        } else if (docCommentTree.getFullBody().isEmpty()) {
            reportMissing("dc.missing.comment", new Object[0]);
            return null;
        }
        this.tagStack.clear();
        this.currHeaderTag = null;
        this.foundParams.clear();
        this.foundThrows.clear();
        this.foundInheritDoc = false;
        this.foundReturn = false;
        scan(new DocTreePath(treePath, docCommentTree), (DocTreePath) null);
        if (isEmpty && ((i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[this.env.currElement.getKind().ordinal()]) == 1 || i10 == 2)) {
            ExecutableElement executableElement = (ExecutableElement) this.env.currElement;
            checkParamsDocumented(executableElement.getTypeParameters());
            checkParamsDocumented(executableElement.getParameters());
            int i11 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[executableElement.getReturnType().getKind().ordinal()];
            if (i11 != 1 && i11 != 2 && !this.foundReturn && !this.foundInheritDoc && !this.env.types.isSameType(executableElement.getReturnType(), this.env.java_lang_Void)) {
                reportMissing("dc.missing.return", new Object[0]);
            }
            checkThrowsDocumented(executableElement.getThrownTypes());
        }
        return null;
    }

    public String toString(TreePath treePath) {
        StringBuilder sb2 = new StringBuilder("TreePath[");
        toString(treePath, sb2);
        sb2.append("]");
        return sb2.toString();
    }

    public void warnIfEmpty(TagStackItem tagStackItem, DocTree docTree) {
        HtmlTag htmlTag = tagStackItem.tag;
        if (htmlTag == null || !(tagStackItem.tree instanceof StartElementTree) || !htmlTag.flags.contains(HtmlTag.Flag.EXPECT_CONTENT) || tagStackItem.flags.contains(Flag.HAS_TEXT) || tagStackItem.flags.contains(Flag.HAS_ELEMENT) || tagStackItem.flags.contains(Flag.HAS_INLINE_TAG)) {
            return;
        }
        if (docTree == null) {
            docTree = tagStackItem.tree;
        }
        this.env.messages.warning(Messages.Group.HTML, docTree, "dc.tag.empty", ((StartElementTree) tagStackItem.tree).getName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0152, code lost:
    
        if (r1 != org.openjdk.tools.doclint.HtmlTag.f102885A) goto L83;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void visitAttribute(AttributeTree attributeTree, Void r11) {
        HtmlTag htmlTag = this.tagStack.peek().tag;
        if (htmlTag != null) {
            Name name = attributeTree.getName();
            HtmlTag.Attr attr = htmlTag.getAttr(name);
            if (attr != null) {
                if (this.env.htmlVersion == HtmlVersion.HTML4 && attr.name().contains("-")) {
                    this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.not.supported.html4", name);
                }
                if (!this.tagStack.peek().attrs.add(attr)) {
                    this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.repeated", name);
                }
            }
            if (!name.toString().startsWith("on")) {
                HtmlTag.AttrKind attrKind = htmlTag.getAttrKind(name);
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlVersion[this.env.htmlVersion.ordinal()];
                if (i10 == 1) {
                    validateHtml4Attrs(attributeTree, name, attrKind);
                } else if (i10 == 2) {
                    validateHtml5Attrs(attributeTree, name, attrKind);
                }
            }
            if (attr != null) {
                int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr[attr.ordinal()];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                if (i11 == 5 && htmlTag == HtmlTag.TABLE) {
                                    String attrValue = getAttrValue(attributeTree);
                                    try {
                                        if (this.env.htmlVersion == HtmlVersion.HTML5 && (attrValue == null || (!attrValue.isEmpty() && Integer.parseInt(attrValue) != 1))) {
                                            this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.table.border.html5", attr);
                                        }
                                    } catch (NumberFormatException unused) {
                                        this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.table.border.html5", attr);
                                    }
                                }
                            } else if (htmlTag == HtmlTag.LI) {
                                String attrValue2 = getAttrValue(attributeTree);
                                if (attrValue2 != null && !attrValue2.isEmpty()) {
                                    if (!validNumber.matcher(attrValue2).matches()) {
                                        this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.not.number", new Object[0]);
                                    }
                                } else {
                                    this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.lacks.value", new Object[0]);
                                }
                            }
                        } else if (htmlTag == HtmlTag.f102885A) {
                            String attrValue3 = getAttrValue(attributeTree);
                            if (attrValue3 != null && !attrValue3.isEmpty()) {
                                Matcher matcher = docRoot.matcher(attrValue3);
                                if (matcher.matches()) {
                                    String group = matcher.group(2);
                                    if (!group.isEmpty()) {
                                        checkURI(attributeTree, group);
                                    }
                                } else {
                                    checkURI(attributeTree, attrValue3);
                                }
                            } else {
                                this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.attr.lacks.value", new Object[0]);
                            }
                        }
                    }
                }
                String attrValue4 = getAttrValue(attributeTree);
                if (attrValue4 == null) {
                    this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.anchor.value.missing", new Object[0]);
                } else {
                    if (!validName.matcher(attrValue4).matches()) {
                        this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.invalid.anchor", attrValue4);
                    }
                    if (!checkAnchor(attrValue4)) {
                        this.env.messages.error(Messages.Group.HTML, attributeTree, "dc.anchor.already.defined", attrValue4);
                    }
                }
            }
        }
        return (Void) super.visitAttribute(attributeTree, (AttributeTree) r11);
    }

    @Override
    public Void visitAuthor(AuthorTree authorTree, Void r32) {
        warnIfEmpty(authorTree, authorTree.getName());
        return (Void) super.visitAuthor(authorTree, (AuthorTree) r32);
    }

    @Override
    public Void visitDocComment(DocCommentTree docCommentTree, Void r62) {
        super.visitDocComment(docCommentTree, (DocCommentTree) r62);
        for (TagStackItem tagStackItem : this.tagStack) {
            warnIfEmpty(tagStackItem, (DocTree) null);
            if (tagStackItem.tree.getKind() == DocTree.Kind.START_ELEMENT && tagStackItem.tag.endKind == HtmlTag.EndKind.REQUIRED) {
                StartElementTree startElementTree = (StartElementTree) tagStackItem.tree;
                this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.not.closed", startElementTree.getName());
            }
        }
        return null;
    }

    @Override
    public Void visitDocRoot(DocRootTree docRootTree, Void r32) {
        markEnclosingTag(Flag.HAS_INLINE_TAG);
        return (Void) super.visitDocRoot(docRootTree, (DocRootTree) r32);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ea, code lost:
    
        r7.env.messages.error(org.openjdk.tools.doclint.Messages.Group.HTML, r8, "dc.tag.end.unexpected", r0);
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void visitEndElement(EndElementTree endElementTree, Void r92) {
        Name name = endElementTree.getName();
        HtmlTag htmlTag = HtmlTag.get(name);
        if (htmlTag == null) {
            this.env.messages.error(Messages.Group.HTML, endElementTree, "dc.tag.unknown", name);
        } else if (htmlTag.endKind == HtmlTag.EndKind.NONE) {
            this.env.messages.error(Messages.Group.HTML, endElementTree, "dc.tag.end.not.permitted", name);
        } else {
            loop0: while (true) {
                if (!this.tagStack.isEmpty()) {
                    TagStackItem peek = this.tagStack.peek();
                    HtmlTag htmlTag2 = peek.tag;
                    if (htmlTag == htmlTag2) {
                        switch (AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag[htmlTag.ordinal()]) {
                            case 10:
                                if (!peek.attrs.contains(HtmlTag.Attr.SUMMARY) && !peek.flags.contains(Flag.TABLE_HAS_CAPTION)) {
                                    this.env.messages.error(Messages.Group.ACCESSIBILITY, endElementTree, "dc.no.summary.or.caption.for.table", new Object[0]);
                                    break;
                                }
                                break;
                            case 11:
                            case 12:
                                if (this.env.htmlVersion == HtmlVersion.HTML5 && !peek.flags.contains(Flag.HAS_HEADING)) {
                                    this.env.messages.error(Messages.Group.HTML, endElementTree, "dc.tag.requires.heading", name);
                                    break;
                                }
                                break;
                        }
                        warnIfEmpty(peek, endElementTree);
                        this.tagStack.pop();
                    } else if (htmlTag2 != null && htmlTag2.endKind == HtmlTag.EndKind.REQUIRED) {
                        Iterator<TagStackItem> it = this.tagStack.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break loop0;
                            }
                            if (it.next().tag == htmlTag) {
                                if (peek.tree.getKind() != DocTree.Kind.START_ELEMENT) {
                                    break;
                                }
                                Messages messages = this.env.messages;
                                Messages.Group group = Messages.Group.HTML;
                                DocTree docTree = peek.tree;
                                messages.error(group, docTree, "dc.tag.start.unmatched", ((StartElementTree) docTree).getName());
                                this.tagStack.pop();
                            }
                        }
                    } else {
                        this.tagStack.pop();
                    }
                } else if (this.tagStack.isEmpty()) {
                    this.env.messages.error(Messages.Group.HTML, endElementTree, "dc.tag.end.unexpected", name);
                }
            }
        }
        return (Void) super.visitEndElement(endElementTree, (EndElementTree) r92);
    }

    @Override
    public Void visitEntity(EntityTree entityTree, Void r52) {
        int parseInt;
        checkAllowsText(entityTree);
        markEnclosingTag(Flag.HAS_TEXT);
        String obj = entityTree.getName().toString();
        if (obj.startsWith(C16181m.f130230g)) {
            if (StringUtils.toLowerCase(obj).startsWith("#x")) {
                parseInt = Integer.parseInt(obj.substring(2), 16);
            } else {
                parseInt = Integer.parseInt(obj.substring(1), 10);
            }
            if (Entity.isValid(parseInt)) {
                return null;
            }
            this.env.messages.error(Messages.Group.HTML, entityTree, "dc.entity.invalid", obj);
            return null;
        }
        if (Entity.isValid(obj)) {
            return null;
        }
        this.env.messages.error(Messages.Group.HTML, entityTree, "dc.entity.invalid", obj);
        return null;
    }

    @Override
    public Void visitErroneous(ErroneousTree erroneousTree, Void r52) {
        this.env.messages.error(Messages.Group.SYNTAX, erroneousTree, null, erroneousTree.getDiagnostic().getMessage(null));
        return null;
    }

    @Override
    public Void visitInheritDoc(InheritDocTree inheritDocTree, Void r32) {
        markEnclosingTag(Flag.HAS_INLINE_TAG);
        this.foundInheritDoc = true;
        return (Void) super.visitInheritDoc(inheritDocTree, (InheritDocTree) r32);
    }

    @Override
    public Void visitLink(LinkTree linkTree, Void r52) {
        markEnclosingTag(Flag.HAS_INLINE_TAG);
        this.tagStack.push(new TagStackItem(linkTree, linkTree.getKind() == DocTree.Kind.LINK ? HtmlTag.CODE : HtmlTag.SPAN));
        try {
            return (Void) super.visitLink(linkTree, (LinkTree) r52);
        } finally {
            this.tagStack.pop();
        }
    }

    @Override
    public Void visitLiteral(LiteralTree literalTree, Void r62) {
        markEnclosingTag(Flag.HAS_INLINE_TAG);
        if (literalTree.getKind() == DocTree.Kind.CODE) {
            Iterator<TagStackItem> it = this.tagStack.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().tag == HtmlTag.CODE) {
                    this.env.messages.warning(Messages.Group.HTML, literalTree, "dc.tag.code.within.code", new Object[0]);
                    break;
                }
            }
        }
        return (Void) super.visitLiteral(literalTree, (LiteralTree) r62);
    }

    @Override
    public Void visitParam(ParamTree paramTree, Void r82) {
        boolean isTypeParameter = paramTree.isTypeParameter();
        IdentifierTree name = paramTree.getName();
        Element element = name != null ? this.env.trees.getElement(new DocTreePath(getCurrentPath(), name)) : null;
        if (element == null) {
            int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[this.env.currElement.getKind().ordinal()];
            if (i10 != 1 && i10 != 2) {
                if (i10 != 3 && i10 != 5) {
                    this.env.messages.error(Messages.Group.REFERENCE, paramTree, "dc.invalid.param", new Object[0]);
                } else if (!isTypeParameter) {
                    this.env.messages.error(Messages.Group.REFERENCE, paramTree, "dc.invalid.param", new Object[0]);
                }
            }
            this.env.messages.error(Messages.Group.REFERENCE, name, "dc.param.name.not.found", new Object[0]);
        } else if (!this.foundParams.add(element)) {
            this.env.messages.warning(Messages.Group.REFERENCE, paramTree, "dc.exists.param", name);
        }
        warnIfEmpty(paramTree, paramTree.getDescription());
        return (Void) super.visitParam(paramTree, (ParamTree) r82);
    }

    @Override
    public Void visitProvides(ProvidesTree providesTree, Void r72) {
        Env env = this.env;
        if (env.trees.getElement(env.currPath).getKind() != ElementKind.MODULE) {
            this.env.messages.error(Messages.Group.REFERENCE, providesTree, "dc.invalid.provides", new Object[0]);
        }
        if (this.env.trees.getElement(new DocTreePath(getCurrentPath(), providesTree.getServiceType())) == null) {
            this.env.messages.error(Messages.Group.REFERENCE, providesTree, "dc.service.not.found", new Object[0]);
        }
        return (Void) super.visitProvides(providesTree, (ProvidesTree) r72);
    }

    @Override
    public Void visitReference(ReferenceTree referenceTree, Void r72) {
        String signature = referenceTree.getSignature();
        if (signature.contains("<") || signature.contains(">")) {
            this.env.messages.error(Messages.Group.REFERENCE, referenceTree, "dc.type.arg.not.allowed", new Object[0]);
        }
        if (this.env.trees.getElement(getCurrentPath()) == null) {
            this.env.messages.error(Messages.Group.REFERENCE, referenceTree, "dc.ref.not.found", new Object[0]);
        }
        return (Void) super.visitReference(referenceTree, (ReferenceTree) r72);
    }

    @Override
    public Void visitReturn(ReturnTree returnTree, Void r72) {
        if (this.foundReturn) {
            this.env.messages.warning(Messages.Group.REFERENCE, returnTree, "dc.exists.return", new Object[0]);
        }
        Env env = this.env;
        Element element = env.trees.getElement(env.currPath);
        if (element.getKind() != ElementKind.METHOD || ((ExecutableElement) element).getReturnType().getKind() == TypeKind.VOID) {
            this.env.messages.error(Messages.Group.REFERENCE, returnTree, "dc.invalid.return", new Object[0]);
        }
        this.foundReturn = true;
        warnIfEmpty(returnTree, returnTree.getDescription());
        return (Void) super.visitReturn(returnTree, (ReturnTree) r72);
    }

    @Override
    public Void visitSerialData(SerialDataTree serialDataTree, Void r32) {
        warnIfEmpty(serialDataTree, serialDataTree.getDescription());
        return (Void) super.visitSerialData(serialDataTree, (SerialDataTree) r32);
    }

    @Override
    public Void visitSerialField(SerialFieldTree serialFieldTree, Void r32) {
        warnIfEmpty(serialFieldTree, serialFieldTree.getDescription());
        return (Void) super.visitSerialField(serialFieldTree, (SerialFieldTree) r32);
    }

    @Override
    public Void visitSince(SinceTree sinceTree, Void r32) {
        warnIfEmpty(sinceTree, sinceTree.getBody());
        return (Void) super.visitSince(sinceTree, (SinceTree) r32);
    }

    @Override
    public Void visitStartElement(StartElementTree startElementTree, Void r92) {
        HtmlTag htmlTag;
        Name name = startElementTree.getName();
        HtmlTag htmlTag2 = HtmlTag.get(name);
        if (htmlTag2 == null) {
            this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.unknown", name);
        } else {
            HtmlVersion htmlVersion = htmlTag2.allowedVersion;
            if (htmlVersion != HtmlVersion.ALL) {
                Env env = this.env;
                if (htmlVersion != env.htmlVersion) {
                    env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.not.supported", name);
                }
            }
            Iterator<TagStackItem> it = this.tagStack.iterator();
            while (true) {
                if (it.hasNext()) {
                    TagStackItem next = it.next();
                    if (next.tag.accepts(htmlTag2)) {
                        while (this.tagStack.peek() != next) {
                            warnIfEmpty(this.tagStack.peek(), (DocTree) null);
                            this.tagStack.pop();
                        }
                    } else if (next.tag.endKind != HtmlTag.EndKind.OPTIONAL) {
                        break;
                    }
                } else if (HtmlTag.BODY.accepts(htmlTag2)) {
                    while (!this.tagStack.isEmpty()) {
                        warnIfEmpty(this.tagStack.peek(), (DocTree) null);
                        this.tagStack.pop();
                    }
                }
            }
            markEnclosingTag(Flag.HAS_ELEMENT);
            checkStructure(startElementTree, htmlTag2);
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag[htmlTag2.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    checkHeader(startElementTree, htmlTag2);
                    break;
            }
            if (htmlTag2.flags.contains(HtmlTag.Flag.NO_NEST)) {
                Iterator<TagStackItem> it2 = this.tagStack.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (htmlTag2 == it2.next().tag) {
                            this.env.messages.warning(Messages.Group.HTML, startElementTree, "dc.tag.nested.not.allowed", name);
                        }
                    }
                }
            }
        }
        if (startElementTree.isSelfClosing()) {
            this.env.messages.error(Messages.Group.HTML, startElementTree, "dc.tag.self.closing", name);
        }
        try {
            TagStackItem peek = this.tagStack.peek();
            TagStackItem tagStackItem = new TagStackItem(startElementTree, htmlTag2);
            this.tagStack.push(tagStackItem);
            super.visitStartElement(startElementTree, (StartElementTree) r92);
            if (htmlTag2 != null) {
                switch (AnonymousClass1.$SwitchMap$com$sun$tools$doclint$HtmlTag[htmlTag2.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        if (peek != null && ((htmlTag = peek.tag) == HtmlTag.SECTION || htmlTag == HtmlTag.ARTICLE)) {
                            peek.flags.add(Flag.HAS_HEADING);
                            break;
                        }
                        break;
                    case 7:
                        if (peek != null && peek.tag == HtmlTag.TABLE) {
                            peek.flags.add(Flag.TABLE_HAS_CAPTION);
                            break;
                        }
                        break;
                    case 8:
                        if (!tagStackItem.attrs.contains(HtmlTag.Attr.ALT)) {
                            this.env.messages.error(Messages.Group.ACCESSIBILITY, startElementTree, "dc.no.alt.attr.for.image", new Object[0]);
                            break;
                        }
                        break;
                }
            }
            return null;
        } finally {
            if (htmlTag2 == null || htmlTag2.endKind == HtmlTag.EndKind.NONE) {
                this.tagStack.pop();
            }
        }
    }

    @Override
    public Void visitText(TextTree textTree, Void r22) {
        if (!hasNonWhitespace(textTree)) {
            return null;
        }
        checkAllowsText(textTree);
        markEnclosingTag(Flag.HAS_TEXT);
        return null;
    }

    @Override
    public Void visitThrows(ThrowsTree throwsTree, Void r82) {
        ReferenceTree exceptionName = throwsTree.getExceptionName();
        Element element = this.env.trees.getElement(new DocTreePath(getCurrentPath(), exceptionName));
        if (element == null) {
            this.env.messages.error(Messages.Group.REFERENCE, throwsTree, "dc.ref.not.found", new Object[0]);
        } else if (isThrowable(element.asType())) {
            int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[this.env.currElement.getKind().ordinal()];
            if (i10 != 1 && i10 != 2) {
                this.env.messages.error(Messages.Group.REFERENCE, throwsTree, "dc.invalid.throws", new Object[0]);
            } else if (isCheckedException(element.asType())) {
                checkThrowsDeclared(exceptionName, element.asType(), ((ExecutableElement) this.env.currElement).getThrownTypes());
            }
        } else {
            this.env.messages.error(Messages.Group.REFERENCE, throwsTree, "dc.invalid.throws", new Object[0]);
        }
        warnIfEmpty(throwsTree, throwsTree.getDescription());
        return scan(throwsTree.getDescription(), (List<? extends DocTree>) r82);
    }

    @Override
    public Void visitUnknownBlockTag(UnknownBlockTagTree unknownBlockTagTree, Void r32) {
        checkUnknownTag(unknownBlockTagTree, unknownBlockTagTree.getTagName());
        return (Void) super.visitUnknownBlockTag(unknownBlockTagTree, (UnknownBlockTagTree) r32);
    }

    @Override
    public Void visitUnknownInlineTag(UnknownInlineTagTree unknownInlineTagTree, Void r32) {
        checkUnknownTag(unknownInlineTagTree, unknownInlineTagTree.getTagName());
        return (Void) super.visitUnknownInlineTag(unknownInlineTagTree, (UnknownInlineTagTree) r32);
    }

    @Override
    public Void visitUses(UsesTree usesTree, Void r72) {
        Env env = this.env;
        if (env.trees.getElement(env.currPath).getKind() != ElementKind.MODULE) {
            this.env.messages.error(Messages.Group.REFERENCE, usesTree, "dc.invalid.uses", new Object[0]);
        }
        if (this.env.trees.getElement(new DocTreePath(getCurrentPath(), usesTree.getServiceType())) == null) {
            this.env.messages.error(Messages.Group.REFERENCE, usesTree, "dc.service.not.found", new Object[0]);
        }
        return (Void) super.visitUses(usesTree, (UsesTree) r72);
    }

    @Override
    public Void visitValue(ValueTree valueTree, Void r72) {
        ReferenceTree reference = valueTree.getReference();
        if (reference != null && !reference.getSignature().isEmpty()) {
            if (!isConstant(this.env.trees.getElement(new DocTreePath(getCurrentPath(), reference)))) {
                this.env.messages.error(Messages.Group.REFERENCE, valueTree, "dc.value.not.a.constant", new Object[0]);
            }
        } else if (!isConstant(this.env.currElement)) {
            this.env.messages.error(Messages.Group.REFERENCE, valueTree, "dc.value.not.allowed.here", new Object[0]);
        }
        markEnclosingTag(Flag.HAS_INLINE_TAG);
        return (Void) super.visitValue(valueTree, (ValueTree) r72);
    }

    @Override
    public Void visitVersion(VersionTree versionTree, Void r32) {
        warnIfEmpty(versionTree, versionTree.getBody());
        return (Void) super.visitVersion(versionTree, (VersionTree) r32);
    }

    public void toString(TreePath treePath, StringBuilder sb2) {
        TreePath parentPath = treePath.getParentPath();
        if (parentPath != null) {
            toString(parentPath, sb2);
            sb2.append(DocLint.SEPARATOR);
        }
        sb2.append((Object) treePath.getLeaf().getKind());
        sb2.append(s.f32937c);
        sb2.append(this.env.getPos(treePath));
        sb2.append(":S");
        sb2.append(this.env.getStartPos(treePath));
    }

    public void warnIfEmpty(DocTree docTree, List<? extends DocTree> list) {
        for (DocTree docTree2 : list) {
            if (AnonymousClass1.$SwitchMap$com$sun$source$doctree$DocTree$Kind[docTree2.getKind().ordinal()] != 4 || hasNonWhitespace((TextTree) docTree2)) {
                return;
            }
        }
        this.env.messages.warning(Messages.Group.SYNTAX, docTree, "dc.empty", docTree.getKind().tagName);
    }
}
