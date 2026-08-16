.class public final synthetic Lorg/openjdk/tools/javac/processing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/d;->b:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/d;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/d;->b:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/d;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->a(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
