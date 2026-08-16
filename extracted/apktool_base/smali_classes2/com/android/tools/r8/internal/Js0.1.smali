.class public final Lcom/android/tools/r8/internal/Js0;
.super Lcom/android/tools/r8/internal/Ms0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->M0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Bc;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Bc;-><init>(Lcom/android/tools/r8/graph/Q;)V

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
