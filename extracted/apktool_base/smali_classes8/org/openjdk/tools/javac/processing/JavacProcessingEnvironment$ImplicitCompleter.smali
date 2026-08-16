.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImplicitCompleter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

.field private final topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;->topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;->topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->readSourceFile(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method
