.class public final Lcom/android/tools/r8/shaking/p1;
.super Lcom/android/tools/r8/shaking/E1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/q1;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/shaking/o1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/o1;-><init>(Lcom/android/tools/r8/shaking/q1;)V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/E1;-><init>(Lcom/android/tools/r8/shaking/D1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/p1;)Lcom/android/tools/r8/shaking/p1;
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/E1;->a(Lcom/android/tools/r8/shaking/E1;)Lcom/android/tools/r8/shaking/E1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/p1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/o1;

    .line 3
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/o1;->l:Z

    xor-int/lit8 v1, v1, 0x1

    .line 4
    new-instance v2, Lcom/android/tools/r8/shaking/Td;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Td;-><init>()V

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/p1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast p1, Lcom/android/tools/r8/shaking/o1;

    .line 6
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/o1;->m:Z

    xor-int/lit8 p1, p1, 0x1

    .line 7
    new-instance v1, Lcom/android/tools/r8/shaking/Ud;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Ud;-><init>()V

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/p1;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/p1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/p1;->a(Lcom/android/tools/r8/shaking/p1;)Lcom/android/tools/r8/shaking/p1;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/shaking/p1;
    .locals 0

    return-object p0
.end method

.method public final m()Lcom/android/tools/r8/shaking/s1;
    .locals 0

    return-object p0
.end method

.method public final q()Lcom/android/tools/r8/shaking/p1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/o1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->l:Z

    return-object p0
.end method

.method public final r()Lcom/android/tools/r8/shaking/p1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/o1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/o1;->m:Z

    return-object p0
.end method
