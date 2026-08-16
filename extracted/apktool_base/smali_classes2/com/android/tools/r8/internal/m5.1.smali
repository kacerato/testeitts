.class public Lcom/android/tools/r8/internal/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/C2;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/QC;

.field public final d:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/m5;->a:Lcom/android/tools/r8/internal/C2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m5;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/m5;->c:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m5;->b()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/m5;->d:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->J:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Lcom/android/tools/r8/internal/C2;",
            "Lcom/android/tools/r8/graph/u1;",
            "Z)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/android/tools/r8/internal/C2;->K:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->l6:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->m6:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 45
    const-string p3, "Ljava/util/concurrent/ScheduledExecutorService;"

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 46
    const-string p3, "Ljava/util/concurrent/AbstractExecutorService;"

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 47
    const-string p3, "Ljava/util/concurrent/ThreadPoolExecutor;"

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    const-string p3, "Ljava/util/concurrent/ScheduledThreadPoolExecutor;"

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 49
    :cond_0
    sget-object p3, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 50
    iget-object p3, p2, Lcom/android/tools/r8/graph/u1;->m4:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 51
    :cond_1
    sget-object p3, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 52
    iget-object p3, p2, Lcom/android/tools/r8/graph/u1;->q4:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 53
    :cond_2
    sget-object p3, Lcom/android/tools/r8/internal/C2;->C:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 54
    iget-object p3, p2, Lcom/android/tools/r8/graph/u1;->p4:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 55
    :cond_3
    sget-object p3, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 56
    iget-object p1, p2, Lcom/android/tools/r8/graph/u1;->o4:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 57
    iget-object p1, p2, Lcom/android/tools/r8/graph/u1;->n4:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->x:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->y:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 107
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 108
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/android/tools/r8/internal/Rj1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Rj1;-><init>()V

    .line 110
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/Gf;

    new-instance v2, Lcom/android/tools/r8/internal/Sj1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Sj1;-><init>(Lcom/android/tools/r8/internal/m5;)V

    .line 111
    invoke-virtual {v0, v1, p4, p1, v2}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 112
    invoke-interface {p3, p2, p1}, Lcom/android/tools/r8/internal/l5;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 66
    sget-boolean v0, Lcom/android/tools/r8/internal/m5;->e:Z

    if-nez v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->d:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->p4:Lcom/android/tools/r8/graph/M2;

    .line 69
    invoke-virtual {v1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 71
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->l6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->m6:Lcom/android/tools/r8/graph/M2;

    .line 72
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->m4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array p3, p3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p4, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    const-string p4, "recycle"

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->n4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    const-string p4, "release"

    if-eqz p1, :cond_4

    .line 76
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p5, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    new-array p3, p3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p5, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v0, :cond_6

    .line 77
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p5, p1, Lcom/android/tools/r8/graph/u1;->q4:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->p4:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->o4:Lcom/android/tools/r8/graph/M2;

    .line 78
    filled-new-array {p5, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p5, 0x3

    invoke-static {p5, p5, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    .line 79
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 80
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p5, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array p3, p3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p5, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 82
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 101
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/android/tools/r8/internal/Gj1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gj1;-><init>()V

    .line 104
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/Gf;

    new-instance v2, Lcom/android/tools/r8/internal/Kj1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/Kj1;-><init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/graph/y;)V

    .line 105
    invoke-virtual {v0, v1, p4, p1, v2}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 106
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/l5;->u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/I5;->E(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 3

    .line 85
    new-instance v0, Lcom/android/tools/r8/internal/Qr0;

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->z3:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/tools/r8/internal/Qr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/B60;)V

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qr0;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/u1;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 8

    .line 88
    new-instance v7, Lcom/android/tools/r8/internal/bu;

    .line 89
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 90
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p7, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {p7, p4}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    .line 91
    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object p2, p5, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    .line 93
    iget-object p3, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p4, p3, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 p5, 0x0

    new-array p5, p5, [Lcom/android/tools/r8/graph/M2;

    .line 94
    invoke-virtual {p3, p4, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p4

    iget-object p5, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p5, p5, Lcom/android/tools/r8/graph/u1;->x0:Lcom/android/tools/r8/graph/L2;

    .line 95
    invoke-virtual {p3, p2, p4, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    const/4 v5, 0x2

    move-object v0, v7

    move-object v4, p6

    move-object v6, p1

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/bu;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Ljava/util/LinkedHashMap;ILcom/android/tools/r8/graph/y;)V

    .line 97
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/bu;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 5

    .line 11
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/Mj1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Mj1;-><init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/internal/IC;)V

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/m5;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;Z)V

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    .line 16
    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v4, v4, [Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->x0:Lcom/android/tools/r8/graph/L2;

    .line 18
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 58
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    new-instance v8, Lcom/android/tools/r8/internal/Pj1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Pj1;-><init>(Lcom/android/tools/r8/internal/m5;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;)V

    .line 60
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->a:Lcom/android/tools/r8/internal/C2;

    iget-object p2, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    const/4 p3, 0x0

    invoke-static {v8, p1, p2, p3}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;Z)V

    return-object v7
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/synthesis/N;)V
    .locals 10

    move-object v6, p1

    move-object/from16 v8, p7

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 29
    iput-object v0, v8, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 30
    iget-object v0, v6, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 32
    iput-object v0, v8, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 33
    new-instance v9, Lcom/android/tools/r8/internal/Jj1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Jj1;-><init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/u1;Ljava/util/LinkedHashMap;)V

    .line 34
    iput-object v9, v8, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 22
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 25
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/Qj1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Qj1;-><init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/graph/y;)V

    .line 27
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->p4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->x0:Lcom/android/tools/r8/graph/L2;

    .line 4
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 36
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->l6:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 39
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 40
    new-instance v0, Lcom/android/tools/r8/internal/Lj1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Lj1;-><init>(Lcom/android/tools/r8/internal/m5;)V

    .line 41
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/M2;)V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->m6:Lcom/android/tools/r8/graph/M2;

    .line 62
    invoke-virtual {p6, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {v6, p5}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 65
    invoke-virtual {p1, p6, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->a:Lcom/android/tools/r8/internal/C2;

    sget-object v1, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ij1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ij1;-><init>(Lcom/android/tools/r8/internal/m5;Ljava/util/function/Consumer;)V

    .line 100
    iget-object p1, p0, Lcom/android/tools/r8/internal/m5;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;Z)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->p4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->x0:Lcom/android/tools/r8/graph/L2;

    .line 9
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 13

    move-object v8, p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 9
    invoke-virtual/range {p0 .. p4}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 10
    iget-object v0, v8, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v9

    .line 11
    new-instance v10, Lcom/android/tools/r8/internal/Nj1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/Nj1;-><init>()V

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v11

    new-instance v12, Lcom/android/tools/r8/internal/Oj1;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Oj1;-><init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Ljava/util/LinkedHashMap;)V

    .line 13
    invoke-virtual {v9, v10, v11, p1, v12}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    move-object v1, p2

    move-object/from16 v2, p3

    .line 14
    invoke-interface {v2, v0, p2}, Lcom/android/tools/r8/internal/l5;->u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/QC;
    .locals 5

    .line 3
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Hj1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Hj1;-><init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/internal/IC;)V

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/m5;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;Z)V

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/m5;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->p4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    :cond_0
    return-void
.end method
