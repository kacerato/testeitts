.class public final Lcom/android/tools/r8/shaking/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/j2;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/j2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/j2;-><init>(Lcom/android/tools/r8/shaking/l2;)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/l2;->a:Lcom/android/tools/r8/shaking/j2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/H2;
    .locals 3

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 27
    new-instance v1, Lcom/android/tools/r8/shaking/l2;

    new-instance v2, Lcom/android/tools/r8/shaking/vd;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/tools/r8/shaking/vd;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/C7;)V

    invoke-direct {v1, v2, p0}, Lcom/android/tools/r8/shaking/l2;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V

    .line 28
    new-instance p0, Lcom/android/tools/r8/shaking/k2;

    invoke-direct {p0, v1, p1}, Lcom/android/tools/r8/shaking/k2;-><init>(Lcom/android/tools/r8/shaking/l2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/H2;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 31
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/shaking/k2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/k2;-><init>(Lcom/android/tools/r8/shaking/l2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    .line 6
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 8
    iget-object v4, p0, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    .line 9
    sget-boolean v5, Lcom/android/tools/r8/shaking/l2;->d:Z

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    invoke-interface {v5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    .line 12
    invoke-static {v3, v1, v0, v2}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/androidapi/a;)Lcom/android/tools/r8/graph/q0;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    .line 14
    iget-object v5, p0, Lcom/android/tools/r8/shaking/l2;->b:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/shaking/l2;->a:Lcom/android/tools/r8/shaking/j2;

    invoke-virtual {v3, v5, v6}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 15
    :goto_2
    new-instance v3, Lcom/android/tools/r8/shaking/wd;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/wd;-><init>(Lcom/android/tools/r8/shaking/l2;)V

    .line 16
    sget-object v5, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v4, v3, v5}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 17
    new-instance v3, Lcom/android/tools/r8/shaking/xd;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/xd;-><init>(Lcom/android/tools/r8/shaking/l2;)V

    new-instance v5, Lcom/android/tools/r8/shaking/yd;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/shaking/yd;-><init>(Lcom/android/tools/r8/shaking/l2;)V

    invoke-virtual {v4, v5, v3}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 5

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/l2;->c:Ljava/util/function/Consumer;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 21
    iget-object v2, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 23
    invoke-interface {v1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result p1

    return p1
.end method
