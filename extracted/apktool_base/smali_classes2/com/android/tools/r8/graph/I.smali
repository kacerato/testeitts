.class public abstract Lcom/android/tools/r8/graph/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/W9;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid stack map table at instruction index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    const-string p1, " In later version of R8, the method may be assumed not reachable."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_0
    new-instance p1, Lcom/android/tools/r8/graph/H;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/graph/H;-><init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Db;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid try catch range for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/graph/s8;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/s8;-><init>()V

    .line 2
    const-string v2, ", "

    invoke-static {v2, p1, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    const-string p1, " In later version of R8, the method may be assumed not reachable."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    new-instance p1, Lcom/android/tools/r8/graph/H;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/graph/H;-><init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    return-object p1
.end method
