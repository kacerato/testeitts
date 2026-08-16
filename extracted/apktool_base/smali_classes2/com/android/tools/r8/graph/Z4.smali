.class public abstract Lcom/android/tools/r8/graph/Z4;
.super Lcom/android/tools/r8/graph/J4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/Z4$b;,
        Lcom/android/tools/r8/graph/Z4$a;,
        Lcom/android/tools/r8/graph/Z4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/J4<",
        "Lcom/android/tools/r8/graph/j1;",
        "Lcom/android/tools/r8/graph/A2;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/J4;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/Z4$c;
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/k5;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/k5;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/j5;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/j5;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    .line 11
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/Z4;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/l5;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/l5;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/D4;
.end method

.method public a()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/H2;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/D5;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/graph/f4;",
            "Lcom/android/tools/r8/graph/B5;",
            ")",
            "Lcom/android/tools/r8/graph/H4;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/H2;",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;",
            "Lcom/android/tools/r8/graph/H2;",
            "Lcom/android/tools/r8/graph/H2;",
            ")",
            "Lcom/android/tools/r8/graph/H4;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/I4;
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/Z4;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/E0;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/E0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/j;",
            ")Z"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/H2;",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;)",
            "Lcom/android/tools/r8/graph/H4;"
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/ic;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/ic;-><init>(Lcom/android/tools/r8/shaking/i;)V

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/D5;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/internal/t40;"
        }
    .end annotation
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/E0;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/E0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/graph/j;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/D5;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/graph/H0;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/graph/Z4;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;
.end method

.method public d()Lcom/android/tools/r8/graph/E0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/graph/Z4;
    .locals 0

    return-object p0
.end method

.method public g()Lcom/android/tools/r8/graph/Z5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/android/tools/r8/graph/Z4$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/graph/Z4$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/graph/j5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/android/tools/r8/graph/l5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/android/tools/r8/graph/Z4$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/graph/Z4$c<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/android/tools/r8/graph/H0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lcom/android/tools/r8/graph/j1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Lcom/android/tools/r8/graph/H5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/graph/j1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract x()Z
.end method
