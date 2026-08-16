.class public Lcom/android/tools/r8/internal/H6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/H6$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/android/tools/r8/internal/M6;Lcom/android/tools/r8/internal/H6$a;Ljava/nio/file/Path;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/H2;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M6;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M6;->c()V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/M6;->g:Lcom/android/tools/r8/internal/K6;

    iget p2, p1, Lcom/android/tools/r8/internal/K6;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/K6;->a:I

    sub-int/2addr p2, p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/M6;->b:Lcom/android/tools/r8/graph/x0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/M6;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/H2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/H2;

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, v0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    new-instance v3, Lcom/android/tools/r8/utils/r;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/utils/r;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/dex/k;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/dex/k;->c(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->f0()V

    invoke-virtual {v3}, Lcom/android/tools/r8/utils/r;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p3

    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    invoke-virtual {p3, p2, v0}, Lcom/android/tools/r8/utils/i;->b(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    iput-object v2, p0, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bisecting completed with build in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "Continue bisection by passing either ----result-good or ----result-bad"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/H6$a;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/I6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/M6;->a(Lcom/android/tools/r8/internal/I6;)V

    goto/16 :goto_0
.end method
