package org.openjdk.tools.doclint;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Pattern;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.util.DocTrees;
import org.openjdk.source.util.JavacTask;
import org.openjdk.source.util.TreePath;
import org.openjdk.tools.javac.model.JavacTypes;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.MatchingUtils;
import org.openjdk.tools.javac.util.StringUtils;

public class Env {
    AccessKind currAccess;
    DocCommentTree currDocComment;
    Element currElement;
    Set<? extends ExecutableElement> currOverriddenMethods;
    TreePath currPath;
    Set<String> customTags;
    Elements elements;
    Set<Pattern> excludePackages;
    Set<Pattern> includePackages;
    TypeMirror java_lang_Error;
    TypeMirror java_lang_RuntimeException;
    TypeMirror java_lang_Throwable;
    TypeMirror java_lang_Void;
    DocTrees trees;
    Types types;
    int implicitHeaderLevel = 0;
    HtmlVersion htmlVersion = HtmlVersion.HTML4;
    final Messages messages = new Messages(this);

    public enum AccessKind {
        PRIVATE,
        PACKAGE,
        PROTECTED,
        PUBLIC;

        public static boolean accepts(String str) {
            for (AccessKind accessKind : values()) {
                if (str.equals(StringUtils.toLowerCase(accessKind.name()))) {
                    return true;
                }
            }
            return false;
        }

        public static AccessKind of(Set<Modifier> set) {
            return set.contains(Modifier.PUBLIC) ? PUBLIC : set.contains(Modifier.PROTECTED) ? PROTECTED : set.contains(Modifier.PRIVATE) ? PRIVATE : PACKAGE;
        }
    }

    private <T extends Comparable<T>> T min(T t10, T t11) {
        return (t10 != null && (t11 == null || t10.compareTo(t11) <= 0)) ? t10 : t11;
    }

    public static boolean validatePackages(String str) {
        String[] split = str.split(DocLint.SEPARATOR);
        int length = split.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str2 = split[i10];
            if (str2.startsWith("-")) {
                str2 = str2.substring(1);
            }
            if (!str2.isEmpty() && !MatchingUtils.isValidImportString(str2)) {
                return false;
            }
        }
        return true;
    }

    public AccessKind getAccessKind() {
        return this.currAccess;
    }

    public long getPos(TreePath treePath) {
        return ((JCTree) treePath.getLeaf()).pos;
    }

    public long getStartPos(TreePath treePath) {
        return this.trees.getSourcePositions().getStartPosition(treePath.getCompilationUnit(), treePath.getLeaf());
    }

    public void init(JavacTask javacTask) {
        init(DocTrees.instance((JavaCompiler.CompilationTask) javacTask), javacTask.getElements(), javacTask.getTypes());
    }

    public void initTypes() {
        if (this.java_lang_Error != null) {
            return;
        }
        this.java_lang_Error = this.elements.getTypeElement("java.lang.Error").asType();
        this.java_lang_RuntimeException = this.elements.getTypeElement("java.lang.RuntimeException").asType();
        this.java_lang_Throwable = this.elements.getTypeElement("java.lang.Throwable").asType();
        this.java_lang_Void = this.elements.getTypeElement("java.lang.Void").asType();
    }

    public void setCheckPackages(String str) {
        boolean z10;
        this.includePackages = new HashSet();
        this.excludePackages = new HashSet();
        String[] split = str.split(DocLint.SEPARATOR);
        int length = split.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str2 = split[i10];
            if (str2.startsWith("-")) {
                z10 = true;
                str2 = str2.substring(1);
            } else {
                z10 = false;
            }
            if (!str2.isEmpty()) {
                Pattern validImportStringToPattern = MatchingUtils.validImportStringToPattern(str2);
                if (z10) {
                    this.excludePackages.add(validImportStringToPattern);
                } else {
                    this.includePackages.add(validImportStringToPattern);
                }
            }
        }
    }

    public void setCurrent(TreePath treePath, DocCommentTree docCommentTree) {
        this.currPath = treePath;
        this.currDocComment = docCommentTree;
        Element element = this.trees.getElement(treePath);
        this.currElement = element;
        this.currOverriddenMethods = ((JavacTypes) this.types).getOverriddenMethods(element);
        AccessKind accessKind = AccessKind.PUBLIC;
        while (treePath != null) {
            Element element2 = this.trees.getElement(treePath);
            if (element2 != null && element2.getKind() != ElementKind.PACKAGE && element2.getKind() != ElementKind.MODULE) {
                accessKind = (AccessKind) min(accessKind, AccessKind.of(element2.getModifiers()));
            }
            treePath = treePath.getParentPath();
        }
        this.currAccess = accessKind;
    }

    public void setCustomTags(String str) {
        this.customTags = new LinkedHashSet();
        for (String str2 : str.split(DocLint.SEPARATOR)) {
            if (!str2.isEmpty()) {
                this.customTags.add(str2);
            }
        }
    }

    public void setHtmlVersion(HtmlVersion htmlVersion) {
        this.htmlVersion = htmlVersion;
    }

    public void setImplicitHeaders(int i10) {
        this.implicitHeaderLevel = i10;
    }

    public boolean shouldCheck(CompilationUnitTree compilationUnitTree) {
        if (this.includePackages == null) {
            return true;
        }
        String obj = compilationUnitTree.getPackageName() != null ? compilationUnitTree.getPackageName().toString() : "";
        if (!this.includePackages.isEmpty()) {
            Iterator<Pattern> it = this.includePackages.iterator();
            while (it.hasNext()) {
                if (it.next().matcher(obj).matches()) {
                }
            }
            return false;
        }
        Iterator<Pattern> it2 = this.excludePackages.iterator();
        while (it2.hasNext()) {
            if (it2.next().matcher(obj).matches()) {
                return false;
            }
        }
        return true;
    }

    public void init(DocTrees docTrees, Elements elements, Types types) {
        this.trees = docTrees;
        this.elements = elements;
        this.types = types;
    }
}
