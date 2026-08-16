.class public final Lcom/android/tools/r8/shaking/I0;
.super Lcom/android/tools/r8/shaking/A0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/A0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A0;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/A0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/A0;->c:Lcom/android/tools/r8/shaking/K;

    sget-object v3, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/shaking/I0;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/I0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/A0;->a(Lcom/android/tools/r8/shaking/A0;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
