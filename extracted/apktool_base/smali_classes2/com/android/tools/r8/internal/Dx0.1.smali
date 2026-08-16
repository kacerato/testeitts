.class public final Lcom/android/tools/r8/internal/Dx0;
.super Lcom/android/tools/r8/internal/Cx0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/internal/Ef0;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cx0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Dx0;->d:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dx0;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dx0;->c:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 17
    const-string v0, "computed API level for caller is unknown"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number of arguments ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") does not match arity of method ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", threshold: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/androidapi/f;)V
    .locals 2

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/internal/Dx0;->e:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    const-string p1, "computed API level for inlinee is unknown"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 22
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_4
    :goto_1
    invoke-interface {p2}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    .line 24
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computed API level for inlinee ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") is higher than caller\'s ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/QJ;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must invoke a constructor from the class being instantiated (would invoke `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rE;)V
    .locals 3

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dx0;->a:Lcom/android/tools/r8/graph/H5;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final field `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` must be initialized in a constructor of `"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "would lead to use of uninitialized object (user: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Dx0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "` was not inlined into `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Dx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 5
    const-string v1, "`: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "`."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dx0;->c:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/ir/optimize/inliner/WhyAreYouNotInliningDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 10
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ir/optimize/inliner/WhyAreYouNotInliningDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    monitor-enter p1

    .line 12
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Dx0;->d:Z

    return-void

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p1

    throw v0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    .line 26
    const-string v1, ", "

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid inlining reason (was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", allowed: one of "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const-string v0, "inlinee can only be inlined into methods in the same class."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 2
    const-string v0, "could lead to an explosion in the number of moves due to the exceptional control flow"

    const-string v1, "estimated number of control flow resolution blocks"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/Dx0;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rE;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assignment to missing field `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "`."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const-string v0, "inlinee can only be inlined into methods in the same class (and its nest members)."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(II)V
    .locals 2

    .line 2
    const-string v0, "would exceed the caller\'s instruction budget"

    const-string v1, "number of instructions in inlinee"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/Dx0;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const-string v0, "inlinee can only be inlined into methods in the same package (declared package private or accesses package private type or member)."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d(II)V
    .locals 2

    .line 2
    const-string v0, "could negatively impact register allocation due to the number of monitor instructions"

    const-string v1, "estimated number of locks after inlining"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/Dx0;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const-string v0, "inlinee can only be inlined into methods in the same package and methods in subtypes of the inlinee\'s enclosing class(declared protected or accesses protected type or member)."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "inlinee is not accessible from the caller context."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "inlinee does not have code."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 1

    const-string v0, "unsupported instruction in inlinee."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 1

    const-string v0, "inlinee not processed yet."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 1

    const-string v0, "not inlining due to code size heuristic (inlinee may have multiple callers and is not considered trivial)."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 1

    const-string v0, "inlining could increase the main dex size (caller is in main dex and inlinee refers to classes not in main dex)."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 1

    const-string v0, "cannot inline across feature splits."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 1

    const-string v0, "cannot inline across startup/non-startup boundary."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 1

    const-string v0, "caller\'s instruction budget is exceeded."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 1

    const-string v0, "cannot guarantee that the enclosing class of the inlinee is guaranteed to be class initialized before the first side-effecting instruction in the inlinee."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 1

    const-string v0, "method is kept by a Proguard configuration rule."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 1

    const-string v0, "could lead to nondeterministic output since the inlinee is being optimized concurrently."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 1

    const-string v0, "the receiver is always null at the call site."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final s()V
    .locals 1

    const-string v0, "the receiver may be null at the call site."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final t()V
    .locals 1

    const-string v0, "recursive calls are not inlined."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final u()V
    .locals 1

    const-string v0, "could not find a single target."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final v()V
    .locals 1

    const-string v0, "would lead to unsupported resolution of array clone() from within an interface method."

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dx0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final w()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Dx0;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Dx0;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Dx0;->d:Z

    return-void
.end method
