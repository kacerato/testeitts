.class public abstract Lcom/android/tools/r8/internal/zE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/I;
.implements Lcom/android/tools/r8/internal/FE;
.implements Lcom/android/tools/r8/internal/DV;


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/internal/W5;

.field public c:Lcom/android/tools/r8/internal/zE;

.field public d:Lcom/android/tools/r8/internal/zE;

.field public e:Lcom/android/tools/r8/internal/xw0;

.field public final f:Ljava/util/ArrayList;

.field public g:I

.field public h:Ljava/util/Set;

.field public i:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/zE;->g:I

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->e()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/GE1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/GE1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 35
    new-instance v1, Lcom/android/tools/r8/internal/GE1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/GE1;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)Z
    .locals 2

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/ko0;->p:I

    iget v1, p1, Lcom/android/tools/r8/internal/ko0;->p:I

    if-ne v0, v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p0

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()Lcom/android/tools/r8/internal/T3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public A0()Lcom/android/tools/r8/internal/A40;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final A1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/hj;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/fj;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/cj;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ej;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/dj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public B()Lcom/android/tools/r8/internal/C4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B0()Lcom/android/tools/r8/internal/F40;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ej;

    return v0
.end method

.method public C()Lcom/android/tools/r8/internal/u6;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C0()Lcom/android/tools/r8/internal/v60;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/hj;

    return v0
.end method

.method public D()Lcom/android/tools/r8/internal/jc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D0()Lcom/android/tools/r8/internal/rc0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/bE;

    return v0
.end method

.method public E()Lcom/android/tools/r8/internal/se;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E0()Lcom/android/tools/r8/internal/if0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F()Lcom/android/tools/r8/internal/jh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F0()Lcom/android/tools/r8/internal/Pf0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/rE;

    return v0
.end method

.method public G()Lcom/android/tools/r8/internal/lh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public G0()Lcom/android/tools/r8/internal/yk0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public G1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Lcom/android/tools/r8/internal/mh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public H0()Lcom/android/tools/r8/internal/Qk0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public H1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I()Lcom/android/tools/r8/internal/nh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I0()Lcom/android/tools/r8/internal/Ol0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Lcom/android/tools/r8/internal/qh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public J0()Lcom/android/tools/r8/internal/Sl0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public J1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/bE;

    return v0
.end method

.method public K()Lcom/android/tools/r8/internal/vh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public K0()Lcom/android/tools/r8/internal/Mo0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public K1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/bE;

    return v0
.end method

.method public L()Lcom/android/tools/r8/internal/ej;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public L0()Lcom/android/tools/r8/internal/No0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public L1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/mE;

    return v0
.end method

.method public M()Lcom/android/tools/r8/internal/fj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public M0()Lcom/android/tools/r8/internal/Oo0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public M1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N()Lcom/android/tools/r8/internal/hj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N0()Lcom/android/tools/r8/internal/So0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O()Lcom/android/tools/r8/internal/uq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public O0()Lcom/android/tools/r8/internal/lq0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public O1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P()Lcom/android/tools/r8/internal/Ws;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public P0()Lcom/android/tools/r8/internal/Qq0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public P1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Lcom/android/tools/r8/internal/tt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Q0()Lcom/android/tools/r8/internal/ar0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Q1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()Lcom/android/tools/r8/internal/ew;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R0()Lcom/android/tools/r8/internal/Or0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()Lcom/android/tools/r8/internal/hw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public S0()Lcom/android/tools/r8/internal/mw0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public S1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/hK;

    return v0
.end method

.method public T()Lcom/android/tools/r8/internal/ww;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public T0()Lcom/android/tools/r8/internal/fy0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public T1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U()Lcom/android/tools/r8/internal/Bz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final U0()Lcom/android/tools/r8/internal/zE;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v4, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    sget-boolean v3, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_3
    iget-object v4, v1, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_4
    iget-object v3, v1, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    return-object p0
