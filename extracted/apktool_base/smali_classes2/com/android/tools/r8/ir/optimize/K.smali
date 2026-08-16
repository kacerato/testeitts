.class public final Lcom/android/tools/r8/ir/optimize/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/Y;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/K;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/K;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/K;->b:Ljava/lang/Object;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/optimize/T;

    if-eqz v0, :cond_0

    .line 7
    iget-object p1, v0, Lcom/android/tools/r8/ir/optimize/T;->a:Lcom/android/tools/r8/graph/H5;

    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/de;
    .locals 2

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/K;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/K;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/optimize/T;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/T;->b:Lcom/android/tools/r8/graph/H2;

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/S;
    .locals 2

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/K;->b:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/optimize/T;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/T;->a:Lcom/android/tools/r8/graph/H5;

    .line 11
    iget-object p6, p0, Lcom/android/tools/r8/ir/optimize/K;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result p7

    if-eqz p7, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    .line 14
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p8

    invoke-virtual {p8}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p8

    if-nez p8, :cond_1

    .line 15
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p4

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p7

    invoke-interface {p0, p2, p7}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/de;

    move-result-object p7

    .line 17
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p8

    invoke-interface {p0}, Lcom/android/tools/r8/ir/optimize/Y;->b()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p8

    invoke-virtual {p8}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p8

    .line 18
    invoke-interface {p0}, Lcom/android/tools/r8/ir/optimize/Y;->b()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {p7, p8, v0}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p7

    if-nez p7, :cond_2

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p4

    goto :goto_0

    :cond_2
    move-object p4, p3

    :goto_0
    if-eqz p4, :cond_3

    .line 20
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p7

    check-cast p7, Lcom/android/tools/r8/graph/j;

    invoke-static {p4, p5, p6, p7}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p5

    .line 21
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p5

    if-eqz p5, :cond_4

    const/4 p4, 0x0

    move-object p5, p3

    goto :goto_1

    :cond_3
    move-object p4, p3

    :cond_4
    const/4 p5, 0x1

    move v1, p5

    move-object p5, p4

    move p4, v1

    :goto_1
    if-nez p4, :cond_5

    return-object p3

    .line 22
    :cond_5
    new-instance p4, Lcom/android/tools/r8/ir/optimize/Q;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/Q;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/NJ;Lcom/android/tools/r8/ir/optimize/U;)V

    if-eqz p5, :cond_6

    .line 23
    iput-object p5, p4, Lcom/android/tools/r8/ir/optimize/Q;->f:Lcom/android/tools/r8/graph/H2;

    :cond_6
    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/graph/y;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/K;->a:Lcom/android/tools/r8/graph/y;

    return-object v0
.end method
