.class public final Lcom/android/tools/r8/internal/Z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ba;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/I00;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/I00;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z9;->b:Lcom/android/tools/r8/internal/I00;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/EI;)Lcom/android/tools/r8/internal/DI;
    .locals 3

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/DI;

    .line 23
    iget-object v1, p1, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 24
    iget p1, p1, Lcom/android/tools/r8/internal/EI;->e:I

    .line 25
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/tools/r8/internal/DI;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/JI;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ki;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Ni;)V
    .locals 0

    .line 21
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/Ni;->a(Lcom/android/tools/r8/internal/Ki;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ni;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ni;->c()V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ni;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/JI;)Lcom/android/tools/r8/internal/DI;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z9;->b:Lcom/android/tools/r8/internal/I00;

    new-instance v1, Lcom/android/tools/r8/internal/W31;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/W31;-><init>(Lcom/android/tools/r8/internal/JI;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/I00;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/DI;

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z9;->b:Lcom/android/tools/r8/internal/I00;

    new-instance v1, Lcom/android/tools/r8/internal/X31;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/X31;-><init>()V

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/I00;->d:Lcom/android/tools/r8/internal/iZ;

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/android/tools/r8/internal/Ni;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    check-cast v0, Lcom/android/tools/r8/internal/Ni;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ki;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 13
    const-string v0, "Process classpath for desugaring"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z9;->b:Lcom/android/tools/r8/internal/I00;

    new-instance v1, Lcom/android/tools/r8/internal/U31;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/U31;-><init>(Lcom/android/tools/r8/internal/Ki;Ljava/util/concurrent/ExecutorService;)V

    .line 15
    iget-object p1, v0, Lcom/android/tools/r8/internal/I00;->d:Lcom/android/tools/r8/internal/iZ;

    if-eqz p1, :cond_2

    .line 16
    sget-boolean p2, Lcom/android/tools/r8/internal/I00;->h:Z

    if-nez p2, :cond_1

    instance-of p2, p1, Lcom/android/tools/r8/internal/Ni;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    check-cast p1, Lcom/android/tools/r8/internal/Ni;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 19
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 7
    const-string v0, "Generate desugared library api converter tracking warnings"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z9;->b:Lcom/android/tools/r8/internal/I00;

    new-instance v1, Lcom/android/tools/r8/internal/V31;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/V31;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/I00;->a(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method public final get()Lcom/android/tools/r8/internal/Y9;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z9;->b:Lcom/android/tools/r8/internal/I00;

    return-object v0
.end method
