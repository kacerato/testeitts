.class public abstract Lcom/android/tools/r8/synthesis/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/synthesis/S$b;

.field public final b:Lcom/android/tools/r8/synthesis/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/synthesis/t;->c:Z

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

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 34
    invoke-interface {p0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    if-ne p4, p0, :cond_0

    return-object p3

    :cond_0
    if-ne p4, p1, :cond_1

    return-object p3

    :cond_1
    if-ne p4, p2, :cond_2

    return-object p3

    :cond_2
    return-object p4
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/synthesis/t;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I
.end method

.method public final a(Lcom/android/tools/r8/synthesis/t;ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/S$b;->a(Lcom/android/tools/r8/synthesis/S$b;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    iget-object v2, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 11
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/synthesis/l;)I

    move-result p2

    if-eqz p2, :cond_2

    return p2

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    .line 14
    iget-object v2, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    if-eq p2, v2, :cond_c

    .line 16
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-boolean p1, Lcom/android/tools/r8/internal/Zd;->c:Z

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-ne p2, v2, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    .line 20
    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, -0x1

    goto :goto_2

    .line 21
    :cond_9
    iget-object p1, p5, Lcom/android/tools/r8/internal/Zd;->b:Ljava/util/IdentityHashMap;

    .line 22
    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p5, Lcom/android/tools/r8/internal/Zd;->b:Ljava/util/IdentityHashMap;

    .line 23
    invoke-virtual {p2, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 24
    :goto_2
    sget-boolean p2, Lcom/android/tools/r8/synthesis/t;->c:Z

    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_3
    return p1

    .line 25
    :cond_c
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 26
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 27
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 28
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p5

    if-eqz p5, :cond_d

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p5

    if-nez p5, :cond_e

    .line 29
    :cond_d
    new-instance p5, Lcom/android/tools/r8/synthesis/i1;

    invoke-direct {p5, v1, p2, p3, v0}, Lcom/android/tools/r8/synthesis/i1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    goto :goto_4

    :cond_e
    const/4 p5, 0x0

    :goto_4
    if-nez p5, :cond_f

    .line 30
    new-instance p5, Lcom/android/tools/r8/synthesis/j1;

    invoke-direct {p5, v1, v0}, Lcom/android/tools/r8/synthesis/j1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 31
    :cond_f
    new-instance p2, Lcom/android/tools/r8/synthesis/k1;

    invoke-direct {p2, p4}, Lcom/android/tools/r8/synthesis/k1;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p5, p2}, Lcom/android/tools/r8/synthesis/t;->a(Lcom/android/tools/r8/synthesis/t;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/tools/r8/synthesis/s;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V
.end method

.method public b()Lcom/android/tools/r8/synthesis/O;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/synthesis/Z;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d()Lcom/android/tools/r8/graph/E0;
.end method

.method public e()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/synthesis/O;

    return v0
.end method

.method public abstract f()Z
.end method

.method public abstract g()Lcom/android/tools/r8/synthesis/a0;
.end method
