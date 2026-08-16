.class public interface abstract Lorg/openjdk/javax/tools/DocumentationTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/Tool;
.implements Lorg/openjdk/javax/tools/OptionChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/tools/DocumentationTool$Location;,
        Lorg/openjdk/javax/tools/DocumentationTool$DocumentationTask;
    }
.end annotation


# virtual methods
.method public abstract getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/javax/tools/StandardJavaFileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/openjdk/javax/tools/StandardJavaFileManager;"
        }
    .end annotation
.end method

.method public abstract getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/javax/tools/DocumentationTool$DocumentationTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lorg/openjdk/javax/tools/JavaFileManager;",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Lorg/openjdk/javax/tools/DocumentationTool$DocumentationTask;"
        }
    .end annotation
.end method
