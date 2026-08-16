.class public abstract Lcom/android/tools/r8/internal/xt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;
    .locals 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v0, p1, Lcom/android/tools/r8/internal/z7;

    if-eqz v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    return-object p0

    .line 11
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_1

    .line 12
    sget-object p0, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    return-object p0

    .line 13
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/xs0;

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_8

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

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

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 17
    iget-object v1, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_6
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    new-instance p0, Lcom/android/tools/r8/internal/kv;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    return-object p0

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 22
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/yt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/yt;

    move-result-object p0

    return-object p0

    .line 23
    :cond_8
    sget-boolean p2, Lcom/android/tools/r8/internal/xt;->a:Z

    if-nez p2, :cond_a

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez p2, :cond_a

    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_a
    :goto_2
    new-instance p0, Lcom/android/tools/r8/internal/zt;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    return-object p0
.end method

.method public static m()Lcom/android/tools/r8/internal/zt;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zt;->e:Lcom/android/tools/r8/internal/zt;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/xt;
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;
    .locals 1

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 31
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2

    .line 32
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object p0

    .line 36
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_8

    .line 37
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_1

    .line 38
    :cond_7
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p2

    goto :goto_2

    .line 39
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p2

    .line 40
    :cond_a
    :goto_2
    sget-boolean p3, Lcom/android/tools/r8/internal/xt;->a:Z

    if-nez p3, :cond_c

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_3
    if-nez p3, :cond_e

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1

    .line 43
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;
.end method

.method public a()Lcom/android/tools/r8/internal/zt;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/de;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Lcom/android/tools/r8/internal/de;
.end method

.method public abstract d()Lcom/android/tools/r8/internal/p10;
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->c()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
