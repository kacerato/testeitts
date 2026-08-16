.class public Lcom/android/tools/r8/retrace/Retrace$Builder;
.super Lcom/android/tools/r8/retrace/RetraceBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/Retrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Lcom/android/tools/r8/retrace/RetraceBuilderBase<",
        "Lcom/android/tools/r8/retrace/Retrace$Builder<",
        "TT;TST;>;TT;TST;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/tools/r8/retrace/MappingSupplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/retrace/RetraceBuilderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/retrace/Retrace;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/retrace/Retrace<",
            "TT;TST;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/retrace/Retrace;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->stackTraceLineParser:Lcom/android/tools/r8/retrace/StackTraceLineParser;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/Retrace$Builder;->a:Lcom/android/tools/r8/retrace/MappingSupplier;

    iget-object v3, p0, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->diagnosticsHandler:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-boolean v4, p0, Lcom/android/tools/r8/retrace/RetraceBuilderBase;->isVerbose:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/retrace/Retrace;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    return-object v0
.end method

.method public self()Lcom/android/tools/r8/retrace/Retrace$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/retrace/Retrace$Builder<",
            "TT;TST;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/android/tools/r8/retrace/RetraceBuilderBase;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/Retrace$Builder;->self()Lcom/android/tools/r8/retrace/Retrace$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/Retrace$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/MappingSupplier<",
            "*>;)",
            "Lcom/android/tools/r8/retrace/Retrace$Builder<",
            "TT;TST;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/Retrace$Builder;->a:Lcom/android/tools/r8/retrace/MappingSupplier;

    return-object p0
.end method
