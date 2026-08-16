.class public Lorg/openjdk/tools/doclint/Env;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/doclint/Env$AccessKind;
    }
.end annotation


# instance fields
.field currAccess:Lorg/openjdk/tools/doclint/Env$AccessKind;

.field currDocComment:Lorg/openjdk/source/doctree/DocCommentTree;

.field currElement:Lorg/openjdk/javax/lang/model/element/Element;

.field currOverriddenMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field currPath:Lorg/openjdk/source/util/TreePath;

.field customTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field elements:Lorg/openjdk/javax/lang/model/util/Elements;

.field excludePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

.field implicitHeaderLevel:I

.field includePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field java_lang_Error:Lorg/openjdk/javax/lang/model/type/TypeMirror;

.field java_lang_RuntimeException:Lorg/openjdk/javax/lang/model/type/TypeMirror;

.field java_lang_Throwable:Lorg/openjdk/javax/lang/model/type/TypeMirror;

.field java_lang_Void:Lorg/openjdk/javax/lang/model/type/TypeMirror;

.field final messages:Lorg/openjdk/tools/doclint/Messages;

.field trees:Lorg/openjdk/source/util/DocTrees;

.field types:Lorg/openjdk/javax/lang/model/util/Types;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/doclint/Env;->implicitHeaderLevel:I

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML4:Lorg/openjdk/tools/doclint/HtmlVersion;

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    new-instance v0, Lorg/openjdk/tools/doclint/Messages;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/doclint/Messages;-><init>(Lorg/openjdk/tools/doclint/Env;)V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    return-void
.end method

.method private min(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public static validatePackages(Ljava/lang/String;)Z
    .locals 6

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/MatchingUtils;->isValidImportString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public getAccessKind()Lorg/openjdk/tools/doclint/Env$AccessKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->currAccess:Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object v0
.end method

.method public getPos(Lorg/openjdk/source/util/TreePath;)J
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getStartPos(Lorg/openjdk/source/util/TreePath;)J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    invoke-virtual {v0}, Lorg/openjdk/source/util/DocTrees;->getSourcePositions()Lorg/openjdk/source/util/DocSourcePositions;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/openjdk/source/util/SourcePositions;->getStartPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lorg/openjdk/source/util/DocTrees;Lorg/openjdk/javax/lang/model/util/Elements;Lorg/openjdk/javax/lang/model/util/Types;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/doclint/Env;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    return-void
.end method

.method public init(Lorg/openjdk/source/util/JavacTask;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/openjdk/source/util/DocTrees;->instance(Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;)Lorg/openjdk/source/util/DocTrees;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/source/util/JavacTask;->getElements()Lorg/openjdk/javax/lang/model/util/Elements;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/source/util/JavacTask;->getTypes()Lorg/openjdk/javax/lang/model/util/Types;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/doclint/Env;->init(Lorg/openjdk/source/util/DocTrees;Lorg/openjdk/javax/lang/model/util/Elements;Lorg/openjdk/javax/lang/model/util/Types;)V

    return-void
.end method

.method public initTypes()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->java_lang_Error:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.Error"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->java_lang_Error:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.RuntimeException"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->java_lang_RuntimeException:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.Throwable"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->java_lang_Throwable:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.Void"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->java_lang_Void:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    return-void
.end method

.method public setCheckPackages(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->includePackages:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->excludePackages:Ljava/util/Set;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/MatchingUtils;->validImportStringToPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/doclint/Env;->excludePackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Env;->includePackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setCurrent(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V
    .locals 3

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    iput-object p2, p0, Lorg/openjdk/tools/doclint/Env;->currDocComment:Lorg/openjdk/source/doctree/DocCommentTree;

    iget-object p2, p0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    invoke-virtual {p2, p1}, Lorg/openjdk/source/util/Trees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    check-cast v0, Lorg/openjdk/tools/javac/model/JavacTypes;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/model/JavacTypes;->getOverriddenMethods(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/doclint/Env;->currOverriddenMethods:Ljava/util/Set;

    sget-object p2, Lorg/openjdk/tools/doclint/Env$AccessKind;->PUBLIC:Lorg/openjdk/tools/doclint/Env$AccessKind;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    invoke-virtual {v0, p1}, Lorg/openjdk/source/util/Trees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/doclint/Env$AccessKind;->of(Ljava/util/Set;)Lorg/openjdk/tools/doclint/Env$AccessKind;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/doclint/Env;->min(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/doclint/Env$AccessKind;

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/openjdk/tools/doclint/Env;->currAccess:Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-void
.end method

.method public setCustomTags(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Env;->customTags:Ljava/util/Set;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/doclint/Env;->customTags:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHtmlVersion(Lorg/openjdk/tools/doclint/HtmlVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    return-void
.end method

.method public setImplicitHeaders(I)V
    .locals 0

    iput p1, p0, Lorg/openjdk/tools/doclint/Env;->implicitHeaderLevel:I

    return-void
.end method

.method public shouldCheck(Lorg/openjdk/source/tree/CompilationUnitTree;)Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->includePackages:Ljava/util/Set;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->includePackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->includePackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Env;->excludePackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_6
    return v1
.end method
