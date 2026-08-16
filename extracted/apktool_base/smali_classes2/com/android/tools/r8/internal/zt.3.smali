.class public Lcom/android/tools/r8/internal/zt;
.super Lcom/android/tools/r8/internal/xt;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/zt;

.field public static final d:Lcom/android/tools/r8/internal/zt;

.field public static final e:Lcom/android/tools/r8/internal/zt;

.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/pu0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/zt;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    sput-object v0, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    new-instance v0, Lcom/android/tools/r8/internal/zt;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    sput-object v0, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    new-instance v0, Lcom/android/tools/r8/internal/zt;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    sput-object v0, Lcom/android/tools/r8/internal/zt;->e:Lcom/android/tools/r8/internal/zt;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/pu0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xt;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/zt;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/pu0;",
            ")",
            "Lcom/android/tools/r8/internal/zt;"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/pu0;",
            "Lcom/android/tools/r8/internal/de;",
            ")",
            "Lcom/android/tools/r8/internal/zt;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    return-object p0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_1

    .line 7
    sget-object p0, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    return-object p0

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/xs0;

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_8

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/zt;->f:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_0
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 12
    iget-object v1, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14
    :cond_6
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    new-instance p0, Lcom/android/tools/r8/internal/kv;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    return-object p0

    .line 16
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 17
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/yt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/yt;

    move-result-object p0

    return-object p0

    .line 18
    :cond_8
    sget-boolean p2, Lcom/android/tools/r8/internal/zt;->f:Z

    if-nez p2, :cond_a

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez p2, :cond_a

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :cond_a
    :goto_2
    new-instance p0, Lcom/android/tools/r8/internal/zt;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/xt;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, p3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 60
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 62
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/zt;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/zt;
    .locals 3

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/de;->d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p2

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/de;->d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p2

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 46
    invoke-virtual {v1, p2, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    iget-object p2, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 48
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/de;->d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p2

    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    iget-object v1, v1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 51
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/de;->d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p2, 0x0

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object p0

    .line 54
    :cond_6
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/tools/r8/internal/de;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;
    .locals 2

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/zt;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne v1, p1, :cond_3

    :goto_1
    return-object p0

    .line 19
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/zt;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    return-object v1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z
    .locals 4

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/zt;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/tools/r8/internal/pu0;->c(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public c()Lcom/android/tools/r8/internal/de;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/p10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/yt;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/zt;

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/z7;

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->c()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/Zd0;

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/xs0;

    return v0
.end method

.method public n()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BottomDynamicType"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NotNullDynamicType"

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NullDynamicType"

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UnknownDynamicType"

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicTypeWithUpperBound("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
