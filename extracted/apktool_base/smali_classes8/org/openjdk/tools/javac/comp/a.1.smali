.class public final synthetic Lorg/openjdk/tools/javac/comp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Analyzer;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/a;->b:Lorg/openjdk/tools/javac/comp/Analyzer;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/a;->c:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/a;->b:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/a;->c:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Analyzer;->b(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    move-result-object p1

    return-object p1
.end method
