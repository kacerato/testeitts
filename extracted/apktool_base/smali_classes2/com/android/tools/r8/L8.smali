.class public Lcom/android/tools/r8/L8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 6

    .line 48
    new-instance v0, Lcom/android/tools/r8/dex/c;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    invoke-virtual {p2, p3, p0}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/x0;)V

    .line 51
    new-instance p2, Lcom/android/tools/r8/shaking/f2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/f2;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/shaking/f2;->a(Lcom/android/tools/r8/graph/w4;)Lcom/android/tools/r8/graph/x0;

    move-result-object p0

    .line 52
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 53
    new-instance p0, Lcom/android/tools/r8/graph/y;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/l4;

    move-result-object v2

    .line 55
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v3

    const/4 v4, 0x2

    .line 56
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    return-object p0
.end method

.method private static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/L8;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 9
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/nJ;->Z:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ;->Z:Z

    if-nez v0, :cond_5

    .line 11
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/nJ;->a0:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_5
    :goto_2
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ;->a0:Z

    if-nez v0, :cond_7

    .line 13
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/nJ;->M0:Z

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/nJ;->M0:Z

    .line 15
    sget-object v3, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    iput-object v3, p0, Lcom/android/tools/r8/internal/nJ;->x0:Lcom/android/tools/r8/dex/W$b;

    .line 16
    const-string v3, "L8 desugaring"

    invoke-static {p0, v3}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v3

    if-nez v0, :cond_9

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_9
    :goto_4
    :try_start_0
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ;->K0:Z

    .line 19
    invoke-static {p1, p0, p2, v3}, Lcom/android/tools/r8/L8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/android/tools/r8/internal/fm;->a(Lcom/android/tools/r8/graph/y;)V

    .line 21
    iget-boolean v4, p0, Lcom/android/tools/r8/internal/nJ;->W:Z

    if-nez v4, :cond_a

    .line 22
    invoke-static {v0}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/y;)V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_8

    :catch_0
    move-exception p2

    goto :goto_7

    .line 23
    :cond_a
    :goto_5
    new-instance v4, Lcom/android/tools/r8/internal/t70;

    invoke-direct {v4, v0, v3}, Lcom/android/tools/r8/internal/t70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v4, v0, p2}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 24
    invoke-static {v0, v3, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 25
    invoke-static {v0}, Lcom/android/tools/r8/internal/e70;->a(Lcom/android/tools/r8/graph/y;)V

    .line 26
    invoke-static {v0}, Lcom/android/tools/r8/naming/V0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/naming/r0;

    move-result-object v4

    .line 27
    iput-object v4, v0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    .line 28
    new-instance v4, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    .line 29
    new-instance v4, Lcom/android/tools/r8/internal/T8;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->y()Lcom/android/tools/r8/dex/W;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/tools/r8/internal/T8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)V

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    check-cast v0, Lcom/android/tools/r8/ClassFileConsumer;

    .line 31
    sget-boolean v5, Lcom/android/tools/r8/internal/T8;->e:Z

    if-nez v5, :cond_c

    iget-object v5, v4, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    :cond_c
    :goto_6
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v4, v0, v5, p2}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->Z()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p2, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 37
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->e()V

    .line 38
    :cond_d
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/nJ;->Z:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/nJ;->a0:Z

    .line 40
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ;->M0:Z

    return-void

    .line 41
    :goto_7
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->e()V

    .line 47
    :cond_e
    throw p2
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;ZLcom/android/tools/r8/D8Command;Lcom/android/tools/r8/R8Command;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/L8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;ZLcom/android/tools/r8/D8Command;Lcom/android/tools/r8/R8Command;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;ZLcom/android/tools/r8/D8Command;Lcom/android/tools/r8/R8Command;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/s2;

    invoke-direct {v1, p1, p0, p5}, Lcom/android/tools/r8/s2;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/lv;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p4, p5}, Lcom/android/tools/r8/R8;->run(Lcom/android/tools/r8/R8Command;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-static {p3, p5}, Lcom/android/tools/r8/D8;->run(Lcom/android/tools/r8/D8Command;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :goto_1
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 7
    throw p0
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/android/tools/r8/L8;->b([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/L8;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static b([Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    invoke-static {p0, v0}, Lcom/android/tools/r8/L8Command;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/L8Command$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/L8Command;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-string p0, "R8_THROW_EXCEPTION_FOR_TESTING_RETRACE"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/V;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Intentional exception for testing retrace."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/android/tools/r8/L8;->run(Lcom/android/tools/r8/L8Command;)V

    return-void
.end method

.method public static synthetic c([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/L8;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/t2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/t2;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/android/tools/r8/V;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid invocation."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static run(Lcom/android/tools/r8/L8Command;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->k()Z

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->i()Lcom/android/tools/r8/D8Command;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->j()Lcom/android/tools/r8/R8Command;

    move-result-object p0

    .line 6
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/tools/r8/L8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;ZLcom/android/tools/r8/D8Command;Lcom/android/tools/r8/R8Command;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/L8Command;Ljava/util/concurrent/ExecutorService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->k()Z

    move-result v2

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->i()Lcom/android/tools/r8/D8Command;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/L8Command;->j()Lcom/android/tools/r8/R8Command;

    move-result-object v4

    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/L8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;ZLcom/android/tools/r8/D8Command;Lcom/android/tools/r8/R8Command;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
