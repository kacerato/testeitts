.class public final Lcom/android/tools/r8/internal/d80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j9;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/yI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/yI;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yI;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/d80;->c:Lcom/android/tools/r8/internal/yI;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/eu;->b:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 7

    .line 39
    new-instance p5, Lcom/android/tools/r8/internal/bu;

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v6, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    const/4 v5, 0x1

    move-object v0, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/bu;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Ljava/util/LinkedHashMap;ILcom/android/tools/r8/graph/y;)V

    .line 41
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/bu;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/gu;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v1, Lcom/android/tools/r8/internal/h81;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/tools/r8/internal/h81;-><init>(Lcom/android/tools/r8/internal/d80;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/gu;)V

    .line 45
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/d80;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/synthesis/W;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/o9;)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/n81;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/n81;-><init>()V

    iget-object v4, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/o81;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/o81;-><init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;)V

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/p81;

    invoke-direct {v6, p3}, Lcom/android/tools/r8/internal/p81;-><init>(Lcom/android/tools/r8/internal/gu;)V

    move-object v3, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/gu;)V
    .locals 7

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/d80;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/d80;->c:Lcom/android/tools/r8/internal/yI;

    .line 18
    iget-object v0, p2, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    .line 19
    invoke-virtual {p1, p3, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/d80;->c:Lcom/android/tools/r8/internal/yI;

    .line 21
    iget-object p3, p2, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/yI;->d:Z

    if-nez v0, :cond_3

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    :goto_1
    iget-object v5, p3, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/d80;->c:Lcom/android/tools/r8/internal/yI;

    .line 28
    iget-object p3, p2, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    .line 29
    sget-object v0, Lcom/android/tools/r8/internal/BI;->c:Lcom/android/tools/r8/internal/BI;

    .line 30
    invoke-virtual {p1, p3, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 31
    invoke-virtual {p0, p2, p5}, Lcom/android/tools/r8/internal/d80;->a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/gu;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p1

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 34
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p2, 0x1009

    const/4 p3, 0x0

    .line 35
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 36
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 37
    new-instance p2, Lcom/android/tools/r8/internal/k81;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/k81;-><init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Ljava/util/LinkedHashMap;)V

    .line 38
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/synthesis/N;)V
    .locals 6

    .line 3
    iget-object p2, p2, Lcom/android/tools/r8/internal/eu;->b:Ljava/util/IdentityHashMap;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/internal/cu;

    .line 5
    iget-object v3, p3, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p5

    move-object v5, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/d80;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/internal/gu;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->x0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot emulate interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because the interface is missing."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/internal/o9;)V
    .locals 1

    .line 50
    sget-boolean p1, Lcom/android/tools/r8/internal/d80;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    .line 51
    iget-object p1, p1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 52
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/android/tools/r8/internal/i81;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/i81;-><init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/internal/o9;)V

    .line 59
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eu;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 63
    sget-boolean v0, Lcom/android/tools/r8/internal/d80;->d:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/d80;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    iget-object v0, p3, Lcom/android/tools/r8/internal/eu;->b:Ljava/util/IdentityHashMap;

    .line 66
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/tools/r8/internal/d80;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/o9;)V

    :cond_3
    return-void

    .line 68
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/d80;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 15
    new-instance v6, Lcom/android/tools/r8/internal/j81;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/j81;-><init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/internal/gu;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public final a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)V
    .locals 1

    .line 46
    iget-object p2, p0, Lcom/android/tools/r8/internal/d80;->c:Lcom/android/tools/r8/internal/yI;

    .line 47
    sget-object v0, Lcom/android/tools/r8/internal/BI;->c:Lcom/android/tools/r8/internal/BI;

    .line 48
    invoke-virtual {p2, p4, v0}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 49
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "$emulatedInterface"

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/synthesis/W;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/l81;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/l81;-><init>(Lcom/android/tools/r8/internal/eu;)V

    new-instance v1, Lcom/android/tools/r8/internal/m81;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/android/tools/r8/internal/m81;-><init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method
