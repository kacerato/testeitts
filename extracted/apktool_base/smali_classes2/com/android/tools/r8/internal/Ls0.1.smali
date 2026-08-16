.class public final Lcom/android/tools/r8/internal/Ls0;
.super Lcom/android/tools/r8/internal/Ms0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/BW;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/BW;-><init>(Lcom/android/tools/r8/graph/L4;)V

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p3

    new-instance v0, Lcom/android/tools/r8/internal/BW;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/BW;-><init>(Lcom/android/tools/r8/graph/L4;)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
