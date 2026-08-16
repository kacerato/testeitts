.class public final Lcom/android/tools/r8/internal/LW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/inspector/MethodInspector;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/cd;

.field public final b:Lcom/android/tools/r8/graph/j1;

.field public c:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/cd;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/LW;->a:Lcom/android/tools/r8/internal/cd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/LW;->b:Lcom/android/tools/r8/graph/j1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/references/TypeReference;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMethodReference()Lcom/android/tools/r8/references/MethodReference;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/LW;->c:Lcom/android/tools/r8/references/MethodReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LW;->a:Lcom/android/tools/r8/internal/cd;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cd;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/LW;->b:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/LW;->b:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/YL0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/YL0;-><init>()V

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/LW;->b:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/LW;->b:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v3

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/LW;->c:Lcom/android/tools/r8/references/MethodReference;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/LW;->c:Lcom/android/tools/r8/references/MethodReference;

    return-object v0
.end method
