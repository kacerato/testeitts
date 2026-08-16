.class public final synthetic Lorg/openjdk/tools/javac/comp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/c;->b:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    return-void
.end method


# virtual methods
.method public final accepts(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/c;->b:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;->a(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p1

    return p1
.end method
