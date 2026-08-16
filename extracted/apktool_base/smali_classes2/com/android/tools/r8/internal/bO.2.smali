.class public final Lcom/android/tools/r8/internal/bO;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public e:Ljava/lang/String;

.field public f:Lcom/android/tools/r8/internal/C50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/mO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/bO;->c:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/bO;->d:Lcom/android/tools/r8/internal/mO;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/FO;
    .locals 4

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 4
    sget-object v1, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 5
    invoke-static {p0}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/WM;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/YM;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 11
    :goto_0
    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;
    .locals 8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    return-object v5

    :cond_0
    if-eqz p2, :cond_f

    .line 23
    invoke-static {p0}, Lcom/android/tools/r8/internal/rO;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_6

    .line 24
    :cond_1
    const-string v6, "Landroidx/annotation/keep/KeepEdge;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/KeepEdge;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_5

    .line 25
    :cond_2
    const-string v6, "Landroidx/annotation/keep/UsesReflection;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/UsesReflection;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    .line 26
    :cond_3
    const-string v6, "Landroidx/annotation/keep/KeepForApi;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/KeepForApi;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_3

    .line 27
    :cond_4
    const-string v6, "Landroidx/annotation/keep/UsedByReflection;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_2

    .line 28
    :cond_5
    const-string v6, "Landroidx/annotation/keep/UsedByNative;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/UsedByNative;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 29
    :cond_6
    const-string v6, "Landroidx/annotation/keep/CheckRemoved;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/CheckRemoved;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 30
    :cond_7
    const-string v6, "Landroidx/annotation/keep/CheckOptimizedOut;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Lcom/android/tools/r8/keepanno/annotations/CheckOptimizedOut;"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    return-object v5

    .line 31
    :cond_9
    :goto_0
    new-instance v6, Lcom/android/tools/r8/internal/ON;

    .line 32
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/B51;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/internal/B51;-><init>(Ljava/util/function/Consumer;)V

    const/4 v7, 0x2

    move-object v0, v6

    move-object v1, p4

    move-object v2, v5

    move-object v3, p6

    move-object v4, p5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/ON;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;I)V

    return-object v6

    .line 33
    :cond_a
    :goto_1
    new-instance v6, Lcom/android/tools/r8/internal/ON;

    .line 34
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/B51;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/internal/B51;-><init>(Ljava/util/function/Consumer;)V

    const/4 v7, 0x1

    move-object v0, v6

    move-object v1, p4

    move-object v2, v5

    move-object v3, p6

    move-object v4, p5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/ON;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;I)V

    return-object v6

    .line 35
    :cond_b
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/nO;

    .line 36
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v0, p4, v5, p6, p5}, Lcom/android/tools/r8/internal/nO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_c
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/UN;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v0, p4, v5, p6, p5}, Lcom/android/tools/r8/internal/UN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_d
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/qO;

    .line 39
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/D51;

    invoke-direct {v1, p5}, Lcom/android/tools/r8/internal/D51;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p4, v5, p6, v1}, Lcom/android/tools/r8/internal/qO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object v0

    .line 40
    :cond_e
    :goto_5
    new-instance v0, Lcom/android/tools/r8/internal/eO;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v4, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v0, p4, v4, p6}, Lcom/android/tools/r8/internal/eO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;)V

    return-object v0

    :cond_f
    :goto_6
    return-object v5
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 6

    .line 46
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/bO;->c:Z

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lcom/android/tools/r8/internal/dO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bO;->f:Lcom/android/tools/r8/internal/C50;

    iget-object p4, p0, Lcom/android/tools/r8/internal/bO;->d:Lcom/android/tools/r8/internal/mO;

    .line 48
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/E51;

    invoke-direct {v2, p4}, Lcom/android/tools/r8/internal/E51;-><init>(Lcom/android/tools/r8/internal/mO;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/bO;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/dO;-><init>(Lcom/android/tools/r8/internal/C50;Lcom/android/tools/r8/internal/mO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 7

    .line 17
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/bO;->c:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/bO;->d:Lcom/android/tools/r8/internal/mO;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/y51;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/y51;-><init>(Lcom/android/tools/r8/internal/mO;)V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/bO;->f:Lcom/android/tools/r8/internal/C50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v4, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v4, v0, p1}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 21
    iget-object v5, p0, Lcom/android/tools/r8/internal/bO;->e:Ljava/lang/String;

    new-instance v6, Lcom/android/tools/r8/internal/z51;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/internal/z51;-><init>(Lcom/android/tools/r8/internal/bO;)V

    move-object v0, p1

    move v1, p2

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/bO;->a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;
    .locals 6

    .line 49
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/bO;->c:Z

    if-eqz p1, :cond_0

    .line 50
    new-instance p1, Lcom/android/tools/r8/internal/cO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bO;->f:Lcom/android/tools/r8/internal/C50;

    iget-object p4, p0, Lcom/android/tools/r8/internal/bO;->d:Lcom/android/tools/r8/internal/mO;

    .line 51
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/A51;

    invoke-direct {v2, p4}, Lcom/android/tools/r8/internal/A51;-><init>(Lcom/android/tools/r8/internal/mO;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/bO;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/cO;-><init>(Lcom/android/tools/r8/internal/C50;Lcom/android/tools/r8/internal/mO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-super/range {p0 .. p6}, Lcom/android/tools/r8/internal/ge;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0x2f

    const/16 p2, 0x2e

    .line 13
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/internal/bO;->e:Ljava/lang/String;

    .line 15
    new-instance p2, Lcom/android/tools/r8/internal/C50;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/C50;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/android/tools/r8/internal/bO;->f:Lcom/android/tools/r8/internal/C50;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/GN;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/bO;->e:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/android/tools/r8/internal/sO;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v1, Lcom/android/tools/r8/internal/HN;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/HN;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v1, p1, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    return-void
.end method
