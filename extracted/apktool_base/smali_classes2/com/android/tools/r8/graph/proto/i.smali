.class public final Lcom/android/tools/r8/graph/proto/i;
.super Lcom/android/tools/r8/graph/proto/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/proto/g;-><init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/b;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    new-instance p2, Lcom/android/tools/r8/graph/proto/i;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/graph/proto/i;-><init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/g;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    new-instance p2, Lcom/android/tools/r8/graph/proto/i;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/graph/proto/i;-><init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/graph/proto/i;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/proto/i;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
