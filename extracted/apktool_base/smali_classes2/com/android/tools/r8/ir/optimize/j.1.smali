.class public final Lcom/android/tools/r8/ir/optimize/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/j;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/j;->b:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/ir/optimize/h;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/ir/optimize/i;
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/ir/optimize/i;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/i;-><init>(Lcom/android/tools/r8/ir/optimize/h;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;)Ljava/util/Map;
    .locals 0

    .line 8
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/ir/optimize/i;)V
    .locals 0

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/ir/optimize/i;->a(Lcom/android/tools/r8/internal/xt;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/ir/optimize/i;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/ir/optimize/i;->a(Lcom/android/tools/r8/internal/xt;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 13
    sget-object v0, Lcom/android/tools/r8/ir/optimize/l;->a:Lcom/android/tools/r8/ir/optimize/l;

    new-instance v1, Lv/J0;

    invoke-direct {v1}, Lv/J0;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/h;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zt;)V
    .locals 2

    .line 10
    sget-object v0, Lcom/android/tools/r8/ir/optimize/l;->a:Lcom/android/tools/r8/ir/optimize/l;

    new-instance v1, Lv/M0;

    invoke-direct {v1, p3}, Lv/M0;-><init>(Lcom/android/tools/r8/internal/zt;)V

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/h;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/h;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/j;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Lv/K0;

    invoke-direct {v1}, Lv/K0;-><init>()V

    .line 2
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lv/L0;

    invoke-direct {v0, p3}, Lv/L0;-><init>(Lcom/android/tools/r8/ir/optimize/h;)V

    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/optimize/i;

    .line 4
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    instance-of p3, p3, Lcom/android/tools/r8/ir/optimize/l;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/i;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/j;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/android/tools/r8/ir/optimize/p;->a:Lcom/android/tools/r8/ir/optimize/p;

    new-instance v1, Lv/J0;

    invoke-direct {v1}, Lv/J0;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/h;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zt;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/ir/optimize/p;->a:Lcom/android/tools/r8/ir/optimize/p;

    new-instance v1, Lv/N0;

    invoke-direct {v1, p3}, Lv/N0;-><init>(Lcom/android/tools/r8/internal/zt;)V

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/h;Ljava/util/function/Consumer;)V

    return-void
.end method
