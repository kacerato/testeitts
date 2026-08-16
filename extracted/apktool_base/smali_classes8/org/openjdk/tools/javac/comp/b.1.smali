.class public final synthetic Lorg/openjdk/tools/javac/comp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/b;->b:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/b;->b:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer;->a(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Ljava/util/Map$Entry;)V

    return-void
.end method
