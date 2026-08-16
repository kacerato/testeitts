.class public abstract Lcom/android/tools/r8/shaking/P3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/K3;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/shaking/K3;->E()Lcom/android/tools/r8/shaking/K3$a;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/shaking/O3;->b:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/K3$a;

    sget-object v1, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/K3$a;

    iput-object p0, v0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p1, v0, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-static {}, Lcom/android/tools/r8/shaking/c3;->a()Lcom/android/tools/r8/shaking/c3$a;

    move-result-object p0

    invoke-static {p2}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/i4;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/c3$a;->a(ZLcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/c3$a;->a()Lcom/android/tools/r8/shaking/c3;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/K3$a;

    new-instance p1, Lcom/android/tools/r8/shaking/R3$a;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/R3$a;-><init>()V

    sget-object p2, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/R3$a;->a()Lcom/android/tools/r8/shaking/R3;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/K3$a;

    const-string p1, "-keepkotlinmetadata"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/K3$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/K3$a;->d()Lcom/android/tools/r8/shaking/K3;

    move-result-object p0

    return-object p0
.end method
