.class public abstract Lcom/android/tools/r8/retrace/RetraceBuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/android/tools/r8/retrace/RetraceBuilderBase<",
        "TB;TT;TST;>;T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected diagnosticsHandler:Lcom/android/tools/r8/DiagnosticsHandler;

.field protected isVerbose:Z

.field protected stackTraceLineParser:Lcom/android/tools/r8/retrace/StackTraceLineParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/retrace/StackTraceLineParser<",
            "TT;TST;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract self()Lcom/android/tools/r8/retrace/RetraceBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public setDiagnosticsHandler(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/RetraceBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->diagnosticsHandler:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->self()Lcom/android/tools/r8/retrace/RetraceBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setStackTraceLineParser(Lcom/android/tools/r8/retrace/StackTraceLineParser;)Lcom/android/tools/r8/retrace/RetraceBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/StackTraceLineParser<",
            "TT;TST;>;)TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->stackTraceLineParser:Lcom/android/tools/r8/retrace/StackTraceLineParser;

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->self()Lcom/android/tools/r8/retrace/RetraceBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setVerbose(Z)Lcom/android/tools/r8/retrace/RetraceBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->isVerbose:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->self()Lcom/android/tools/r8/retrace/RetraceBuilderBase;

    move-result-object p1

    return-object p1
.end method
