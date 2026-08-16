.class public final Lcom/android/tools/r8/kotlin/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/internal/NQ;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/kotlin/W;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 71
    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 72
    iget-object v4, v3, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v4, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0, v0}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/NQ;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/kotlin/g;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/NQ;
    .locals 9

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->a:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->F0()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-static {v0}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/R2;)[I

    move-result-object v0

    move-object v3, v0

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 79
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    const-string v4, "d1"

    invoke-static {v0, v4}, Lcom/android/tools/r8/kotlin/r;->b(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    if-nez v0, :cond_2

    move-object v5, v1

    goto :goto_2

    .line 81
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    const-string v5, "d2"

    invoke-static {v0, v5}, Lcom/android/tools/r8/kotlin/r;->b(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 82
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    if-nez v0, :cond_3

    move-object v6, v1

    goto :goto_3

    .line 83
    :cond_3
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    const-string v6, "xs"

    invoke-static {v0, v6}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 84
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    if-nez v0, :cond_4

    move-object v7, v1

    goto :goto_4

    .line 85
    :cond_4
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    const-string v7, "pn"

    invoke-static {v0, v7}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 86
    :goto_4
    iget-object p0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object p0, p0, Lcom/android/tools/r8/kotlin/e;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/t0;

    if-nez p0, :cond_5

    move-object v8, v1

    goto :goto_5

    .line 87
    :cond_5
    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->F0()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v8, p0

    .line 88
    :goto_5
    :try_start_0
    new-instance p0, Lcom/android/tools/r8/kotlin/S;

    move-object v1, p0

    .line 89
    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/kotlin/S;-><init>(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    invoke-static {p0}, Lcom/android/tools/r8/internal/NQ;->a(Lcom/android/tools/r8/kotlin/S;)Lcom/android/tools/r8/internal/NQ;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/kotlin/q; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    .line 91
    :goto_6
    new-instance p1, Lcom/android/tools/r8/kotlin/W;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/W;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 92
    :cond_6
    new-instance p0, Lcom/android/tools/r8/kotlin/q;

    const-string p1, "element \'k\' is missing."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/r0;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)Lcom/android/tools/r8/kotlin/p;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0, p1, p3, p2}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/kotlin/p;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/tools/r8/kotlin/W; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    .line 2
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 4
    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    new-instance p4, Lcom/android/tools/r8/kotlin/T;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    const-string v2, "An error occurred when parsing kotlin metadata. This normally happens when using a newer version of kotlin than the kotlin version released when this version of R8 was created. To find compatible kotlin versions, please see: https://developer.android.com/studio/build/kotlin-d8-r8-versions"

    invoke-direct {p4, v0, v1, v2}, Lcom/android/tools/r8/kotlin/T;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 10
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error while reading "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s kotlin.Metadata: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    sget-object p0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    return-object p0

    :catchall_1
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1

    :catch_0
    move-exception p2

    .line 18
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 20
    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 21
    new-instance p4, Lcom/android/tools/r8/kotlin/T;

    .line 22
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    const-string v2, "An error occurred when parsing kotlin metadata. This normally happens when using a newer version of kotlin than the kotlin version released when this version of R8 was created. To find compatible kotlin versions, please see: https://developer.android.com/studio/build/kotlin-d8-r8-versions"

    invoke-direct {p4, v0, v1, v2}, Lcom/android/tools/r8/kotlin/T;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 25
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 26
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has malformed kotlin.Metadata: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Ef0;->info(Lcom/android/tools/r8/Diagnostic;)V

    .line 30
    sget-object p0, Lcom/android/tools/r8/kotlin/b0;->c:Lcom/android/tools/r8/kotlin/a0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/kotlin/p;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    .line 32
    iget-object p3, p3, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-static {v0, p3}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/internal/NQ;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 33
    invoke-static {v0, p1, p3, p0, p2}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/NQ;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/p;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    new-instance p0, Lcom/android/tools/r8/kotlin/W;

    new-instance p2, Ljava/lang/Exception;

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse metadata for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/tools/r8/kotlin/W;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/kotlin/g;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/NQ;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/p;
    .locals 7

    .line 93
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object v0

    .line 94
    iget v1, v0, Lcom/android/tools/r8/internal/ML;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 95
    iget v1, v0, Lcom/android/tools/r8/internal/ML;->c:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 96
    sget-object v1, Lcom/android/tools/r8/kotlin/M;->a:Lcom/android/tools/r8/internal/ML;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/NQ;->a(Lcom/android/tools/r8/internal/ML;)V

    .line 97
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object v1

    .line 98
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NQ;->a(Lcom/android/tools/r8/internal/ML;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object v1

    .line 100
    :goto_0
    iget-object v0, v1, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    .line 101
    instance-of v3, p2, Lcom/android/tools/r8/internal/NQ$a;

    if-eqz v3, :cond_1

    .line 102
    check-cast p2, Lcom/android/tools/r8/internal/NQ$a;

    invoke-static {p2, v0, p1, p3, p4}, Lcom/android/tools/r8/kotlin/o;->a(Lcom/android/tools/r8/internal/NQ$a;Ljava/lang/String;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/o;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1
    instance-of v3, p2, Lcom/android/tools/r8/internal/NQ$b;

    if-eqz v3, :cond_2

    .line 104
    check-cast p2, Lcom/android/tools/r8/internal/NQ$b;

    .line 105
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ$b;->c()Lcom/android/tools/r8/internal/sQ;

    move-result-object p0

    .line 106
    new-instance v1, Lcom/android/tools/r8/kotlin/H;

    .line 107
    invoke-static {p0, p1, p3, p4}, Lcom/android/tools/r8/kotlin/g0;->a(Lcom/android/tools/r8/internal/sQ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/g0;

    move-result-object p0

    invoke-direct {v1, p2, p0, v0}, Lcom/android/tools/r8/kotlin/H;-><init>(Lcom/android/tools/r8/internal/NQ$b;Lcom/android/tools/r8/kotlin/g0;Ljava/lang/String;)V

    return-object v1

    .line 108
    :cond_2
    instance-of v3, p2, Lcom/android/tools/r8/internal/NQ$c;

    if-eqz v3, :cond_3

    .line 109
    check-cast p2, Lcom/android/tools/r8/internal/NQ$c;

    .line 110
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    .line 111
    invoke-static {p2, v0, p0}, Lcom/android/tools/r8/kotlin/e0;->a(Lcom/android/tools/r8/internal/NQ$c;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/e0;

    move-result-object p0

    return-object p0

    .line 112
    :cond_3
    instance-of v3, p2, Lcom/android/tools/r8/internal/NQ$d;

    if-eqz v3, :cond_4

    .line 113
    check-cast p2, Lcom/android/tools/r8/internal/NQ$d;

    .line 114
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ$d;->c()Lcom/android/tools/r8/internal/sQ;

    move-result-object p0

    .line 115
    new-instance v1, Lcom/android/tools/r8/kotlin/f0;

    .line 116
    invoke-static {p0, p1, p3, p4}, Lcom/android/tools/r8/kotlin/g0;->a(Lcom/android/tools/r8/internal/sQ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/g0;

    move-result-object p0

    invoke-direct {v1, p2, p0, v0}, Lcom/android/tools/r8/kotlin/f0;-><init>(Lcom/android/tools/r8/internal/NQ$d;Lcom/android/tools/r8/kotlin/g0;Ljava/lang/String;)V

    return-object v1

    .line 117
    :cond_4
    instance-of p4, p2, Lcom/android/tools/r8/internal/PQ;

    if-eqz p4, :cond_a

    .line 118
    check-cast p2, Lcom/android/tools/r8/internal/PQ;

    .line 119
    iget-object p4, p2, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    .line 120
    sget-boolean v1, Lcom/android/tools/r8/kotlin/n0;->e:Z

    .line 121
    new-instance v1, Lcom/android/tools/r8/kotlin/n0;

    if-eqz p4, :cond_7

    .line 122
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 123
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 124
    iget-object v4, p4, Lcom/android/tools/r8/internal/rQ;->a:Lcom/android/tools/r8/internal/pQ;

    .line 125
    invoke-static {v4, v3, p3}, Lcom/android/tools/r8/kotlin/K;->a(Lcom/android/tools/r8/internal/pQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/K;

    move-result-object p3

    .line 126
    iget-object p4, p4, Lcom/android/tools/r8/internal/rQ;->a:Lcom/android/tools/r8/internal/pQ;

    invoke-static {p4}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 128
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-static {v5}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/OL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 129
    invoke-virtual {v4, p3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 130
    new-instance p4, Lcom/android/tools/r8/kotlin/O;

    invoke-direct {p4, p3, v2}, Lcom/android/tools/r8/kotlin/O;-><init>(Lcom/android/tools/r8/kotlin/K;Z)V

    goto :goto_1

    .line 131
    :cond_6
    new-instance p4, Lcom/android/tools/r8/kotlin/O;

    const/4 v3, 0x0

    invoke-direct {p4, p3, v3}, Lcom/android/tools/r8/kotlin/O;-><init>(Lcom/android/tools/r8/kotlin/K;Z)V

    goto :goto_1

    :cond_7
    const/4 p4, 0x0

    .line 132
    :goto_1
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/g;->b:Lcom/android/tools/r8/kotlin/c;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/c;->a:Lcom/android/tools/r8/graph/M2;

    if-ne p3, v3, :cond_8

    goto :goto_2

    .line 133
    :cond_8
    iget-object p0, p0, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p0, :cond_9

    iget-object p0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p0

    if-ne p0, v2, :cond_9

    const/4 v2, 0x2

    goto :goto_2

    :cond_9
    const/4 v2, 0x3

    .line 134
    :goto_2
    invoke-direct {v1, p2, p4, v2, v0}, Lcom/android/tools/r8/kotlin/n0;-><init>(Lcom/android/tools/r8/internal/PQ;Lcom/android/tools/r8/kotlin/O;ILjava/lang/String;)V

    return-object v1

    .line 135
    :cond_a
    new-instance p0, Lcom/android/tools/r8/kotlin/q;

    .line 136
    iget p1, v1, Lcom/android/tools/r8/internal/KL;->a:I

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupported \'k\' value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/q;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Supplier;)Z
    .locals 9

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    .line 38
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/kotlin/g;->b:Lcom/android/tools/r8/kotlin/c;

    iget-object v3, v3, Lcom/android/tools/r8/kotlin/c;->a:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v3, v1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_b

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v0

    if-nez v0, :cond_1

    return v5

    .line 41
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    .line 42
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v3, v0

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_2

    aget-object v7, v0, v6

    .line 44
    iget-object v8, v7, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v8, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 45
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/e;->a:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/t0;

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->F0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 47
    invoke-static {v1, v2}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/NQ;

    move-result-object v0

    .line 48
    instance-of v6, v0, Lcom/android/tools/r8/internal/PQ;

    if-eqz v6, :cond_4

    .line 49
    check-cast v0, Lcom/android/tools/r8/internal/PQ;

    .line 50
    iget-object p0, v0, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v5

    :catch_0
    move-exception v0

    goto :goto_4

    .line 51
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/kotlin/r;->a:Z

    if-nez v0, :cond_8

    invoke-static {v1, v2}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/kotlin/g;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/NQ;

    move-result-object v0

    instance-of v0, v0, Lcom/android/tools/r8/internal/PQ;

    .line 52
    iget-object v1, v1, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    iget-object v1, v1, Lcom/android/tools/r8/kotlin/e;->a:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/t0;

    if-eqz v1, :cond_7

    .line 53
    iget-object v1, v1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->F0()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    if-ne v0, v4, :cond_6

    goto :goto_3

    .line 54
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Synthetic class kinds should agree"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 55
    :cond_7
    new-instance v0, Lcom/android/tools/r8/kotlin/q;

    const-string v1, "element \'k\' is missing."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    return v5

    .line 56
    :cond_9
    new-instance v0, Lcom/android/tools/r8/kotlin/q;

    const-string v1, "element \'k\' is missing."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/android/tools/r8/kotlin/W; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_4
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 59
    new-instance v1, Lcom/android/tools/r8/kotlin/T;

    .line 60
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    const-string v4, "An error occurred when parsing kotlin metadata. This normally happens when using a newer version of kotlin than the kotlin version released when this version of R8 was created. To find compatible kotlin versions, please see: https://developer.android.com/studio/build/kotlin-d8-r8-versions"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/kotlin/T;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 62
    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 63
    new-instance p2, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has malformed kotlin.Metadata: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 68
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1

    :cond_b
    return v5
.end method

.method public static a(Lcom/android/tools/r8/graph/R2;)[I
    .locals 3

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    instance-of v0, p0, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    .line 142
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 143
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 144
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->F0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 145
    :cond_1
    new-instance v0, Lcom/android/tools/r8/kotlin/q;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/android/tools/r8/graph/R2$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/R2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/kotlin/q;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method