.end method

.method public U1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()Lcom/android/tools/r8/internal/EB;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final V0()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0
.end method

.method public V1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/JT;

    return v0
.end method

.method public W()Lcom/android/tools/r8/internal/sD;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public W0()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public W1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X()Lcom/android/tools/r8/internal/WD;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public X0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Lcom/android/tools/r8/internal/mE;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Y0()Lcom/android/tools/r8/internal/zE;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public Y1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z()Lcom/android/tools/r8/internal/tI;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Z0()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should conform to throwsOnNullInput."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Z1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/oZ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 130
    sget-boolean p1, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 131
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Instruction without object outValue cannot compute verification type"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 22
    sget-boolean p2, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 24
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object p2

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kU;->a()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance p1, Lcom/android/tools/r8/internal/x10;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/android/tools/r8/internal/x10;-><init>(JJ)V

    return-object p1

    .line 28
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 132
    sget-boolean p1, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    .line 134
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->X0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implement type lattice evaluation for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Lcom/android/tools/r8/internal/qh;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/t2;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 2

    .line 125
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 126
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1

    .line 129
    :cond_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->a:Lcom/android/tools/r8/ir/optimize/B;

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
.end method

.method public a(ILcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 49
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p2, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 52
    iput-object p1, p2, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 53
    iget-object p2, v0, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 54
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 55
    iput-object p1, v0, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/B60;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Kn;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/NT;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/PS;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/h9;)V
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 3

    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p2, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 41
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    iput-object v2, p2, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 45
    iput-object v2, p1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    if-eqz p3, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/android/tools/r8/shaking/u;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 135
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result p1

    if-nez p1, :cond_5

    .line 141
    instance-of p1, p0, Lcom/android/tools/r8/internal/uq;

    if-nez p1, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    sget-object v0, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 147
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 0

    .line 6
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/u1;)Z
    .locals 0

    .line 7
    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 8
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 9
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/Je0;)Z
    .locals 0

    .line 10
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;)Z
    .locals 2

    .line 56
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 59
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 10

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 65
    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 67
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 68
    iget-object v3, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-nez v3, :cond_5

    return v2

    .line 69
    :cond_5
    iget v4, p0, Lcom/android/tools/r8/internal/zE;->g:I

    iget v5, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 70
    instance-of v6, v0, Lcom/android/tools/r8/internal/ko0;

    .line 71
    instance-of v7, v0, Lcom/android/tools/r8/internal/lo0;

    .line 72
    instance-of v8, v3, Lcom/android/tools/r8/internal/ko0;

    if-ne v6, v8, :cond_f

    instance-of v8, v3, Lcom/android/tools/r8/internal/lo0;

    if-eq v7, v8, :cond_6

    goto/16 :goto_2

    :cond_6
    if-eqz v6, :cond_7

    .line 73
    check-cast v0, Lcom/android/tools/r8/internal/ko0;

    check-cast v3, Lcom/android/tools/r8/internal/ko0;

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)Z

    move-result v0

    goto/16 :goto_3

    :cond_7
    if-eqz v7, :cond_a

    .line 74
    check-cast v0, Lcom/android/tools/r8/internal/lo0;

    check-cast v3, Lcom/android/tools/r8/internal/lo0;

    .line 75
    iget-object v0, v0, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 76
    iget-object v3, v3, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 77
    array-length v4, v0

    array-length v5, v3

    if-eq v4, v5, :cond_8

    goto :goto_2

    :cond_8
    move v4, v2

    .line 78
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_e

    .line 79
    aget-object v5, v0, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v7

    if-eq v6, v7, :cond_b

    goto :goto_2

    .line 81
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 82
    invoke-interface {p2, v0, v4}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v4

    .line 83
    invoke-interface {p2, v3, v5}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v5

    if-eq v4, v5, :cond_d

    goto :goto_2

    .line 84
    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    .line 85
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/qh;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_2

    .line 87
    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    if-ne v0, v3, :cond_f

    :cond_e
    move v0, v1

    goto :goto_3

    :cond_f
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_11

    return v2

    .line 88
    :cond_10
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_11

    return v2

    .line 89
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_12

    return v2

    :cond_12
    move v0, v2

    .line 90
    :goto_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_20

    .line 91
    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 92
    iget-object v4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 93
    iget v5, p0, Lcom/android/tools/r8/internal/zE;->g:I

    iget v6, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 94
    instance-of v7, v3, Lcom/android/tools/r8/internal/ko0;

    .line 95
    instance-of v8, v3, Lcom/android/tools/r8/internal/lo0;

    .line 96
    instance-of v9, v4, Lcom/android/tools/r8/internal/ko0;

    if-ne v7, v9, :cond_1e

    instance-of v9, v4, Lcom/android/tools/r8/internal/lo0;

    if-eq v8, v9, :cond_13

    goto/16 :goto_7

    :cond_13
    if-eqz v7, :cond_14

    .line 97
    check-cast v3, Lcom/android/tools/r8/internal/ko0;

    check-cast v4, Lcom/android/tools/r8/internal/ko0;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)Z

    move-result v3

    goto/16 :goto_8

    :cond_14
    if-eqz v8, :cond_17

    .line 98
    check-cast v3, Lcom/android/tools/r8/internal/lo0;

    check-cast v4, Lcom/android/tools/r8/internal/lo0;

    .line 99
    iget-object v3, v3, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 100
    iget-object v4, v4, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 101
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_15

    goto/16 :goto_7

    :cond_15
    move v5, v2

    .line 102
    :goto_5
    array-length v6, v3

    if-ge v5, v6, :cond_1d

    .line 103
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_7

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 104
    :cond_17
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eq v7, v8, :cond_18

    goto :goto_7

    .line 105
    :cond_18
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/Je0;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/Je0;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_6

    .line 106
    :cond_19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    .line 107
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/qh;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_7

    .line 109
    :cond_1a
    :goto_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_7

    .line 110
    :cond_1b
    invoke-interface {p2, v3, v5}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v5

    .line 111
    invoke-interface {p2, v4, v6}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v6

    if-eq v5, v6, :cond_1c

    goto :goto_7

    .line 112
    :cond_1c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    if-ne v3, v4, :cond_1e

    :cond_1d
    move v3, v1

    goto :goto_8

    :cond_1e
    :goto_7
    move v3, v2

    :goto_8
    if-nez v3, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 113
    :cond_20
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/EW;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 114
    new-instance v0, Lcom/android/tools/r8/internal/Kn;

    .line 115
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v5

    .line 116
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    const/4 v4, 0x0

    move-object v3, v0

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Kn;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/EW;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/Kn;)V

    .line 118
    sget-boolean p2, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez p2, :cond_22

    iget-object p3, v0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    array-length p3, p3

    if-ne p3, v1, :cond_21

    goto :goto_9

    :cond_21
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 119
    :cond_22
    :goto_9
    iget-object p3, v0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    aget-object p3, p3, v2

    .line 120
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/Kn;)V

    if-nez p2, :cond_24

    .line 121
    iget-object p1, v0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    array-length p1, p1

    if-ne p1, v1, :cond_23

    goto :goto_a

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 122
    :cond_24
    :goto_a
    iget-object p1, v0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    aget-object p1, p1, v2

    .line 123
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/Fn;->a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v1
.end method

