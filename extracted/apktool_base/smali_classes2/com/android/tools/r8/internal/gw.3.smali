.class public final Lcom/android/tools/r8/internal/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/inspector/FieldInspector;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/cd;

.field public final b:Lcom/android/tools/r8/graph/g1;

.field public c:Lcom/android/tools/r8/references/FieldReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/cd;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gw;->c:Lcom/android/tools/r8/references/FieldReference;

    iput-object p1, p0, Lcom/android/tools/r8/internal/gw;->a:Lcom/android/tools/r8/internal/cd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    return-void
.end method


# virtual methods
.method public final getFieldReference()Lcom/android/tools/r8/references/FieldReference;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->c:Lcom/android/tools/r8/references/FieldReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->a:Lcom/android/tools/r8/internal/cd;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cd;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/references/Reference;->field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gw;->c:Lcom/android/tools/r8/references/FieldReference;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->c:Lcom/android/tools/r8/references/FieldReference;

    return-object v0
.end method

.method public final getInitialValue()Ljava/util/Optional;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Cw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Cw0;-><init>(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/M2;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final isFinal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    return v0
.end method

.method public final isStatic()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gw;->b:Lcom/android/tools/r8/graph/g1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    return v0
.end method
