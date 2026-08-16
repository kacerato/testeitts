.class public final Lcom/android/tools/r8/internal/Ns0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/E1;


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/k3;

.field public e:Lcom/android/tools/r8/internal/QJ;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->f:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->g:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ns0;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ns0;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->l()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/CE;->j(I)Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p2

    sget-boolean p3, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/internal/Ns0;->d:Lcom/android/tools/r8/internal/k3;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/WX;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/LO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/LO0;-><init>()V

    .line 4
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/yk0;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/MO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/MO0;-><init>()V

    .line 166
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/Os0;
    .locals 4

    .line 171
    new-instance v0, Lcom/android/tools/r8/internal/PO0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/PO0;-><init>(I)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/O00;

    move-result-object p0

    .line 173
    new-instance v0, Lcom/android/tools/r8/internal/QO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QO0;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QF;->b()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/NF;

    .line 175
    new-instance v2, Lcom/android/tools/r8/internal/JF;

    .line 176
    iget-object v1, v1, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    .line 177
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 178
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/JF;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/EF;

    .line 179
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/u50;

    invoke-interface {v0, v3, v1}, Lcom/android/tools/r8/internal/aI;->a(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 180
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Lv;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Lv;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/TJ;Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 163
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/t50;->a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/bE;Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/t50;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/jc;Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 135
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/t50;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mK;Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 164
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/t50;->a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t50;->e()Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static a(IILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/u50;
    .locals 1

    .line 181
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    instance-of p1, p2, Lcom/android/tools/r8/internal/u7;

    if-nez p1, :cond_1

    .line 183
    instance-of p1, p2, Lcom/android/tools/r8/internal/vv0;

    if-eqz p1, :cond_0

    return-object p2

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/u50;->a()Lcom/android/tools/r8/internal/N00;

    move-result-object p1

    .line 185
    iget-object v0, p1, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    .line 186
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 187
    new-instance p0, Lcom/android/tools/r8/internal/OO0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/OO0;-><init>()V

    .line 188
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/N00;->a(Ljava/util/function/BiPredicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 189
    sget-object p0, Lcom/android/tools/r8/internal/vv0;->a:Lcom/android/tools/r8/internal/vv0;

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static a(ILcom/android/tools/r8/internal/u50;)Z
    .locals 0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    instance-of p0, p1, Lcom/android/tools/r8/internal/vv0;

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t50;->g()Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILcom/android/tools/r8/internal/u50;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of p0, p1, Lcom/android/tools/r8/internal/vv0;

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t50;->f()Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/android/tools/r8/internal/uv0;

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 7
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p4, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    check-cast p3, Lcom/android/tools/r8/internal/v50;

    return-object p3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    check-cast p3, Lcom/android/tools/r8/internal/v50;

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 3

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 9
    invoke-static {v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/uK;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/KO0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/KO0;-><init>(Lcom/android/tools/r8/internal/Ns0;)V

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/O00;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v2, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p2

    .line 15
    :cond_0
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->c:Lcom/android/tools/r8/graph/H5;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->b:Lcom/android/tools/r8/graph/u1;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 27
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fE;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 29
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->e:Lcom/android/tools/r8/internal/QJ;

    if-eqz v1, :cond_4

    if-eq v1, p1, :cond_4

    .line 31
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 32
    :cond_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ns0;->e:Lcom/android/tools/r8/internal/QJ;

    return-object p2

    .line 33
    :cond_5
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/TJ;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 3

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 35
    invoke-static {v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/uK;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/KO0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/KO0;-><init>(Lcom/android/tools/r8/internal/Ns0;)V

    .line 37
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/O00;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object v2, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p2

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/RO0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/RO0;-><init>(Lcom/android/tools/r8/internal/TJ;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/bE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/HO0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/HO0;-><init>(Lcom/android/tools/r8/internal/bE;)V

    .line 148
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/jc;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 2

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/IO0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/IO0;-><init>(Lcom/android/tools/r8/internal/jc;)V

    .line 144
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/mK;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 3

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 48
    invoke-static {v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/uK;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/KO0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/KO0;-><init>(Lcom/android/tools/r8/internal/Ns0;)V

    .line 50
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/O00;

    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    sget-object v2, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p2

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/NO0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/NO0;-><init>(Lcom/android/tools/r8/internal/mK;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 4

    .line 151
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    sget-object v2, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p2

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p2

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    new-instance p1, Lcom/android/tools/r8/internal/GO0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/GO0;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    .line 161
    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 1

    .line 138
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Lcom/android/tools/r8/internal/KO0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/KO0;-><init>(Lcom/android/tools/r8/internal/Ns0;)V

    .line 140
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/O00;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;
    .locals 0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/v50;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/v50;)Lcom/android/tools/r8/internal/Os0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/v50;)Lcom/android/tools/r8/internal/Os0;
    .locals 5

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 68
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ns0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ns0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v4, :cond_5

    invoke-interface {v1}, Lcom/android/tools/r8/graph/S;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 75
    :cond_6
    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v0

    .line 76
    sget-object v1, Lcom/android/tools/r8/internal/vv0;->a:Lcom/android/tools/r8/internal/vv0;

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/v50;->a(ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/v50;

    move-result-object p2

    goto :goto_2

    .line 77
    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ns0;->g:Ljava/util/Set;

    sget-object v2, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    .line 79
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 80
    invoke-static {v2, v0, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 81
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v0

    .line 83
    new-instance v1, Lcom/android/tools/r8/internal/N00;

    .line 84
    sget-object v2, Lcom/android/tools/r8/internal/rj;->a:Lcom/android/tools/r8/internal/rj;

    sget-object v3, Lcom/android/tools/r8/internal/t7;->a:Lcom/android/tools/r8/internal/t7;

    .line 85
    new-instance v4, Lcom/android/tools/r8/internal/Rm0;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/internal/Rm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    invoke-direct {v1, v4}, Lcom/android/tools/r8/internal/N00;-><init>(Ljava/util/Map;)V

    .line 87
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/v50;->a(ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/v50;

    move-result-object p2

    .line 88
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->d:Lcom/android/tools/r8/internal/k3;

    if-ne p1, v0, :cond_a

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/v50;->d()Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/JO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/JO0;-><init>()V

    .line 90
    iget-object p1, p1, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/QF;->b()Lcom/android/tools/r8/internal/I30;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/NF;

    .line 92
    new-instance v1, Lcom/android/tools/r8/internal/JF;

    .line 93
    iget-object p1, p1, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    .line 94
    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 95
    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/JF;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/EF;

    .line 96
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/u50;

    invoke-interface {v0, v2, p1}, Lcom/android/tools/r8/internal/aI;->a(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return-object p2

    .line 97
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Lv;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Lv;-><init>()V

    return-object p1

    :cond_a
    return-object p2

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object p2

    .line 99
    :cond_c
    sget-boolean v0, Lcom/android/tools/r8/internal/Ns0;->h:Z

    if-nez v0, :cond_e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    instance-of v1, p2, Lcom/android/tools/r8/internal/v7;

    if-nez v1, :cond_d

    goto :goto_3

    .line 101
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_3
    if-nez v0, :cond_10

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    instance-of v1, p2, Lcom/android/tools/r8/internal/wv0;

    if-nez v1, :cond_f

    goto :goto_4

    .line 104
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 105
    :cond_10
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/v50;->d()Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1e

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1a

    const/16 v0, 0x1c

    if-eq v2, v0, :cond_19

    const/16 v0, 0x1e

    if-eq v2, v0, :cond_18

    const/16 v0, 0x26

    if-eq v2, v0, :cond_16

    const/16 v0, 0x28

    if-eq v2, v0, :cond_15

    const/16 v0, 0x2a

    if-eq v2, v0, :cond_14

    const/16 v0, 0x38

    if-eq v2, v0, :cond_13

    const/16 v0, 0x21

    if-eq v2, v0, :cond_12

    const/16 v0, 0x22

    if-eq v2, v0, :cond_11

    .line 107
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto/16 :goto_5

    .line 108
    :cond_11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/TJ;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto/16 :goto_5

    .line 109
    :cond_12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto/16 :goto_5

    .line 110
    :cond_13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/yk0;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto/16 :goto_5

    .line 111
    :cond_14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o0()Lcom/android/tools/r8/internal/WX;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/WX;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto/16 :goto_5

    .line 112
    :cond_15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/mK;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto/16 :goto_5

    .line 113
    :cond_16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->a:Lcom/android/tools/r8/graph/y;

    .line 115
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 118
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ns0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_17

    goto :goto_5

    .line 119
    :cond_17
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto :goto_5

    .line 120
    :cond_18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/rE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto :goto_5

    .line 121
    :cond_19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/bE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto :goto_5

    .line 122
    :cond_1a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-nez v0, :cond_1f

    .line 124
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->f:Ljava/util/Set;

    .line 125
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 126
    sget-object v2, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    sget-object v3, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 128
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_5

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 129
    :cond_1c
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto :goto_5

    .line 130
    :cond_1d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/jc;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    goto :goto_5

    .line 131
    :cond_1e
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object v1

    :cond_1f
    :goto_5
    if-eq v1, p2, :cond_20

    .line 133
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/Os0;

    move-result-object p1

    return-object p1

    :cond_20
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 167
    sget-boolean v0, Lcom/android/tools/r8/internal/Ns0;->h:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 170
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ns0;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
