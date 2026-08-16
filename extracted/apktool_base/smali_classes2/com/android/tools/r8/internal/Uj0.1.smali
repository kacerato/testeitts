.class public final Lcom/android/tools/r8/internal/Uj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceMethodElement;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/rk0;

.field public final b:Lcom/android/tools/r8/internal/Vj0;

.field public final c:Lcom/android/tools/r8/internal/Mj0;

.field public final d:Lcom/android/tools/r8/internal/JV;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Vj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/rk0;Lcom/android/tools/r8/internal/JV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Uj0;->c:Lcom/android/tools/r8/internal/Mj0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uj0;->b:Lcom/android/tools/r8/internal/Vj0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Uj0;->a:Lcom/android/tools/r8/internal/rk0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Uj0;->d:Lcom/android/tools/r8/internal/JV;

    return-void
.end method


# virtual methods
.method public final getClassElement()Lcom/android/tools/r8/retrace/RetraceClassElement;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->c:Lcom/android/tools/r8/internal/Mj0;

    return-object v0
.end method

.method public final getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->b:Lcom/android/tools/r8/internal/Vj0;

    return-object v0
.end method

.method public final getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->a:Lcom/android/tools/r8/internal/rk0;

    return-object v0
.end method

.method public final getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->a:Lcom/android/tools/r8/internal/rk0;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uj0;->b:Lcom/android/tools/r8/internal/Vj0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Vj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-object v2, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    new-instance v2, Lcom/android/tools/r8/internal/tk0;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    invoke-interface {v3}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/dV;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/tk0;-><init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V

    return-object v2
.end method

.method public final isCompilerSynthesized()Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->d:Lcom/android/tools/r8/internal/JV;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->b:Lcom/android/tools/r8/internal/Vj0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vj0;->isAmbiguous()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->d:Lcom/android/tools/r8/internal/JV;

    iget-object v0, v0, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->f()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->d:Lcom/android/tools/r8/internal/JV;

    iget-object v0, v0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/mappinginformation/e;->l()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v2, v2, Lcom/android/tools/r8/internal/O40;

    if-eqz v2, :cond_2

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public final isUnknown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj0;->a:Lcom/android/tools/r8/internal/rk0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/pk0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
