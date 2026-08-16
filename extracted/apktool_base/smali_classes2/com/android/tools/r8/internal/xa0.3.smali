.class public final Lcom/android/tools/r8/internal/xa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/android/tools/r8/internal/r6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/xa0;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/graph/F2;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xa0;

    .line 5
    iget-object v2, v1, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    .line 6
    iget-object v2, v2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 7
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/android/tools/r8/graph/F2;

    if-eqz v2, :cond_0

    return-object v2

    .line 9
    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/xa0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/wa0;Z)Lcom/android/tools/r8/graph/F2;
    .locals 7

    .line 10
    iget-object v0, p3, Lcom/android/tools/r8/internal/wa0;->b:Lcom/android/tools/r8/internal/Dq;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-boolean p2, Lcom/android/tools/r8/internal/xa0;->c:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xa0;->a(Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/graph/F2;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xa0;->a(Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/graph/F2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 16
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xa0;->a(Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 17
    :cond_3
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/wa0;->a(Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 20
    invoke-virtual {p2, v1, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 21
    new-instance v1, Lcom/android/tools/r8/graph/E2;

    invoke-direct {v1, p3, v0}, Lcom/android/tools/r8/graph/E2;-><init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    .line 22
    new-instance p3, Lcom/android/tools/r8/internal/Yx0;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 23
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 24
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xa0;

    .line 26
    iget-object v4, v2, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    .line 27
    iget-object v4, v4, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 28
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 29
    iget-object p3, p1, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 30
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    move v2, v3

    .line 31
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/graph/E2;->d:Lcom/android/tools/r8/graph/I2;

    .line 33
    new-instance v5, Lcom/android/tools/r8/graph/E2;

    invoke-direct {v5, v1, v4}, Lcom/android/tools/r8/graph/E2;-><init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    add-int/2addr v2, v3

    .line 34
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 35
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 36
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xa0;

    .line 38
    iget-object v6, v4, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    .line 39
    iget-object v6, v6, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 40
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v5

    goto :goto_2

    .line 41
    :cond_4
    iget-object v4, v4, Lcom/android/tools/r8/internal/xa0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_3

    :cond_5
    move-object v1, v5

    goto :goto_4

    .line 42
    :cond_6
    iget-object v2, v2, Lcom/android/tools/r8/internal/xa0;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    .line 43
    iget-object p2, p0, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    .line 44
    iget-object p2, p2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 45
    invoke-virtual {p2, p1, v1, v3}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    :cond_8
    return-object v1
.end method
