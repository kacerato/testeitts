.class public abstract Lcom/android/tools/r8/internal/A70;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/g7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/g7;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Z7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Z7;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/cc;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/cc;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/jt;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/jt;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Dx;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Dx;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/vI;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vI;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/rU;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/rU;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Ql0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ql0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    .line 9
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A70;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object p7

    invoke-virtual {p2, p7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/A70;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)V

    return-object p3

    .line 11
    :cond_0
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A70;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/android/tools/r8/internal/A70;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_1
    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)V
    .locals 6

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 24
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 26
    sget-object v5, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 27
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    .line 28
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/A70;->a(Lcom/android/tools/r8/internal/F1;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/F1;->J()Lcom/android/tools/r8/internal/lm0;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lm0;->j0()J

    move-result-wide v2

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    .line 35
    invoke-virtual {v0, v1, p1, p3}, Lcom/android/tools/r8/internal/Im0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 36
    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 37
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void

    .line 38
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    new-instance v3, Lcom/android/tools/r8/internal/sy0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/sy0;-><init>(Lcom/android/tools/r8/internal/A70;)V

    .line 39
    invoke-virtual {p3, v3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p3

    .line 41
    sget-boolean v1, Lcom/android/tools/r8/internal/A70;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 42
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 43
    invoke-virtual {v2, p3}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 44
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/internal/A70;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    :cond_5
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 3

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ry0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/ry0;-><init>(Lcom/android/tools/r8/internal/A70;)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/internal/A70;->c:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 21
    invoke-virtual {p3, p1, p4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 22
    invoke-interface {p2}, Lcom/android/tools/r8/internal/EE;->i()V

    :cond_2
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/internal/F1;)Z
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A70;->c()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method

.method public abstract b()Lcom/android/tools/r8/graph/A2;
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A70;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method

.method public abstract c()Lcom/android/tools/r8/graph/A2;
.end method