.method public a(Ljava/util/Set;)Z
    .locals 0

    .line 11
    instance-of p1, p0, Lcom/android/tools/r8/internal/mE;

    return p1
.end method

.method public final a(Ljava/util/function/Predicate;)Z
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public a0()Lcom/android/tools/r8/internal/NJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a1()Lcom/android/tools/r8/internal/lh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/A40;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;
    .locals 2

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    sget-object p1, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/B60;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    :cond_2
    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    return p1
.end method

.method public abstract b(Lcom/android/tools/r8/internal/zE;)Z
.end method

.method public b0()Lcom/android/tools/r8/internal/OJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b1()Lcom/android/tools/r8/internal/zE;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    return-object v0
.end method

.method public b2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ol0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lcom/android/tools/r8/internal/bE;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/zE;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 6
    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->l:Lcom/android/tools/r8/internal/vw0;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 8
    sget-boolean v3, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public c(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public c0()Lcom/android/tools/r8/internal/QJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c1()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ua1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ua1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zE;->a(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public c2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Sl0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_0

    .line 5
    iput-object p0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    :cond_0
    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/internal/zE;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public d0()Lcom/android/tools/r8/internal/TJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d1()Z
.end method

.method public d2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing debug values with inconsistent locals "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". This is likely a code transformation bug that has not taken local information into account"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 7
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/zE;)V

    :cond_8
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public e0()Lcom/android/tools/r8/internal/VJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e2()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/jh;

    return v0
.end method

.method public f0()Lcom/android/tools/r8/internal/WJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f2()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/v60;

    return v0
.end method

.method public g0()Lcom/android/tools/r8/internal/XJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/jh;

    return v0
.end method

.method public g2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPosition()Lcom/android/tools/r8/internal/B60;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method

.method public h0()Lcom/android/tools/r8/internal/YJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h2()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Mo0;

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i0()Lcom/android/tools/r8/internal/gK;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/cj;

    return v0
.end method

.method public i2()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Mo0;

    return v0
.end method

.method public j0()Lcom/android/tools/r8/internal/hK;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/t2;

    return v0
.end method

.method public j2()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Oo0;

    return v0
.end method

.method public final k()Lcom/android/tools/r8/internal/zE;
    .locals 0

    return-object p0
.end method

.method public k0()Lcom/android/tools/r8/internal/mK;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l0()Lcom/android/tools/r8/internal/sL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Lcom/android/tools/r8/internal/rE;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m0()Lcom/android/tools/r8/internal/JT;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n0()Lcom/android/tools/r8/internal/VT;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0()Lcom/android/tools/r8/internal/WX;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o2()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ew0;

    return v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p0()Lcom/android/tools/r8/internal/aY;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/C4;

    return v0
.end method

.method public abstract p2()I
.end method

.method public q()Lcom/android/tools/r8/graph/j0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    return-object v0
.end method

.method public q0()Lcom/android/tools/r8/internal/bY;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/C4;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C4;->u2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract q2()I
.end method

.method public r0()Lcom/android/tools/r8/internal/gY;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/C4;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/C4;->k:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract r2()I
.end method

.method public s0()Lcom/android/tools/r8/internal/fZ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final s2()Lcom/android/tools/r8/internal/Kw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/android/tools/r8/internal/d2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t0()Lcom/android/tools/r8/internal/oZ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->X0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x14

    const-string v3, " "

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/tools/r8/internal/zq0$a;->e:Lcom/android/tools/r8/internal/zq0$a;

    const-string v3, ", "

    invoke-static {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/tools/r8/internal/t2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u0()Lcom/android/tools/r8/internal/qZ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/jh;

    return v0
.end method

.method public v()Lcom/android/tools/r8/internal/k3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v0()Lcom/android/tools/r8/internal/rZ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Lcom/android/tools/r8/internal/I3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w0()Lcom/android/tools/r8/internal/tZ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Lcom/android/tools/r8/internal/J3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x0()Lcom/android/tools/r8/internal/vZ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Lcom/android/tools/r8/internal/N3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y0()Lcom/android/tools/r8/internal/e10;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/oZ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/XJ;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/rc0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public z()Lcom/android/tools/r8/internal/P3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Lcom/android/tools/r8/internal/w10;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final z1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->y1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
