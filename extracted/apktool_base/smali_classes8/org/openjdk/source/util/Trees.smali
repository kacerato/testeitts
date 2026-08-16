.class public abstract Lorg/openjdk/source/util/Trees;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lorg/openjdk/source/util/Trees;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/openjdk/source/util/Trees;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.openjdk.tools.javac.api.JavacTrees"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "instance"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/util/Trees;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static instance(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)Lorg/openjdk/source/util/Trees;
    .locals 2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.openjdk.tools.javac.processing.JavacProcessingEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    const-class v0, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, p0}, Lorg/openjdk/source/util/Trees;->getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lorg/openjdk/source/util/Trees;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static instance(Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;)Lorg/openjdk/source/util/Trees;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "org.openjdk.tools.javac.api.JavacTaskImpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "org.openjdk.tools.javac.api.BasicJavacTask"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5
    :cond_1
    :goto_0
    const-class v0, Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;

    invoke-static {v0, p0}, Lorg/openjdk/source/util/Trees;->getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lorg/openjdk/source/util/Trees;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getDocComment(Lorg/openjdk/source/util/TreePath;)Ljava/lang/String;
.end method

.method public abstract getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract getLub(Lorg/openjdk/source/tree/CatchTree;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract getOriginalType(Lorg/openjdk/javax/lang/model/type/ErrorType;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract getPath(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/util/TreePath;
.end method

.method public abstract getPath(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/source/util/TreePath;
.end method

.method public abstract getPath(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/source/util/TreePath;
.end method

.method public abstract getPath(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
.end method

.method public abstract getScope(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/tree/Scope;
.end method

.method public abstract getSourcePositions()Lorg/openjdk/source/util/SourcePositions;
.end method

.method public abstract getTree(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/source/tree/ClassTree;
.end method

.method public abstract getTree(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Lorg/openjdk/source/tree/MethodTree;
.end method

.method public abstract getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getTypeMirror(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract isAccessible(Lorg/openjdk/source/tree/Scope;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/type/DeclaredType;)Z
.end method

.method public abstract isAccessible(Lorg/openjdk/source/tree/Scope;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
.end method

.method public abstract printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/tree/CompilationUnitTree;)V
.end method
