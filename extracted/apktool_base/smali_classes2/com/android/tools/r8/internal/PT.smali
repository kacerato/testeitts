.class public final Lcom/android/tools/r8/internal/PT;
.super Lcom/android/tools/r8/internal/Ru;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:Lcom/android/tools/r8/internal/mu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/tools/r8/internal/Ru;-><init>(Lcom/android/tools/r8/graph/H2;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/PT;->c:Lcom/android/tools/r8/internal/mu;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->h:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/M;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 16
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 18
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 19
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 20
    iput-object p1, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 21
    sget-object p0, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    .line 22
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;
    .locals 10

    .line 50
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 52
    new-instance v4, Lcom/android/tools/r8/internal/ZQ0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ZQ0;-><init>()V

    .line 53
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ru;->a:Lcom/android/tools/r8/graph/H2;

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/aR0;

    invoke-direct {v8, p1, p4}, Lcom/android/tools/r8/internal/aR0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/M;)V

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v9

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    .line 57
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/J5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 24
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/XQ0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/internal/XQ0;-><init>(Lcom/android/tools/r8/internal/PT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)V

    .line 27
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ru;->a:Lcom/android/tools/r8/graph/H2;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/PT;->d:Z

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v0, p2, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    if-eq p1, v0, :cond_2

    iget-object p2, p2, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 6

    .line 28
    new-instance p3, Lcom/android/tools/r8/internal/Hu;

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/android/tools/r8/internal/PT;->c:Lcom/android/tools/r8/internal/mu;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v4, p2

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F1;)V

    .line 32
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Hu;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 4

    .line 37
    new-instance p3, Lcom/android/tools/r8/internal/Ju;

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ru;->a:Lcom/android/tools/r8/graph/H2;

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/PT;->c:Lcom/android/tools/r8/internal/mu;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    .line 41
    sget-boolean v3, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez v3, :cond_1

    .line 42
    iget-object v3, v2, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    .line 43
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_1
    :goto_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    .line 45
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/qu;

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qu;->c()Lcom/android/tools/r8/internal/ru;

    move-result-object p2

    invoke-direct {p3, p1, v0, v1, p2}, Lcom/android/tools/r8/internal/Ju;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ru;)V

    .line 47
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ju;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 6

    .line 33
    new-instance p4, Lcom/android/tools/r8/internal/Hu;

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/PT;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/android/tools/r8/internal/PT;->c:Lcom/android/tools/r8/internal/mu;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v4, p2, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    move-object v0, p4

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F1;)V

    .line 36
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Hu;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PT;->c:Lcom/android/tools/r8/internal/mu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    new-instance v1, Lcom/android/tools/r8/internal/WQ0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/WQ0;-><init>(Lcom/android/tools/r8/internal/PT;Lcom/android/tools/r8/graph/y;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/PT;->c:Lcom/android/tools/r8/internal/mu;

    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PT;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PT;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/qu;)V
    .locals 0

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/qu;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/H5;

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/G1;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/Om0;

    move-result-object v1

    const-string v2, "stringValueOf"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/VQ0;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/tools/r8/internal/VQ0;-><init>(Lcom/android/tools/r8/internal/PT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/F1;)V

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/YQ0;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/tools/r8/internal/YQ0;-><init>(Lcom/android/tools/r8/internal/PT;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method
