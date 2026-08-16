.class public final synthetic Lorg/openjdk/tools/javac/main/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->e(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method
