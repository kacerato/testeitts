.class public abstract Lcom/android/tools/r8/internal/G4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/F4;
    .locals 2

    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    iget-object v0, p1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    iget-object p2, p1, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    iget-object v0, p0, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object p2

    iget-object v0, p1, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/F4;->c:Z

    iget-boolean p0, p0, Lcom/android/tools/r8/internal/F4;->c:Z

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    invoke-static {p2, v0, p0}, Lcom/android/tools/r8/internal/F4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)Lcom/android/tools/r8/internal/F4;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method
