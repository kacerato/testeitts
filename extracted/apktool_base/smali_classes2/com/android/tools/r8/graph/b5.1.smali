.class public final Lcom/android/tools/r8/graph/b5;
.super Lcom/android/tools/r8/graph/a5;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/a5;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/b5;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p4

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/Kc;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/tools/r8/graph/Kc;-><init>(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)V

    .line 5
    invoke-interface {p4, v0}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 10
    invoke-static {p4, p1, p2, p3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->b(Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 13
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 14
    invoke-static {v0, p5}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p5

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/b5;->d:Lcom/android/tools/r8/graph/E0;

    .line 16
    invoke-static {p5, v0, p3, p1, p4}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/U6;->b(Z)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/graph/b5;->d:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/U6;->a(Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z
    .locals 9

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a5;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 8
    new-instance v1, Lcom/android/tools/r8/graph/Ic;

    invoke-direct {v1, p2, v0, p1, p3}, Lcom/android/tools/r8/graph/Ic;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)V

    new-instance v8, Lcom/android/tools/r8/graph/Jc;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/graph/Jc;-><init>(Lcom/android/tools/r8/graph/b5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)V

    invoke-virtual {p0, v1, v8}, Lcom/android/tools/r8/graph/a5;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a5;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/b5;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/graph/b5;->e:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b5;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final z()Z
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/U6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    new-instance v1, Lcom/android/tools/r8/graph/Gc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Gc;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/Hc;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/graph/Hc;-><init>(Lcom/android/tools/r8/graph/b5;Lcom/android/tools/r8/internal/U6;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/graph/a5;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    return v0
.end method
