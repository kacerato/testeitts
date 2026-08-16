.class public final Lorg/eclipse/jdt/core/compiler/batch/BatchCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->tokenize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/compiler/batch/BatchCompiler;->compile([Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)Z

    move-result p0

    return p0
.end method

.method public static compile([Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)Z

    move-result p0

    return p0
.end method
