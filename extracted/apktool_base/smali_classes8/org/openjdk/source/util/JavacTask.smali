.class public abstract Lorg/openjdk/source/util/JavacTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)Lorg/openjdk/source/util/JavacTask;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.openjdk.tools.javac.processing.JavacProcessingEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lorg/openjdk/tools/javac/util/Context;

    move-result-object p0

    const-class v0, Lorg/openjdk/source/util/JavacTask;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/util/JavacTask;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/api/BasicJavacTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/api/BasicJavacTask;-><init>(Lorg/openjdk/tools/javac/util/Context;Z)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract addTaskListener(Lorg/openjdk/source/util/TaskListener;)V
.end method

.method public abstract analyze()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generate()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getElements()Lorg/openjdk/javax/lang/model/util/Elements;
.end method

.method public abstract getTypeMirror(Ljava/lang/Iterable;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;)",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;"
        }
    .end annotation
.end method

.method public abstract getTypes()Lorg/openjdk/javax/lang/model/util/Types;
.end method

.method public abstract parse()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeTaskListener(Lorg/openjdk/source/util/TaskListener;)V
.end method

.method public abstract setTaskListener(Lorg/openjdk/source/util/TaskListener;)V
.end method
