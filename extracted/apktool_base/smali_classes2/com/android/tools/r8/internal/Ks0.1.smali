.class public final Lcom/android/tools/r8/internal/Ks0;
.super Lcom/android/tools/r8/internal/Ms0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Tv;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Tv;-><init>(Lcom/android/tools/r8/graph/k3;)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/FieldReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$FieldAccessFlags;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Ms0;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;Z)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
