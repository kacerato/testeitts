.class public abstract Lcom/android/tools/r8/internal/eS;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/x0;ZLcom/android/tools/r8/internal/C2;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    const-string v0, "Ljava/time/LocalTime;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    const-string v0, "Ljava/util/concurrent/Flow;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    const-string v0, "Ljava/util/StringJoiner;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/C2;->I:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    const-string v0, "Ljava/lang/invoke/VarHandle;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Desugared library requires to be compiled with a library file of API greater or equal to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but it seems the library file passed is of a lower API."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported requiredCompilationAPILevel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return-void
.end method
