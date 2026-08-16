.class public final Lcom/android/tools/r8/internal/Rj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceFrameElement;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/rk0;

.field public final b:Lcom/android/tools/r8/internal/Tj0;

.field public final c:Lcom/android/tools/r8/internal/Mj0;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/Optional;

.field public final f:Ljava/util/OptionalInt;

.field public final g:Lcom/android/tools/r8/internal/wk0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Tj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/rk0;Ljava/util/List;Ljava/util/Optional;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/wk0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rj0;->b:Lcom/android/tools/r8/internal/Tj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Rj0;->c:Lcom/android/tools/r8/internal/Mj0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Rj0;->f:Ljava/util/OptionalInt;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Rj0;->g:Lcom/android/tools/r8/internal/wk0;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/android/tools/r8/naming/k$b;
    .locals 0

    check-cast p0, Lcom/android/tools/r8/internal/Sj0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    return-object p0
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    new-instance v2, Lcom/android/tools/r8/internal/sk0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/sk0;-><init>(Lcom/android/tools/r8/internal/Rj0;Lcom/android/tools/r8/retrace/RetracedMethodReference;I)V

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Rj0;->getOuterFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/rk0;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/android/tools/r8/internal/sk0;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/tools/r8/internal/sk0;-><init>(Lcom/android/tools/r8/internal/Rj0;Lcom/android/tools/r8/retrace/RetracedMethodReference;I)V

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    new-instance v2, Lcom/android/tools/r8/internal/sk0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/sk0;-><init>(Lcom/android/tools/r8/internal/Rj0;Lcom/android/tools/r8/retrace/RetracedMethodReference;I)V

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final forEachRewritten(Ljava/util/function/Consumer;)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->b:Lcom/android/tools/r8/internal/Tj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tj0;->d:Lcom/android/tools/r8/internal/Zj0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/ak0;->b:Lcom/android/tools/r8/internal/ak0;

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    new-instance v3, Lcom/android/tools/r8/internal/xV0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/xV0;-><init>()V

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    invoke-virtual {v4}, Lcom/android/tools/r8/naming/k$b;->g()Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Fk0;

    iget-object v6, v5, Lcom/android/tools/r8/internal/Fk0;->a:Ljava/util/AbstractCollection;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Ek0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/Ek0;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v8, v0, Lcom/android/tools/r8/internal/Zj0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_5
    iget-object v5, v5, Lcom/android/tools/r8/internal/Fk0;->b:Ljava/util/AbstractCollection;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Dk0;

    iget v6, v6, Lcom/android/tools/r8/internal/Dk0;->a:I

    add-int/2addr v3, v6

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/ak0;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/ak0;-><init>(I)V

    goto :goto_3

    :cond_7
    :goto_2
    sget-object v0, Lcom/android/tools/r8/internal/ak0;->b:Lcom/android/tools/r8/internal/ak0;

    :goto_3
    iget v0, v0, Lcom/android/tools/r8/internal/ak0;->a:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v3

    :goto_5
    if-le v0, v2, :cond_a

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->g:Lcom/android/tools/r8/internal/wk0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/wk0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/rk0;->a()Lcom/android/tools/r8/internal/pk0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;->create(ILjava/lang/String;)Lcom/android/tools/r8/retrace/RetraceInvalidRewriteFrameDiagnostics;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    move v0, v1

    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Rj0;->getOuterFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/rk0;

    add-int/lit8 v7, v0, -0x1

    if-gtz v0, :cond_b

    add-int/lit8 v0, v5, 0x1

    new-instance v8, Lcom/android/tools/r8/internal/sk0;

    invoke-direct {v8, p0, v2, v5}, Lcom/android/tools/r8/internal/sk0;-><init>(Lcom/android/tools/r8/internal/Rj0;Lcom/android/tools/r8/retrace/RetracedMethodReference;I)V

    invoke-interface {p1, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v5, v0

    :cond_b
    move-object v2, v6

    move v0, v7

    goto :goto_6

    :cond_c
    if-gtz v0, :cond_12

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->f()Z

    move-result v1

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Sj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v4}, Lcom/android/tools/r8/naming/mappinginformation/e;->l()Z

    move-result v6

    if-nez v6, :cond_10

    instance-of v4, v4, Lcom/android/tools/r8/internal/O40;

    if-eqz v4, :cond_f

    :cond_10
    move v1, v3

    :cond_11
    :goto_7
    if-nez v1, :cond_12

    new-instance v0, Lcom/android/tools/r8/internal/sk0;

    invoke-direct {v0, p0, v2, v5}, Lcom/android/tools/r8/internal/sk0;-><init>(Lcom/android/tools/r8/internal/Rj0;Lcom/android/tools/r8/retrace/RetracedMethodReference;I)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public final getClassElement()Lcom/android/tools/r8/retrace/RetraceClassElement;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->c:Lcom/android/tools/r8/internal/Mj0;

    return-object v0
.end method

.method public final getOuterFrames()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Sj0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Rj0;->c:Lcom/android/tools/r8/internal/Mj0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    sget-object v5, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    iget-object v3, v3, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/kk0;->a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Rj0;->b:Lcom/android/tools/r8/internal/Tj0;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Rj0;->f:Ljava/util/OptionalInt;

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/tools/r8/internal/Tj0;->a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/Sj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/pk0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->b:Lcom/android/tools/r8/internal/Tj0;

    return-object v0
.end method

.method public final getRetraceStackTraceContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->f:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V;

    iget-object v0, v0, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/android/tools/r8/internal/O40;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Sj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/android/tools/r8/internal/O40;

    if-eqz v1, :cond_3

    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->f:Ljava/util/OptionalInt;

    new-instance v1, Lcom/android/tools/r8/internal/Zj0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/Zj0;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/OptionalInt;)V

    return-object v1

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceFile(Lcom/android/tools/r8/retrace/RetracedClassMemberReference;)Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 3

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->b:Lcom/android/tools/r8/internal/Tj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-object v1, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    new-instance v1, Lcom/android/tools/r8/internal/tk0;

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    invoke-interface {v2}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/dV;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/tk0;-><init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getTopFrame()Lcom/android/tools/r8/retrace/RetracedMethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    return-object v0
.end method

.method public final isCompilerSynthesized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Rj0;->getOuterFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->f()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Sj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v3}, Lcom/android/tools/r8/naming/mappinginformation/e;->l()Z

    move-result v4

    if-nez v4, :cond_3

    instance-of v3, v3, Lcom/android/tools/r8/internal/O40;

    if-eqz v3, :cond_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final isUnknown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rj0;->a:Lcom/android/tools/r8/internal/rk0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/pk0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 2

    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/wV0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/wV0;-><init>(Ljava/util/stream/Stream$Builder;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Rj0;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final streamRewritten(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Ljava/util/stream/Stream;
    .locals 1

    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/wV0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/wV0;-><init>(Ljava/util/stream/Stream$Builder;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Rj0;->forEachRewritten(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
