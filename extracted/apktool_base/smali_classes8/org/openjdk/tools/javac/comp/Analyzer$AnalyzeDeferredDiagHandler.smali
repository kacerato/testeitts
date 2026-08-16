.class Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;
.super Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnalyzeDeferredDiagHandler"
.end annotation


# instance fields
.field context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Analyzer;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v0, Lorg/openjdk/tools/javac/comp/c;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/comp/c;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Filter;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;->context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;->lambda$new$0(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->errors:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
