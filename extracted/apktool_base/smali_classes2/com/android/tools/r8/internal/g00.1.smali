.class public final Lcom/android/tools/r8/internal/g00;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/shaking/L4;

.field public final d:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/L4;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Uc0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/g00;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/g00;->c:Lcom/android/tools/r8/shaking/L4;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/g00;->b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uc0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return v1

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/g00;->c:Lcom/android/tools/r8/shaking/L4;

    if-eqz v2, :cond_7

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 10
    iget-object v4, v2, Lcom/android/tools/r8/shaking/L4;->a:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 11
    iget-object v4, v2, Lcom/android/tools/r8/shaking/L4;->b:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/shaking/L4;->c:Ljava/util/Set;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Lb1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Lb1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return v1

    .line 20
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/g00;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return v1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 23
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return v1

    .line 24
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/g00;->d:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Uc0;->a(Ljava/lang/Object;Z)Z

    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/O2;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Mb1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Mb1;-><init>(Lcom/android/tools/r8/internal/g00;)V

    iget-object v1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    sget-object v2, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_1

    array-length p1, v0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v0}, [Lcom/android/tools/r8/graph/M2;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/M2;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Lcom/android/tools/r8/graph/O2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoIndirectRuntimeTypeChecks"

    return-object v0
.end method
