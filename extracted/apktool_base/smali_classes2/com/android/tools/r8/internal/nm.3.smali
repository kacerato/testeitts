.class public final Lcom/android/tools/r8/internal/nm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nm;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/nC;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    const-string v1, "Landroidx/navigation/NavType;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/kC;

    const/4 v3, 0x4

    .line 6
    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 7
    const-string v3, "Landroidx/navigation/NavType$Companion;"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 8
    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 9
    const-string v5, "fromArgType"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is present but not the method "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which suggests some unsupported set-up where androidx is pre-shrunk without keeping the method "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 14
    sget-object p0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/yn1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yn1;-><init>()V

    .line 16
    invoke-virtual {v2, v0, p0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->W:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->W:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    .line 47
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/android/tools/r8/internal/Cn1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Cn1;-><init>()V

    .line 50
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p3

    iget-object v3, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/Dn1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/tools/r8/internal/Dn1;-><init>(Lcom/android/tools/r8/internal/nm;Lcom/android/tools/r8/graph/A2;Ljava/util/function/BiFunction;)V

    .line 51
    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 52
    invoke-interface {p2, p1, p4}, Lcom/android/tools/r8/internal/cm;->x(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/i0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/zn1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zn1;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/nm;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/An1;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/An1;-><init>(Lcom/android/tools/r8/internal/nm;Lcom/android/tools/r8/internal/W9;)V

    .line 27
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 29
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1, p6, p8, p7}, Lcom/android/tools/r8/internal/nm;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 33
    sget-boolean p2, Lcom/android/tools/r8/internal/nm;->d:Z

    if-nez p2, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 34
    iget-object p2, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_3
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    const/16 p3, 0xb8

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/nm;->b:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 40
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    .line 41
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 42
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 43
    new-instance p1, Lcom/android/tools/r8/internal/Bn1;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Bn1;-><init>(Lcom/android/tools/r8/internal/nm;Ljava/util/function/BiFunction;)V

    .line 44
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method
