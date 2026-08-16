.class public final Lcom/android/tools/r8/ir/optimize/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:I

.field public final d:Lcom/android/tools/r8/ir/optimize/a;

.field public final e:Lcom/android/tools/r8/ir/optimize/n0;

.field public f:Lcom/android/tools/r8/ir/optimize/m0;

.field public final g:Ljava/util/IdentityHashMap;

.field public h:Z

.field public final synthetic i:Lcom/android/tools/r8/ir/optimize/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/ir/optimize/t0;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/n0;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/n0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->e:Lcom/android/tools/r8/ir/optimize/n0;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->g:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->b:Lcom/android/tools/r8/internal/fB;

    iget-object p2, p2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/16 v0, 0x2710

    div-int/2addr v0, p2

    const/16 p2, 0x32

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->c:I

    sget-boolean p2, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F0;)Ljava/lang/Boolean;
    .locals 0

    .line 160
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 161
    iget-object p1, p1, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    const/4 v1, 0x0

    .line 184
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    .line 185
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    .line 186
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    .line 187
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    .line 188
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 189
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    .line 190
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V
    .locals 2

    .line 42
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v0, p3, Lcom/android/tools/r8/graph/F5;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 46
    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 49
    :cond_0
    invoke-interface {p4}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-interface {p4}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object p4

    .line 51
    iget p4, p4, Lcom/android/tools/r8/internal/RD;->a:I

    .line 52
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 54
    new-instance v0, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/ir/optimize/o0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 55
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance p2, Lcom/android/tools/r8/ir/optimize/q0;

    invoke-direct {p2, p0, p4}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 58
    iget-object p3, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-nez p3, :cond_1

    .line 59
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    .line 60
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance p2, Lcom/android/tools/r8/ir/optimize/q0;

    invoke-direct {p2, p0, p4}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/ir/optimize/o0;Lcom/android/tools/r8/ir/optimize/p0;)V

    return-void

    .line 62
    :cond_3
    invoke-interface {p4}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-interface {p4}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p4

    .line 64
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Pm0;->i0()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    .line 65
    invoke-virtual {p4, p1, v0}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/ir/optimize/o0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 68
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 69
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance p2, Lcom/android/tools/r8/ir/optimize/r0;

    invoke-direct {p2, p0, p4}, Lcom/android/tools/r8/ir/optimize/r0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/Pm0;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 71
    iget-object p3, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-nez p3, :cond_4

    .line 72
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    .line 73
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 74
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance p2, Lcom/android/tools/r8/ir/optimize/r0;

    invoke-direct {p2, p0, p4}, Lcom/android/tools/r8/ir/optimize/r0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/Pm0;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/ir/optimize/o0;Lcom/android/tools/r8/ir/optimize/p0;)V

    return-void

    .line 75
    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez p1, :cond_8

    invoke-interface {p4}, Lcom/android/tools/r8/internal/SD;->h()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F1;)V
    .locals 2

    .line 168
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-interface {p1, p3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/graph/F5;->f:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 172
    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 173
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v1

    .line 174
    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p4

    .line 176
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Pm0;->i0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    .line 177
    invoke-virtual {p4, p1, v0}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/ir/optimize/o0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    new-instance p2, Lcom/android/tools/r8/ir/optimize/r0;

    invoke-direct {p2, p0, p4}, Lcom/android/tools/r8/ir/optimize/r0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/Pm0;)V

    .line 179
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 180
    iget-object p3, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-nez p3, :cond_3

    .line 181
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    .line 182
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/No0;Lcom/android/tools/r8/graph/F0;)V
    .locals 4

    .line 120
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/M2;)Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 123
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 124
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    .line 125
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    .line 126
    sget-object v3, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    .line 128
    :cond_0
    new-instance v0, Lcom/android/tools/r8/ir/optimize/q0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    .line 129
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 130
    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 131
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 133
    iget-object p1, p1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 134
    new-instance v1, Lv/n1;

    invoke-direct {v1, p0, p2}, Lv/n1;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/graph/F0;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 137
    iget-object v2, p1, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_3

    .line 138
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p1, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    .line 139
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 141
    invoke-virtual {v1}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 142
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/m0;->k:Z

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 143
    :cond_6
    :goto_1
    iget-object v3, v1, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_7

    .line 144
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v1, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    .line 145
    :cond_7
    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 147
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 148
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 149
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_8

    .line 150
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    .line 151
    :cond_8
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/No0;

    if-eqz p1, :cond_9

    .line 152
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->g:Ljava/util/IdentityHashMap;

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    .line 154
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 155
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/s0;->b(Lcom/android/tools/r8/graph/M2;)V

    .line 157
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 158
    iget-object p2, p1, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    const/4 p2, 0x0

    .line 159
    iput-object p2, p1, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/QJ;)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 27
    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 33
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fE;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 38
    iget-object v2, v2, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    new-instance v3, Lv/s1;

    invoke-direct {v3, p0, v0, p1}, Lv/s1;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;)V

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/UD;->b(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V

    return-void

    .line 41
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/W5;Ljava/util/Set;)V
    .locals 2

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lv/o1;

    invoke-direct {v1, p1}, Lv/o1;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    .line 9
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_4
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    .line 15
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/f60;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rE;Lcom/android/tools/r8/graph/F0;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/optimize/m0;->b(Lcom/android/tools/r8/graph/l1;)V

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 83
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 84
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    .line 86
    sget-object v3, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ir/optimize/o0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 90
    new-instance v0, Lcom/android/tools/r8/ir/optimize/q0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    .line 91
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 92
    iget-object v2, v2, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 93
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 95
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 96
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 99
    iget-object p2, p2, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 100
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$h;->b:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 102
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 103
    invoke-virtual {p2}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 104
    iget-object v2, p2, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_3

    .line 105
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p2, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    .line 106
    :cond_3
    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/ir/optimize/o0;Lcom/android/tools/r8/ir/optimize/p0;)V

    .line 108
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 109
    invoke-virtual {p2}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 110
    iget-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_5

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p2, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    .line 112
    :cond_5
    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/rE;

    if-eqz p1, :cond_6

    .line 113
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/s0;->g:Ljava/util/IdentityHashMap;

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 115
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 116
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 118
    iget-object p2, p1, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    const/4 p2, 0x0

    .line 119
    iput-object p2, p1, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Q30;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 165
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 166
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 167
    new-instance v1, Lv/p1;

    invoke-direct {v1, p0, v0, p1}, Lv/p1;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Q30;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)V
    .locals 3

    .line 191
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->h2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 194
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 195
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 197
    iput-object v1, p1, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    .line 198
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 200
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_7

    .line 201
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 202
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v0

    if-nez v0, :cond_6

    .line 203
    instance-of v0, p1, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 204
    :cond_4
    instance-of p1, p1, Lcom/android/tools/r8/internal/bE;

    if-nez p1, :cond_5

    goto :goto_2

    .line 205
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 206
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    .line 207
    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 208
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 209
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 210
    iput-object v1, p1, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    .line 211
    invoke-virtual {p1}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 77
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    .line 78
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    .line 80
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->g:Ljava/util/IdentityHashMap;

    new-instance v1, Lv/t1;

    invoke-direct {v1, p0}, Lv/t1;-><init>(Lcom/android/tools/r8/ir/optimize/s0;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/s0;->g:Ljava/util/IdentityHashMap;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/ve;
    .locals 14

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v1, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/s0;->e:Lcom/android/tools/r8/ir/optimize/n0;

    iget v5, p0, Lcom/android/tools/r8/ir/optimize/s0;->c:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    new-instance v4, Lcom/android/tools/r8/ir/optimize/m0;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/ir/optimize/m0;-><init>(I)V

    goto/16 :goto_c

    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v10, v4, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/ir/optimize/m0;

    invoke-direct {v9, v5, v10}, Lcom/android/tools/r8/ir/optimize/m0;-><init>(ILcom/android/tools/r8/ir/optimize/m0;)V

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    iget-object v11, v4, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/ir/optimize/m0;

    if-nez v10, :cond_6

    new-instance v4, Lcom/android/tools/r8/ir/optimize/m0;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/ir/optimize/m0;-><init>(I)V

    goto/16 :goto_c

    :cond_6
    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_7

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz v12, :cond_7

    invoke-static {v11, v12}, Lcom/android/tools/r8/ir/optimize/m0;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_3

    :cond_7
    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    :goto_3
    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_8

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v12, :cond_8

    invoke-static {v11, v12}, Lcom/android/tools/r8/ir/optimize/m0;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_4

    :cond_8
    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    :goto_4
    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_9

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz v12, :cond_9

    invoke-static {v11, v12}, Lcom/android/tools/r8/ir/optimize/m0;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_5

    :cond_9
    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    :goto_5
    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v11, :cond_a

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v12, :cond_a

    invoke-static {v11, v12}, Lcom/android/tools/r8/ir/optimize/m0;->a(Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V

    goto :goto_6

    :cond_a
    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    :goto_6
    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_b

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v12, :cond_b

    invoke-static {v11, v12}, Lcom/android/tools/r8/ir/optimize/m0;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_7

    :cond_b
    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    :goto_7
    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_c

    iget-object v10, v10, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v10, :cond_c

    invoke-static {v11, v10}, Lcom/android/tools/r8/ir/optimize/m0;->a(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_8

    :cond_c
    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    :goto_8
    sget-boolean v10, Lcom/android/tools/r8/ir/optimize/m0;->k:Z

    if-nez v10, :cond_e

    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    if-nez v11, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_9
    if-nez v10, :cond_10

    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    if-nez v11, :cond_f

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_a
    if-nez v10, :cond_5

    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-nez v10, :cond_11

    goto/16 :goto_2

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->E1()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    instance-of v8, v5, Lcom/android/tools/r8/internal/bE;

    if-eqz v8, :cond_16

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    new-instance v8, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-direct {v8, v6, v5}, Lcom/android/tools/r8/ir/optimize/o0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_14

    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_15

    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/m0;->h:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_16
    instance-of v5, v5, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v5, :cond_13

    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_18

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v5, v9, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_19
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v5

    iget-object v6, v9, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v6, :cond_13

    iget-object v5, v5, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    move-object v4, v9

    :goto_c
    iput-object v4, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/s0;->e:Lcom/android/tools/r8/ir/optimize/n0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->C()Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v8, v4, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/ir/optimize/m0;

    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v6

    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v8, :cond_1d

    if-lez v6, :cond_1c

    goto :goto_e

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    :goto_e
    iget v8, v4, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    add-int/2addr v8, v6

    iput v8, v4, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    goto :goto_d

    :cond_1e
    iget-object v8, v6, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v9

    sub-int/2addr v8, v9

    :goto_f
    iget-object v9, v6, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1b

    iget-object v9, v6, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_22

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v3

    if-nez v8, :cond_21

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/qd0;->c(Ljava/lang/Object;)I

    iget-object v8, v4, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/ir/optimize/m0;

    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v6

    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v8, :cond_20

    if-lez v6, :cond_1f

    goto :goto_10

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    :goto_10
    iget v8, v4, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    add-int/2addr v8, v6

    iput v8, v4, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    goto :goto_d

    :cond_21
    invoke-virtual {v0, v8, v6}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_d

    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_23
    move-object v4, v7

    :cond_24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    :cond_25
    :goto_11
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->m1()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object v6

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->v2()I

    move-result v8

    if-ltz v8, :cond_26

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v8

    if-gez v8, :cond_27

    :cond_26
    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    :cond_27
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_11

    :cond_28
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v8

    if-eqz v8, :cond_29

    goto :goto_11

    :cond_29
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    iget-object v9, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    iget-object v10, v6, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    invoke-static {v10, v8, v9}, Lcom/android/tools/r8/ir/optimize/j0;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/ir/optimize/j0;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v9, v9, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz v9, :cond_2a

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/ir/optimize/p0;

    goto :goto_12

    :cond_2a
    move-object v9, v7

    :goto_12
    if-eqz v9, :cond_2b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v9, v10, v8}, Lcom/android/tools/r8/ir/optimize/p0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    iget-object v11, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v11, v11, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10, v8, v11}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v9, v5, v6}, Lcom/android/tools/r8/ir/optimize/p0;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_11

    :cond_2b
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance v10, Lcom/android/tools/r8/ir/optimize/q0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-direct {v10, p0, v6}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v9}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    iget-object v6, v9, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-nez v6, :cond_2c

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v9, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    :cond_2c
    iget-object v6, v9, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v8, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_2d
    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v8, :cond_2f

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v8

    if-eqz v8, :cond_2e

    goto :goto_13

    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2f
    :goto_13
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v6

    const v8, 0x7fffffff

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_30

    move v8, v9

    :cond_30
    iget-object v9, v6, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v11, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v10, v11}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v12

    sget-object v13, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v10

    if-eqz v10, :cond_31

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v10}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    :cond_31
    if-gez v8, :cond_32

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/internal/YV;)V

    goto :goto_14

    :cond_32
    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v10, v9, v8}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/internal/YV;I)V

    :goto_14
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    iget-object v10, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/android/tools/r8/ir/optimize/j0;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/ir/optimize/j0;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/ir/optimize/q0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-direct {v9, p0, v6}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v6}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    iget-object v10, v6, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-nez v10, :cond_33

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, v6, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    :cond_33
    iget-object v6, v6, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v8, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_34
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->E1()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object v8

    if-eqz v8, :cond_36

    iget-object v9, v8, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v8, v8, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v9, v8}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v8

    goto :goto_15

    :cond_35
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-eqz v9, :cond_36

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v8

    goto :goto_15

    :cond_36
    move-object v8, v7

    :goto_15
    if-eqz v8, :cond_51

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/g1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    const/16 v10, 0x40

    iget v9, v9, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v9, v10}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v9

    if-eqz v9, :cond_37

    goto/16 :goto_1d

    :cond_37
    instance-of v9, v6, Lcom/android/tools/r8/internal/bE;

    if-eqz v9, :cond_40

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v6

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v6}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    goto/16 :goto_11

    :cond_38
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/graph/l1;)V

    goto/16 :goto_11

    :cond_39
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/l1;

    invoke-direct {v10, v11, v9}, Lcom/android/tools/r8/ir/optimize/o0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_3a

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/ir/optimize/p0;

    goto :goto_16

    :cond_3a
    move-object v11, v7

    :goto_16
    if-eqz v11, :cond_3b

    goto :goto_17

    :cond_3b
    iget-object v9, v9, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v9, :cond_3c

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/tools/r8/ir/optimize/p0;

    goto :goto_17

    :cond_3c
    move-object v11, v7

    :goto_17
    if-eqz v11, :cond_3e

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v9

    if-eqz v9, :cond_3d

    instance-of v9, v8, Lcom/android/tools/r8/graph/F5;

    if-eqz v9, :cond_3d

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    check-cast v8, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    iget-boolean v8, v8, Lcom/android/tools/r8/shaking/q1;->m:Z

    if-eqz v8, :cond_25

    :cond_3d
    invoke-interface {v11, v5, v6}, Lcom/android/tools/r8/ir/optimize/p0;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_11

    :cond_3e
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    new-instance v11, Lcom/android/tools/r8/ir/optimize/q0;

    iget-object v12, v6, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v11, p0, v12}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v9, v10, v11}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/ir/optimize/o0;Lcom/android/tools/r8/ir/optimize/p0;)V

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v6

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v6}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    goto/16 :goto_11

    :cond_3f
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/graph/l1;)V

    goto/16 :goto_11

    :cond_40
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/rE;Lcom/android/tools/r8/graph/F0;)V

    goto/16 :goto_11

    :cond_41
    instance-of v9, v6, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v9, :cond_50

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/M2;)Z

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/zE;)V

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v6}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    goto/16 :goto_11

    :cond_42
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/l1;

    iget-object v6, v6, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-eqz v6, :cond_25

    invoke-virtual {v6, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_43
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/l1;

    iget-object v11, v9, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_44

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/ir/optimize/p0;

    goto :goto_18

    :cond_44
    move-object v11, v7

    :goto_18
    if-eqz v11, :cond_45

    goto :goto_19

    :cond_45
    iget-object v9, v9, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz v9, :cond_46

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/tools/r8/ir/optimize/p0;

    goto :goto_19

    :cond_46
    move-object v11, v7

    :goto_19
    if-eqz v11, :cond_47

    invoke-interface {v11, v5, v6}, Lcom/android/tools/r8/ir/optimize/p0;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_11

    :cond_47
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/zE;)V

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v9

    if-eqz v9, :cond_48

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v9}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    goto :goto_1a

    :cond_48
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/l1;

    iget-object v9, v9, Lcom/android/tools/r8/ir/optimize/m0;->i:Ljava/util/LinkedHashMap;

    if-eqz v9, :cond_49

    invoke-virtual {v9, v10}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    :goto_1a
    new-instance v9, Lcom/android/tools/r8/ir/optimize/q0;

    iget-object v10, v6, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v9, p0, v10}, Lcom/android/tools/r8/ir/optimize/q0;-><init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/internal/xw0;)V

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8, v10}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v10

    if-eqz v10, :cond_4b

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v10}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-nez v12, :cond_4a

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    :cond_4a
    iget-object v10, v10, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v11, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_4b
    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v10}, Lcom/android/tools/r8/ir/optimize/m0;->b()V

    sget-boolean v12, Lcom/android/tools/r8/ir/optimize/m0;->k:Z

    if-nez v12, :cond_4d

    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v12, :cond_4d

    invoke-virtual {v12, v11}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4c

    goto :goto_1b

    :cond_4c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4d
    :goto_1b
    iget-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-nez v12, :cond_4e

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, v10, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    :cond_4e
    iget-object v10, v10, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v11, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v9

    if-eqz v9, :cond_4f

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/g1;

    iget-object v9, v9, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v9

    if-eqz v9, :cond_4f

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Q30;)V

    :cond_4f
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/ir/optimize/s0;->b(Lcom/android/tools/r8/graph/M2;)V

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v8, v6, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    iput-object v7, v6, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    goto/16 :goto_11

    :cond_50
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/No0;Lcom/android/tools/r8/graph/F0;)V

    goto/16 :goto_11

    :cond_51
    :goto_1d
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    goto/16 :goto_11

    :cond_52
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v6

    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v8, :cond_54

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v8

    if-nez v8, :cond_53

    goto :goto_1e

    :cond_53
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_54
    :goto_1e
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/zE;)V

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    sget-boolean v10, Lcom/android/tools/r8/internal/sD;->l:Z

    if-nez v10, :cond_56

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v10

    if-eqz v10, :cond_55

    goto :goto_1f

    :cond_55
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_56
    :goto_1f
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v10

    iget-object v11, v6, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v11}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    if-nez v11, :cond_57

    goto :goto_20

    :cond_57
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/j;

    invoke-static {v11, v9, v10, v12}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v10

    if-eqz v10, :cond_58

    goto :goto_20

    :cond_58
    iget-object v10, v6, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v10, v8, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z

    move-result v8

    if-eqz v8, :cond_59

    :goto_20
    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    :cond_59
    iget-object v8, v6, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_5a

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iput-object v6, v8, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    goto/16 :goto_11

    :cond_5a
    invoke-interface {v5}, Lcom/android/tools/r8/internal/EE;->i()V

    iput-boolean v3, p0, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    goto/16 :goto_11

    :cond_5b
    instance-of v8, v6, Lcom/android/tools/r8/internal/WX;

    if-eqz v8, :cond_5c

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->X1()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    goto/16 :goto_11

    :cond_5c
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/internal/QJ;)V

    goto/16 :goto_11

    :cond_5d
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v6

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v8

    if-eqz v8, :cond_5e

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/M2;)Z

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/ir/optimize/s0;->b(Lcom/android/tools/r8/graph/M2;)V

    :cond_5e
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    goto/16 :goto_11

    :cond_5f
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v8

    if-nez v8, :cond_66

    instance-of v8, v6, Lcom/android/tools/r8/internal/OJ;

    if-eqz v8, :cond_60

    goto/16 :goto_22

    :cond_60
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/M2;)Z

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/ir/optimize/s0;->b(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6, v8, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    goto/16 :goto_11

    :cond_61
    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v8, :cond_63

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6, v9, v10}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v9

    if-nez v9, :cond_62

    goto :goto_21

    :cond_62
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_63
    :goto_21
    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/s0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v9

    if-eqz v9, :cond_64

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v9}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    iget-object v9, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    iget-object v10, v9, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    iput-object v7, v9, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    :cond_64
    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/P3;

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/C4;

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/jh;

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/mh;

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/nh;

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/Pf0;

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/uq;

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/mE;

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/XJ;

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/bY;

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/oZ;

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->n2()Z

    move-result v8

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/rc0;

    if-nez v8, :cond_25

    instance-of v8, v6, Lcom/android/tools/r8/internal/So0;

    if-eqz v8, :cond_65

    goto/16 :goto_11

    :cond_65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected instruction of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_66
    :goto_22
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->a()V

    goto/16 :goto_11

    :cond_67
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v5

    if-ne v5, v3, :cond_68

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_68

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    goto :goto_23

    :cond_68
    move-object v4, v2

    move-object v2, v7

    :goto_23
    if-nez v2, :cond_24

    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/s0;->j:Z

    if-nez v2, :cond_6a

    if-eqz v4, :cond_69

    goto :goto_24

    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6a
    :goto_24
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->e:Lcom/android/tools/r8/ir/optimize/n0;

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/s0;->f:Lcom/android/tools/r8/ir/optimize/m0;

    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v6, :cond_6c

    iget-object v8, v2, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    goto :goto_25

    :cond_6b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_25
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->a:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_6d

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    :cond_6d
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v8, :cond_6e

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    :cond_6e
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->b:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_6f

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    :cond_6f
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->c:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_70

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    :cond_70
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->d:Ljava/util/LinkedHashSet;

    if-eqz v8, :cond_71

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    :cond_71
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->e:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_72

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    :cond_72
    iget-object v8, v5, Lcom/android/tools/r8/ir/optimize/m0;->f:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    goto/16 :goto_1

    :cond_73
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->D()Z

    move-result v8

    if-nez v8, :cond_74

    invoke-virtual {v5}, Lcom/android/tools/r8/ir/optimize/m0;->a()V

    iput-object v7, v5, Lcom/android/tools/r8/ir/optimize/m0;->g:Lcom/android/tools/r8/internal/sD;

    :cond_74
    invoke-virtual {v5}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v7

    if-nez v6, :cond_76

    iget v6, v5, Lcom/android/tools/r8/ir/optimize/m0;->j:I

    if-gt v7, v6, :cond_75

    goto :goto_26

    :cond_75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_76
    :goto_26
    iget v6, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    sub-int/2addr v7, v6

    if-gtz v7, :cond_77

    goto/16 :goto_2b

    :cond_77
    iget-object v6, v2, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7b

    if-lez v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v10

    sget-boolean v11, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v11, :cond_79

    if-lez v10, :cond_78

    goto :goto_28

    :cond_78
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_79
    :goto_28
    if-gt v10, v7, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    iget v8, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    add-int/2addr v8, v10

    iput v8, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    sub-int/2addr v7, v10

    goto :goto_27

    :cond_7a
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/ir/optimize/m0;->a(I)V

    iget v8, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    add-int/2addr v8, v7

    iput v8, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    move v7, v9

    goto :goto_27

    :cond_7b
    if-lez v7, :cond_7c

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/ir/optimize/m0;->a(I)V

    :cond_7c
    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v6, :cond_81

    iget v6, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    iget-object v7, v2, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/ir/optimize/m0;

    invoke-virtual {v8}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v8

    sget-boolean v10, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v10, :cond_7e

    if-lez v8, :cond_7d

    goto :goto_2a

    :cond_7d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7e
    :goto_2a
    add-int/2addr v9, v8

    goto :goto_29

    :cond_7f
    rsub-int v7, v9, 0x2710

    if-ne v6, v7, :cond_80

    goto :goto_2b

    :cond_80
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_81
    :goto_2b
    iget-object v6, v2, Lcom/android/tools/r8/ir/optimize/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    invoke-virtual {v5}, Lcom/android/tools/r8/ir/optimize/m0;->c()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Lcom/android/tools/r8/ir/optimize/n0;->b:I

    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/n0;->c:Z

    if-nez v2, :cond_2

    if-ltz v4, :cond_82

    goto/16 :goto_1

    :cond_82
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_83
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/s0;->b()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    new-instance v2, Lv/q1;

    invoke-direct {v2, v0}, Lv/q1;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lv/r1;

    invoke-direct {v1, p0}, Lv/r1;-><init>(Lcom/android/tools/r8/ir/optimize/s0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->d:Lcom/android/tools/r8/ir/optimize/a;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s0;->i:Lcom/android/tools/r8/ir/optimize/t0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s0;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    iget-boolean v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_84
    iget-boolean v0, p0, Lcom/android/tools/r8/ir/optimize/s0;->h:Z

    if-eqz v0, :cond_85

    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_85
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method
