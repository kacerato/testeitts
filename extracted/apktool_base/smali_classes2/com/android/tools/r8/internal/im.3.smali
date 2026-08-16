.class public Lcom/android/tools/r8/internal/im;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/Path;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/iY;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Lcom/android/tools/r8/internal/nJ;",
            ")",
            "Lcom/android/tools/r8/internal/iY;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/android/tools/r8/v0$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v3, p4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    iget-object v4, v0, Lcom/android/tools/r8/v0$a;->c:Lcom/android/tools/r8/origin/PathOrigin;

    .line 6
    sget-boolean v5, Lcom/android/tools/r8/internal/wm;->a:Z

    .line 7
    iget-object v5, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 8
    const-string v6, "configuration_format_version"

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    iget-object v3, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 11
    new-array p1, v5, [Ljava/nio/file/CopyOption;

    invoke-static {p0, p3, p1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-object v1

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/utils/i$a;->f(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/utils/i$a;->e(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p0

    .line 15
    new-instance p1, Lcom/android/tools/r8/dex/c;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p2

    invoke-direct {p1, p0, p4, p2}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 16
    invoke-static {p4}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 17
    sget-boolean p2, Lcom/android/tools/r8/internal/im;->a:Z

    if-nez p2, :cond_2

    iget-boolean p2, p4, Lcom/android/tools/r8/internal/nJ;->n0:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p4, Lcom/android/tools/r8/internal/nJ;->n0:Z

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    .line 20
    iput-boolean v5, p4, Lcom/android/tools/r8/internal/nJ;->n0:Z

    .line 21
    iget-object p1, p4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 22
    iget-object p2, v0, Lcom/android/tools/r8/v0$a;->c:Lcom/android/tools/r8/origin/PathOrigin;

    .line 23
    invoke-static {v2, p1, p2}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/oY;

    .line 25
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object v1, p4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p1, p2, v1}, Lcom/android/tools/r8/internal/oY;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/oY;->c(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/nY;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/JR;

    .line 28
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/JR;-><init>(Lcom/android/tools/r8/internal/ns0;)V

    .line 29
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/nY;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/iY;

    move-result-object p1

    goto :goto_1

    .line 30
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/mY;

    .line 31
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object v1, p4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p1, p2, v1}, Lcom/android/tools/r8/internal/mY;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/mY;->c(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/iY;

    move-result-object p1

    .line 33
    :goto_1
    invoke-static {p4, p0, p1}, Lcom/android/tools/r8/internal/im;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/iY;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    new-array p2, v5, [Ljava/nio/file/OpenOption;

    invoke-static {p3, p0, p2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    return-object p1

    .line 35
    :cond_4
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string p1, "Invalid desugared library configuration. Expected required key \'configuration_format_version\'"

    invoke-direct {p0, p1, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 36
    invoke-virtual {v3, v1, p0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 37
    iget-object p0, v3, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0

    :catch_0
    move-exception p0

    .line 38
    iget-object p1, p4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    .line 39
    iget-object p3, v0, Lcom/android/tools/r8/v0$a;->c:Lcom/android/tools/r8/origin/PathOrigin;

    .line 40
    invoke-direct {p2, p0, p3}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 41
    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 42
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/iY;)Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/OA;

    .line 44
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/OA;-><init>(Lcom/android/tools/r8/internal/ns0;)V

    .line 45
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/OA;->a(Lcom/android/tools/r8/internal/iY;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/pY;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/android/tools/r8/internal/C7;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 47
    new-instance v0, Lcom/android/tools/r8/internal/Be1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Be1;-><init>(Lcom/android/tools/r8/internal/C7;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    .line 49
    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/internal/pY;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/graph/u1;)V

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/C7;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method
