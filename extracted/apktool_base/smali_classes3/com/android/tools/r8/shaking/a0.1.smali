.class public final Lcom/android/tools/r8/shaking/a0;
.super Lcom/android/tools/r8/shaking/Y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/Y;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/Y;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/d0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/tools/r8/shaking/b0;->a:Lcom/android/tools/r8/shaking/b0;

    return-object p1

    :cond_1
    new-instance v0, Lcom/android/tools/r8/shaking/a0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/a0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/shaking/a0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/shaking/a0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method
