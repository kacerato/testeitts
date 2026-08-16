.class public abstract Lorg/openjdk/source/util/DocTrees;
.super Lorg/openjdk/source/util/Trees;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/Trees;-><init>()V

    return-void
.end method

.method public static instance(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)Lorg/openjdk/source/util/DocTrees;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.openjdk.tools.javac.processing.JavacProcessingEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, p0}, Lorg/openjdk/source/util/Trees;->getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lorg/openjdk/source/util/Trees;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/util/DocTrees;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static instance(Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;)Lorg/openjdk/source/util/DocTrees;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/openjdk/source/util/Trees;->instance(Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;)Lorg/openjdk/source/util/Trees;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/util/DocTrees;

    return-object p0
.end method


# virtual methods
.method public abstract getBreakIterator()Ljava/text/BreakIterator;
.end method

.method public abstract getDocCommentTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/doctree/DocCommentTree;
.end method

.method public abstract getDocCommentTree(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/String;)Lorg/openjdk/source/doctree/DocCommentTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDocCommentTree(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/source/doctree/DocCommentTree;
.end method

.method public abstract getDocCommentTree(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/doctree/DocCommentTree;
.end method

.method public abstract getDocTreeFactory()Lorg/openjdk/source/util/DocTreeFactory;
.end method

.method public abstract getDocTreePath(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/lang/model/element/PackageElement;)Lorg/openjdk/source/util/DocTreePath;
.end method

.method public abstract getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract getFirstSentence(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourcePositions()Lorg/openjdk/source/util/DocSourcePositions;
.end method

.method public bridge synthetic getSourcePositions()Lorg/openjdk/source/util/SourcePositions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTrees;->getSourcePositions()Lorg/openjdk/source/util/DocSourcePositions;

    move-result-object v0

    return-object v0
.end method

.method public abstract printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/tree/CompilationUnitTree;)V
.end method

.method public abstract setBreakIterator(Ljava/text/BreakIterator;)V
.end method
