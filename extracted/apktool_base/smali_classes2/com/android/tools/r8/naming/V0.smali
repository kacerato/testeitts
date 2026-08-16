.class public final Lcom/android/tools/r8/naming/V0;
.super Lcom/android/tools/r8/naming/q0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/naming/r0;

.field public final e:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/naming/r0;Ljava/util/IdentityHashMap;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/q0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    .line 7
    iput-object p3, p0, Lcom/android/tools/r8/naming/V0;->e:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/tools/r8/naming/q0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/naming/V0;->e:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/naming/r0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/x2;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/x2;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 7
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->k6:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v2, v3, v1}, Lcom/android/tools/r8/naming/V0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;)V

    .line 10
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->j6:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v2, v0, v1}, Lcom/android/tools/r8/naming/V0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;)V

    .line 11
    new-instance v0, Lcom/android/tools/r8/naming/V0;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/V0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/naming/v2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/v2;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;)V
    .locals 5

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 16
    sget-boolean v1, Lcom/android/tools/r8/naming/V0;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 17
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 20
    iget-object p2, p2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    .line 22
    iget-object v2, v2, Lcom/android/tools/r8/internal/WR;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v4, "L"

    if-eqz v2, :cond_2

    .line 24
    invoke-static {p2, v3, v3}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    .line 28
    iget-object v2, v2, Lcom/android/tools/r8/internal/WR;->b:Ljava/lang/String;

    .line 29
    invoke-static {p2, v3, v3}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 32
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/naming/w2;

    invoke-direct {p1, p3, v1, p2, v0}, Lcom/android/tools/r8/naming/w2;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)V

    .line 35
    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 36
    iget-object v0, p4, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 37
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 38
    invoke-interface {p0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/e4;)Z
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/naming/V0;->f:Z

    if-nez v0, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    .line 41
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->k6:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->j6:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_4

    return-object v0

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/naming/V0;->f:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-nez v0, :cond_1

    .line 47
    iget-object v2, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    .line 48
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->k6:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->j6:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    if-nez v0, :cond_4

    goto :goto_2

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/r0;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/android/tools/r8/naming/r0;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/r0;->c()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/naming/V0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, p0, Lcom/android/tools/r8/naming/V0;->e:Ljava/util/IdentityHashMap;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/naming/V0;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/naming/r0;Ljava/util/IdentityHashMap;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/V0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method
