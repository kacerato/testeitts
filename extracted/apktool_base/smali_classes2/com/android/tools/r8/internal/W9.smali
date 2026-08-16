.class public abstract Lcom/android/tools/r8/internal/W9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ka;


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/W9;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/G9;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract B()I
.end method

.method public C()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/W9;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result v0

    return v0
.end method

.method public D()Lcom/android/tools/r8/internal/ka;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/t9;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/T9;

    return v0
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/U9;

    return v0
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/M9;

    return v0
.end method

.method public S()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ab;

    return v0
.end method

.method public T()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
.end method

.method public abstract a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
.end method

.method public a()Lcom/android/tools/r8/internal/Z8;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/W9;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->Q()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1

    :cond_2
    if-nez v0, :cond_4

    .line 8
    instance-of p1, p0, Lcom/android/tools/r8/internal/ka;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_4
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Va;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/W9;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/p01;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/p01;-><init>(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/internal/W9;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/i9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/t9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/u9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/A9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/android/tools/r8/internal/F9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/internal/G9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/internal/U9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/internal/V9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/internal/ga;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/ha;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/internal/ja;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/internal/ka;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/android/tools/r8/internal/pa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->z()Z

    move-result v0

    return v0
.end method

.method public p()Lcom/android/tools/r8/internal/wa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lcom/android/tools/r8/internal/Ma;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/internal/W9;
    .locals 0

    return-object p0
.end method

.method public final s()Lcom/android/tools/r8/internal/Np;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/android/tools/r8/internal/Wa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Va;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Va;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/Va;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Va;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/tools/r8/internal/vb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Lcom/android/tools/r8/internal/wb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lcom/android/tools/r8/internal/yb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Lcom/android/tools/r8/internal/Eb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Instruction must specify size"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/W8;

    return v0
.end method
