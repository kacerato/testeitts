.class public final Lcom/android/tools/r8/internal/DI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Na;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/JI;

.field public final d:Lcom/android/tools/r8/internal/Pd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/JI;ILjava/util/function/Predicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DI;->b:Lcom/android/tools/r8/graph/y;

    sget-boolean v0, Lcom/android/tools/r8/internal/DI;->e:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/DI;->c:Lcom/android/tools/r8/internal/JI;

    new-instance p2, Lcom/android/tools/r8/internal/Pd;

    invoke-direct {p2, p1, p4, p3}, Lcom/android/tools/r8/internal/Pd;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/DI;->d:Lcom/android/tools/r8/internal/Pd;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/DI;->d:Lcom/android/tools/r8/internal/Pd;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/tC0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tC0;-><init>(Lcom/android/tools/r8/internal/DI;)V

    .line 5
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/uC0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/uC0;-><init>(Lcom/android/tools/r8/internal/DI;Lcom/android/tools/r8/internal/FI;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/DI;->b:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 7
    invoke-static {p1, v0, v1, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/DI;->d:Lcom/android/tools/r8/internal/Pd;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/DI;->c:Lcom/android/tools/r8/internal/JI;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/JI;->a()Lcom/android/tools/r8/internal/HI;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/JI;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 13
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 19
    :cond_1
    iget-object v2, p2, Lcom/android/tools/r8/internal/HI;->n:Lcom/android/tools/r8/internal/s6;

    .line 20
    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 22
    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    :goto_1
    if-eq v2, v1, :cond_3

    .line 23
    new-instance v0, Lcom/android/tools/r8/graph/i3;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 24
    :cond_3
    iput-object v0, p3, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    .line 26
    const-string v0, "Interface method processor facade"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p4

    .line 27
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/DI;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/DI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 3
    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
