.class public abstract Lcom/android/tools/r8/internal/xg;
.super Lcom/android/tools/r8/internal/yg;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/yg;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/xg;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1, v1, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    return-object p2

    .line 9
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 14
    sget-object p0, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    return-object p0

    .line 15
    :cond_6
    sget-object p0, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    return-object p0

    .line 16
    :cond_7
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    .line 18
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract A()Lcom/android/tools/r8/internal/p10;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xg;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
.end method

.method public final g()Lcom/android/tools/r8/internal/xg;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract z()Lcom/android/tools/r8/internal/xt;
.end method
