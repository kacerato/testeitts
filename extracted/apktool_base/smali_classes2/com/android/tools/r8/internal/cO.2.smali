.class public final Lcom/android/tools/r8/internal/cO;
.super Lcom/android/tools/r8/internal/Uw;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/mO;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/android/tools/r8/internal/D50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/C50;Lcom/android/tools/r8/internal/mO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Uw;-><init>(ILcom/android/tools/r8/internal/Uw;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/cO;->c:Lcom/android/tools/r8/internal/mO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/cO;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/cO;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/tools/r8/internal/cO;->f:Ljava/lang/String;

    new-instance p2, Lcom/android/tools/r8/internal/D50;

    invoke-direct {p2, p1, p4, p5}, Lcom/android/tools/r8/internal/D50;-><init>(Lcom/android/tools/r8/internal/C50;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/cO;->g:Lcom/android/tools/r8/internal/D50;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 5

    .line 13
    invoke-static {p2}, Lcom/android/tools/r8/internal/DP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/DP;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/zO;->a(Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/zO;

    move-result-object p2

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 17
    sget-object v1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 18
    sget-object v2, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 19
    invoke-static {p0}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    .line 20
    new-instance v3, Lcom/android/tools/r8/internal/WM;

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    iget-object v4, v1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 23
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 25
    :goto_0
    invoke-direct {v3, v0, v2}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    .line 26
    iget-object p0, p3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance p0, Lcom/android/tools/r8/internal/PM;

    const-string v0, "CLASS"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object p3, p3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p3, p0, v3}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    .line 30
    new-instance p3, Lcom/android/tools/r8/internal/UM;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 31
    sget-object p0, Lcom/android/tools/r8/internal/uO;->h:Lcom/android/tools/r8/internal/uO;

    .line 32
    sget-object v0, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    .line 33
    sget-object v1, Lcom/android/tools/r8/internal/yO;->b:Lcom/android/tools/r8/internal/yO;

    .line 34
    invoke-static {p1}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/vO;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    .line 37
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/xO;

    invoke-direct {p1, v2, p0, v0, p2}, Lcom/android/tools/r8/internal/xO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/uO;Lcom/android/tools/r8/internal/vO;Lcom/android/tools/r8/internal/zO;)V

    .line 38
    new-instance p0, Lcom/android/tools/r8/internal/LO;

    invoke-direct {p0, p3, p1}, Lcom/android/tools/r8/internal/LO;-><init>(Lcom/android/tools/r8/internal/UM;Lcom/android/tools/r8/internal/OO;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    .line 1
    :cond_1
    const-string p1, "Landroidx/annotation/keep/KeepEdge;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "Lcom/android/tools/r8/keepanno/annotations/KeepEdge;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_3

    .line 2
    :cond_2
    const-string p1, "Landroidx/annotation/keep/UsesReflection;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "Lcom/android/tools/r8/keepanno/annotations/UsesReflection;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    const-string p1, "Landroidx/annotation/keep/KeepForApi;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Lcom/android/tools/r8/keepanno/annotations/KeepForApi;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 4
    :cond_4
    const-string p1, "Landroidx/annotation/keep/UsedByReflection;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 5
    :cond_5
    const-string p1, "Landroidx/annotation/keep/UsedByNative;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Lcom/android/tools/r8/keepanno/annotations/UsedByNative;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return-object v0

    .line 6
    :cond_7
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/oO;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/internal/C51;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/android/tools/r8/internal/h71;

    invoke-direct {p2, p5, p6, p7}, Lcom/android/tools/r8/internal/h71;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p1, p8, p2}, Lcom/android/tools/r8/internal/oO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object p0

    .line 8
    :cond_8
    :goto_1
    new-instance p0, Lcom/android/tools/r8/internal/VN;

    .line 9
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/internal/C51;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/android/tools/r8/internal/i71;

    invoke-direct {p2, p5, p6, p7}, Lcom/android/tools/r8/internal/i71;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p1, p8, p2}, Lcom/android/tools/r8/internal/VN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object p0

    .line 10
    :cond_9
    :goto_2
    new-instance p0, Lcom/android/tools/r8/internal/qO;

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/internal/C51;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/android/tools/r8/internal/j71;

    invoke-direct {p2, p5, p6, p7}, Lcom/android/tools/r8/internal/j71;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p1, p8, p2}, Lcom/android/tools/r8/internal/qO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object p0

    .line 12
    :cond_a
    :goto_3
    new-instance p0, Lcom/android/tools/r8/internal/eO;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/internal/C51;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p4, p1, p8}, Lcom/android/tools/r8/internal/eO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/FO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/cO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/cO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/cO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/cO;->c:Lcom/android/tools/r8/internal/mO;

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/f71;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/f71;-><init>(Lcom/android/tools/r8/internal/mO;)V

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/cO;->g:Lcom/android/tools/r8/internal/D50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance v5, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v5, v0, p1}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 48
    iget-object v6, p0, Lcom/android/tools/r8/internal/cO;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/tools/r8/internal/cO;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/tools/r8/internal/cO;->f:Ljava/lang/String;

    new-instance v9, Lcom/android/tools/r8/internal/g71;

    invoke-direct {v9, p0}, Lcom/android/tools/r8/internal/g71;-><init>(Lcom/android/tools/r8/internal/cO;)V

    const/4 v3, 0x1

    move-object v1, p1

    move v2, p2

    .line 49
    invoke-static/range {v1 .. v9}, Lcom/android/tools/r8/internal/cO;->a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/GN;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/cO;->d:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/android/tools/r8/internal/sO;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cO;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cO;->f:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v3, Lcom/android/tools/r8/internal/KN;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/KN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object v3, p1, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    return-void
.end method
