.class public abstract Lcom/android/tools/r8/internal/lv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/lv$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/android/tools/r8/internal/Ef0;Ljava/lang/Throwable;)Lcom/android/tools/r8/CompilationFailedException;
    .locals 2

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/vj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vj1;-><init>()V

    const-class v1, Lcom/android/tools/r8/internal/g;

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/Throwable;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Class;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/CompilationFailedException;

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/android/tools/r8/origin/Origin;
    .locals 2

    .line 61
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 62
    check-cast p0, Ljava/io/IOException;

    .line 63
    instance-of v0, p0, Ljava/nio/file/FileSystemException;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Ljava/nio/file/FileSystemException;

    .line 65
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getFile()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    return-object p0

    .line 68
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/If;

    if-eqz v0, :cond_2

    .line 69
    check-cast p0, Lcom/android/tools/r8/internal/If;

    .line 70
    iget-object p0, p0, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    return-object p0

    .line 71
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/ResourceException;

    if-eqz v0, :cond_3

    .line 72
    check-cast p0, Lcom/android/tools/r8/ResourceException;

    invoke-virtual {p0}, Lcom/android/tools/r8/ResourceException;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    return-object p0

    .line 73
    :cond_3
    instance-of v0, p0, Lcom/android/tools/r8/internal/nv;

    if-eqz v0, :cond_4

    .line 74
    check-cast p0, Lcom/android/tools/r8/internal/nv;

    iget-object p0, p0, Lcom/android/tools/r8/internal/nv;->b:Lcom/android/tools/r8/origin/Origin;

    return-object p0

    .line 75
    :cond_4
    instance-of v0, p0, Lcom/android/tools/r8/internal/g;

    if-eqz v0, :cond_6

    .line 76
    check-cast p0, Lcom/android/tools/r8/internal/g;

    .line 77
    iget-object p0, p0, Lcom/android/tools/r8/internal/g;->b:Lcom/android/tools/r8/Diagnostic;

    if-eqz p0, :cond_5

    .line 78
    invoke-interface {p0}, Lcom/android/tools/r8/Diagnostic;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    return-object p0

    .line 79
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/Throwable;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Class;)Ljava/lang/Exception;
    .locals 9

    .line 23
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v4, p1

    move v5, v3

    move v6, v5

    .line 26
    :goto_0
    instance-of v7, v4, Lcom/android/tools/r8/internal/I8;

    or-int/2addr v6, v7

    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 28
    invoke-static {v4}, Lcom/android/tools/r8/internal/lv;->a(Ljava/lang/Throwable;)Lcom/android/tools/r8/origin/Origin;

    move-result-object v7

    .line 29
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v8

    if-eq v7, v8, :cond_0

    move-object v0, v7

    .line 30
    :cond_0
    instance-of v7, v4, Lcom/android/tools/r8/internal/If;

    if-eqz v7, :cond_1

    .line 31
    move-object v7, v4

    check-cast v7, Lcom/android/tools/r8/internal/If;

    .line 32
    iget-object v7, v7, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    goto :goto_1

    .line 33
    :cond_1
    instance-of v7, v4, Lcom/android/tools/r8/internal/nv;

    if-eqz v7, :cond_2

    .line 34
    move-object v7, v4

    check-cast v7, Lcom/android/tools/r8/internal/nv;

    iget-object v7, v7, Lcom/android/tools/r8/internal/nv;->c:Lcom/android/tools/r8/position/Position;

    goto :goto_1

    .line 35
    :cond_2
    instance-of v7, v4, Lcom/android/tools/r8/internal/g;

    if-eqz v7, :cond_4

    .line 36
    move-object v7, v4

    check-cast v7, Lcom/android/tools/r8/internal/g;

    .line 37
    iget-object v7, v7, Lcom/android/tools/r8/internal/g;->b:Lcom/android/tools/r8/Diagnostic;

    if-eqz v7, :cond_3

    .line 38
    invoke-interface {v7}, Lcom/android/tools/r8/Diagnostic;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object v7

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    goto :goto_1

    .line 39
    :cond_4
    sget-object v7, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 40
    :goto_1
    sget-object v8, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    if-eq v7, v8, :cond_5

    move-object v1, v7

    .line 41
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 42
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_7
    :goto_2
    if-eq p1, v4, :cond_8

    .line 44
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    if-nez v6, :cond_9

    if-nez v5, :cond_9

    .line 45
    new-instance p1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p1, v4, v0, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-interface {p0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 46
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Compilation failed to complete"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v1, v8, :cond_a

    .line 47
    const-string p1, ", position: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    :cond_a
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    if-eq v0, p1, :cond_b

    .line 49
    const-string p1, ", origin: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, v4, p1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    .line 51
    new-instance p1, Ljava/lang/StackTraceElement;

    .line 52
    const-string p2, "fakeStackEntry"

    const-string p3, "Version_8.10.21.java"

    const-string v0, "Version"

    invoke-direct {p1, v0, p2, p3, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 54
    array-length p3, p2

    const/4 v0, 0x1

    add-int/2addr p3, v0

    .line 55
    sget v1, Lcom/android/tools/r8/internal/m60;->a:I

    .line 56
    array-length v1, p2

    if-nez v1, :cond_c

    move-object v1, p2

    goto :goto_3

    :cond_c
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 57
    :goto_3
    invoke-static {v1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 58
    aput-object p1, p3, v3

    .line 59
    array-length p1, p2

    invoke-static {p2, v3, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    check-cast p3, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2

    .line 93
    :try_start_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/I8; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 94
    sget v0, Lcom/android/tools/r8/internal/nv;->d:I

    .line 95
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    if-eq p1, v0, :cond_6

    .line 96
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/lv;->a(Ljava/lang/Throwable;)Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    .line 97
    instance-of v1, p2, Lcom/android/tools/r8/internal/If;

    if-eqz v1, :cond_1

    .line 98
    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/internal/If;

    .line 99
    iget-object v1, v1, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    goto :goto_0

    .line 100
    :cond_1
    instance-of v1, p2, Lcom/android/tools/r8/internal/nv;

    if-eqz v1, :cond_2

    .line 101
    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/internal/nv;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nv;->c:Lcom/android/tools/r8/position/Position;

    goto :goto_0

    .line 102
    :cond_2
    instance-of v1, p2, Lcom/android/tools/r8/internal/g;

    if-eqz v1, :cond_4

    .line 103
    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/internal/g;

    .line 104
    iget-object v1, v1, Lcom/android/tools/r8/internal/g;->b:Lcom/android/tools/r8/Diagnostic;

    if-eqz v1, :cond_3

    .line 105
    invoke-interface {v1}, Lcom/android/tools/r8/Diagnostic;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    goto :goto_0

    .line 106
    :cond_4
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    :goto_0
    if-ne p0, v0, :cond_5

    if-eq p1, v1, :cond_6

    .line 107
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/nv;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/internal/nv;-><init>(Ljava/lang/RuntimeException;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    move-object p2, v0

    .line 108
    :cond_6
    throw p2

    :catch_1
    move-exception p0

    .line 109
    throw p0
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/concurrent/ExecutionException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/rj1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rj1;-><init>()V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/sj1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sj1;-><init>()V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/tj1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/tj1;-><init>()V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/uj1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/uj1;-><init>()V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a([Ljava/lang/StackTraceElement;)Ljava/util/stream/Stream;
    .locals 0

    .line 8
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;)V
    .locals 1

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/qj1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/qj1;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    .line 15
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/pj1;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/pj1;-><init>(Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V
    .locals 0

    .line 19
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/lv$a;->run()V

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ef0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/lang/Throwable;)Lcom/android/tools/r8/CompilationFailedException;

    move-result-object p0

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;Ljava/util/function/Consumer;)V
    .locals 0

    .line 17
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/mv;)V
    .locals 5

    const-string v0, "Compilation failed"

    const-string v1, "Compilation failed with an internal error."

    .line 80
    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/mv;->run()V
    :try_end_0
    .catch Lcom/android/tools/r8/CompilationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 81
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 82
    instance-of v3, p0, Lcom/android/tools/r8/internal/If;

    if-nez v3, :cond_1

    instance-of v3, p0, Lcom/android/tools/r8/internal/g;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    throw p0

    :catch_1
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 86
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 87
    instance-of v4, v2, Lcom/android/tools/r8/internal/If;

    if-nez v4, :cond_3

    instance-of v2, v2, Lcom/android/tools/r8/internal/g;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/Runnable;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/android/tools/r8/internal/wj1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/wj1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method
