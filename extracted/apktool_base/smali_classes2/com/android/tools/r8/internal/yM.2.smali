.class public final Lcom/android/tools/r8/internal/yM;
.super Lcom/android/tools/r8/internal/tN;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/s1;

.field public final synthetic b:Lcom/android/tools/r8/internal/BN;

.field public final synthetic c:Lcom/android/tools/r8/graph/D5;

.field public final synthetic d:Lcom/android/tools/r8/internal/EM;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/internal/BN;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/EM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yM;->b:Lcom/android/tools/r8/internal/BN;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yM;->c:Lcom/android/tools/r8/graph/D5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/yM;->d:Lcom/android/tools/r8/internal/EM;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/tN;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/IM;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/graph/r0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget v1, p2, Lcom/android/tools/r8/internal/IM;->b:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_2

    :cond_1
    if-ne p1, v0, :cond_3

    .line 4
    iget p1, p2, Lcom/android/tools/r8/internal/IM;->b:I

    and-int/2addr p1, v0

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 6
    iget-object v0, p2, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    .line 7
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mP;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_7

    .line 8
    iget p1, p2, Lcom/android/tools/r8/internal/IM;->b:I

    and-int/lit8 p2, p1, 0x1

    if-lez p2, :cond_4

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_4

    .line 9
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    goto :goto_3

    :cond_4
    if-lez p2, :cond_5

    .line 10
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    goto :goto_3

    :cond_5
    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_6

    .line 11
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    goto :goto_3

    .line 12
    :cond_6
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 13
    :goto_3
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 14
    iget-object p4, p3, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 15
    iget-object p4, p4, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 16
    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dN;)V
    .locals 4

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/dN;->b:Lcom/android/tools/r8/internal/IM;

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/IM;->a:Lcom/android/tools/r8/internal/mP;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    .line 22
    iget p1, p1, Lcom/android/tools/r8/internal/IM;->b:I

    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    and-int/lit8 v2, p1, 0x2

    if-lez v2, :cond_0

    .line 23
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 24
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 25
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    goto :goto_0

    .line 26
    :cond_2
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 27
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 28
    iget-object v1, v1, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 29
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/g1;)V

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    return-void

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yM;->c:Lcom/android/tools/r8/graph/D5;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->d()Lcom/android/tools/r8/graph/b1;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yM;->d:Lcom/android/tools/r8/internal/EM;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    new-instance v3, Lcom/android/tools/r8/internal/qA1;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/android/tools/r8/internal/qA1;-><init>(Lcom/android/tools/r8/internal/yM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/IM;Lcom/android/tools/r8/shaking/s1;)V

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
