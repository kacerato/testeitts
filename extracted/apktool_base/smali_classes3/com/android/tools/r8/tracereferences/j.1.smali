.class public Lcom/android/tools/r8/tracereferences/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

.field public final d:Lcom/android/tools/r8/DiagnosticsHandler;

.field public final e:Ljava/util/function/Predicate;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Set;

.field public final i:Lcom/android/tools/r8/graph/L2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;Lcom/android/tools/r8/DiagnosticsHandler;Ljava/util/function/Predicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->f:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->g:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->h:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iput-object p3, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    iput-object p4, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    const-string p2, "Ldalvik/annotation/codegen/"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->i:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/t0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V

    .line 68
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/o0;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 70
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V

    .line 73
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/o0;)V

    .line 75
    :cond_0
    new-instance v0, Lcom/android/tools/r8/tracereferences/b0;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/android/tools/r8/tracereferences/b0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/e1;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/t0;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/tools/r8/tracereferences/n0;

    invoke-direct {v0, p4}, Lcom/android/tools/r8/tracereferences/n0;-><init>(Lcom/android/tools/r8/graph/t0;)V

    new-instance v1, Lcom/android/tools/r8/tracereferences/o0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/tracereferences/o0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 152
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/Ks0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Ks0;-><init>(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, v0, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 3

    .line 94
    invoke-static {p1}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 97
    iget-object v1, p1, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    .line 98
    new-instance v2, Lcom/android/tools/r8/tracereferences/j0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/tracereferences/j0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 99
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/r0;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 5

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/tracereferences/a0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/tracereferences/a0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    .line 5
    new-instance v1, Lcom/android/tools/r8/tracereferences/g0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/tracereferences/g0;-><init>(Lcom/android/tools/r8/tracereferences/j;)V

    .line 6
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 7
    new-instance v1, Lcom/android/tools/r8/tracereferences/h0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/tracereferences/h0;-><init>(Lcom/android/tools/r8/tracereferences/j;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->m0()[Lcom/android/tools/r8/graph/r0;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 9
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/t0;)V
    .locals 1

    .line 143
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 144
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object p3

    .line 145
    iget-object p3, p3, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    .line 146
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 101
    invoke-static {p1}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 104
    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 106
    iget-object v1, p1, Lcom/android/tools/r8/graph/G0;->c:Lcom/android/tools/r8/graph/h1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/android/tools/r8/tracereferences/d0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/tracereferences/d0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 108
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/android/tools/r8/tracereferences/e0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/tracereferences/e0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 111
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/z5;->d(Ljava/util/function/Consumer;)V

    .line 112
    new-instance v0, Lcom/android/tools/r8/tracereferences/i;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/tracereferences/i;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/r0;)V
    .locals 0

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/tools/r8/tracereferences/m0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/tracereferences/m0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;)V
    .locals 3

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-interface {v1, p3}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 56
    :cond_2
    new-instance p3, Lcom/android/tools/r8/internal/Js0;

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p3, p1, p2, v1}, Lcom/android/tools/r8/internal/Js0;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;)V

    if-nez v0, :cond_4

    .line 58
    iget-boolean p2, p3, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz p2, :cond_3

    goto :goto_1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->f:Ljava/util/Set;

    .line 61
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz v0, :cond_5

    .line 62
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, p3, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 17
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    .line 20
    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    if-nez p2, :cond_1

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 26
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 27
    instance-of v0, p2, Lcom/android/tools/r8/graph/H5;

    if-nez v0, :cond_7

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V

    goto :goto_2

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/Ls0;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/tools/r8/internal/Ls0;-><init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/A2;)V

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p3, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, v0, p3}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_2

    .line 36
    :cond_4
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/o0;)V

    .line 43
    :cond_5
    :goto_2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result p3

    if-nez p3, :cond_6

    .line 46
    iget-object p3, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j;

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 48
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/o0;)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 3

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void

    .line 157
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/T2;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->t0()Lcom/android/tools/r8/graph/T2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/T2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void

    .line 160
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 162
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/tracereferences/i0;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/tools/r8/tracereferences/i0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/graph/H2;)V

    .line 148
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 165
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 166
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Lcom/android/tools/r8/tracereferences/l0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/tracereferences/l0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/D3;->b(Ljava/util/function/Consumer;)V

    return-void

    .line 169
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Ks0;

    .line 170
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/android/tools/r8/internal/Ks0;-><init>(Lcom/android/tools/r8/references/FieldReference;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$FieldAccessFlags;)V

    .line 171
    sget-boolean p3, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez p3, :cond_2

    .line 172
    iget-boolean p3, p2, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 174
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/tracereferences/j;->g:Ljava/util/Set;

    .line 175
    iget-boolean v0, p2, Lcom/android/tools/r8/internal/Ms0;->d:Z

    if-eqz v0, :cond_3

    .line 176
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p3, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/D3$a;)V
    .locals 2

    .line 76
    iget-object v0, p4, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    .line 77
    iget-object p4, p4, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p4}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p4

    .line 78
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 81
    invoke-virtual {p0, p4, p3}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/o0;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->packageFromString(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 15
    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 4

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 115
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 116
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->C5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->Q5:Lcom/android/tools/r8/graph/M2;

    .line 117
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 118
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->u1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iget-object v3, v3, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v2

    if-nez v2, :cond_f

    .line 120
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/tracereferences/j;->i:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iget-object v3, v3, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->x5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    .line 123
    invoke-interface {p3}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isClassContext()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 125
    new-instance v0, Lcom/android/tools/r8/tracereferences/f0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/tools/r8/tracereferences/f0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 126
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/e1;->d(Ljava/util/function/Consumer;)V

    return-void

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->N5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    if-nez v1, :cond_7

    .line 128
    iget-object p2, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 129
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/e1;->k0()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    if-nez v1, :cond_f

    .line 130
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 131
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/e1;->j(I)Lcom/android/tools/r8/graph/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/t0;->l0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 132
    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v1, :cond_b

    .line 133
    invoke-interface {p3}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isMethodContext()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 134
    :cond_b
    :goto_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    .line 135
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void

    :cond_c
    if-nez v1, :cond_e

    .line 137
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->s1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    iget-object v2, v2, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 139
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->s1:Lcom/android/tools/r8/graph/L2;

    .line 140
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected annotation with prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 141
    :cond_e
    :goto_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 3

    .line 82
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 83
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V

    .line 89
    :cond_2
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 90
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result p1

    if-nez p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 93
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/o0;)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/tracereferences/k0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/tracereferences/k0;-><init>(Lcom/android/tools/r8/tracereferences/j;)V

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-static {v1, p1, v0, p2}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->e:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Js0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Js0;-><init>(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, v0, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Ls0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Ls0;-><init>(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/j;->c:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/j;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {p1, v0, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 11
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    .line 12
    new-instance v0, Lcom/android/tools/r8/tracereferences/c0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/tools/r8/tracereferences/c0;-><init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object p2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/r0;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/j;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/tracereferences/j;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V

    :cond_4
    :goto_1
    return-void
.end method
