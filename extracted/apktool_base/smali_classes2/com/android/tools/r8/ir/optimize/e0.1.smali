.class public final Lcom/android/tools/r8/ir/optimize/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/h80;

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ$h;->f:[I

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/e0;->c:[I

    return-void
.end method

.method public static a()Ljava/util/Optional;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/i80;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Dg;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Dg;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i80;-><init>(Lcom/android/tools/r8/internal/Dg;)V

    .line 4
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/H5;I)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dX;->c()Lcom/android/tools/r8/internal/E8;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/E8;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 34
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/IH;->c(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;I)V
    .locals 0

    .line 83
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p3

    if-nez p3, :cond_0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/sY;)Lcom/android/tools/r8/internal/qU;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/tools/r8/internal/qU;->b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    new-instance v3, Lv/w0;

    invoke-direct {v3, p0, p1, v1, v0}, Lv/w0;-><init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/internal/sY;Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 50
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    .line 51
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-object v1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/sY;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    .line 45
    new-instance v1, Lcom/android/tools/r8/internal/tY;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/tY;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 46
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/tY;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/sY;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/ir/optimize/H;
    .locals 7

    .line 8
    new-instance v6, Lcom/android/tools/r8/ir/optimize/H;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/gx;

    sget-object v0, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/gx;-><init>(Lcom/android/tools/r8/ir/optimize/U;)V

    const v5, 0x7fffffff

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/H;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;I)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lv/p0;

    invoke-direct {v1}, Lv/p0;-><init>()V

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 13
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Optional;

    .line 16
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/i80;

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    .line 19
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {v1, v3, p1}, Lcom/android/tools/r8/internal/Dg;->a(Ljava/lang/Object;I)I

    .line 21
    iget-object p1, v0, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result p1

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/e0;->c:[I

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 23
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/i80;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/i80;)V
    .locals 2

    .line 24
    new-instance v0, Lv/u0;

    invoke-direct {v0}, Lv/u0;-><init>()V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/i80;->a(Ljava/util/function/Predicate;)V

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 26
    new-instance v1, Lv/v0;

    invoke-direct {v1, p2, v0}, Lv/v0;-><init>(Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/IH;)V

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/i80;->a(Ljava/util/function/ObjIntConsumer;)V

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p2

    iget-object p3, p0, Lcom/android/tools/r8/ir/optimize/e0;->c:[I

    array-length p3, p3

    if-le p2, p3, :cond_0

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p3

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 32
    iget-object p1, p2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/e0;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lv/s0;

    invoke-direct {v0, p0, p1, p2, p3}, Lv/s0;-><init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    const-string p1, "Multi caller inliner: Record call edges"

    invoke-virtual {p4, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 35
    const-string v0, "Multi caller inliner"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 36
    new-instance v0, Lv/n0;

    invoke-direct {v0, p0, p3}, Lv/n0;-><init>(Lcom/android/tools/r8/ir/optimize/e0;Ljava/util/concurrent/ExecutorService;)V

    .line 37
    const-string p3, "Call graph construction"

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/sY;

    .line 38
    new-instance v0, Lv/o0;

    invoke-direct {v0, p0, p3}, Lv/o0;-><init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/internal/sY;)V

    .line 39
    const-string p3, "Needs inlining analysis"

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/qU;

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/qU;)V

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sY;Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)V
    .locals 2

    .line 53
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 54
    :cond_0
    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 55
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 59
    :cond_2
    invoke-virtual {p5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/i80;

    .line 60
    new-instance v0, Lv/q0;

    invoke-direct {v0}, Lv/q0;-><init>()V

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/i80;->a(Ljava/util/function/Predicate;)V

    .line 61
    iget-object v0, p5, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p5, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/e0;->c:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    goto/16 :goto_0

    .line 63
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/y8;->a:Ljava/util/Map;

    .line 64
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/E00;

    .line 65
    check-cast p1, Lcom/android/tools/r8/internal/vY;

    .line 66
    iget-object p1, p1, Lcom/android/tools/r8/internal/vY;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 68
    iget-object v0, p5, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p5, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    if-ge v0, p1, :cond_5

    goto :goto_0

    .line 70
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/e0;->c:[I

    .line 71
    iget-object v0, p5, Lcom/android/tools/r8/internal/i80;->a:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 72
    aget p1, p1, v0

    .line 73
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/i0;->k(I)I

    move-result p1

    if-ltz p1, :cond_8

    .line 76
    new-instance p1, Lv/r0;

    invoke-direct {p1, p2, p3}, Lv/r0;-><init>(Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {p5, p1}, Lcom/android/tools/r8/internal/i80;->a(Ljava/util/function/ObjIntConsumer;)V

    .line 77
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 79
    iget p2, p1, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_6

    .line 80
    iput v1, p1, Lcom/android/tools/r8/internal/WY;->v:I

    return-void

    .line 81
    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez p1, :cond_8

    const/4 p1, 0x2

    if-ne p2, p1, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_0
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/sY;)Lcom/android/tools/r8/internal/qU;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/internal/sY;)Lcom/android/tools/r8/internal/qU;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V
    .locals 12

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/sR;

    new-instance v1, Lv/t0;

    invoke-direct {v1, p0, p1, p3}, Lv/t0;-><init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/v31;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/v31;-><init>()V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/tools/r8/internal/VJ;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v6, p1, v2}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/e0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v2, p1}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->c()Lcom/android/tools/r8/internal/E8;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/E8;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v3, v0, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Lcom/android/tools/r8/ir/optimize/H;

    .line 14
    sget-object v9, Lcom/android/tools/r8/internal/Pc;->e:Lcom/android/tools/r8/internal/Nc;

    .line 15
    new-instance v10, Lcom/android/tools/r8/internal/ID;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ID;-><init>()V

    .line 16
    sget-object v11, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    move-object v4, p2

    move-object v7, v2

    move-object v8, p1

    .line 17
    invoke-virtual/range {v3 .. v11}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/S;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 18
    instance-of v3, v3, Lcom/android/tools/r8/ir/optimize/V;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)V

    goto :goto_0

    .line 20
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/e0;->b:Lcom/android/tools/r8/internal/h80;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v5, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 23
    new-instance v6, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v6, v5, v2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 24
    iget-object v2, v3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-void
.end method
