.class public final Lcom/android/tools/r8/internal/e70;
.super Lcom/android/tools/r8/naming/q0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/internal/WR;

.field public final e:Lcom/android/tools/r8/naming/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/naming/q0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_1

    .line 6
    instance-of v0, v0, Lcom/android/tools/r8/internal/ob0;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/e70;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/e70;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/internal/e70;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    return-object p1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 25
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    return-object p1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/internal/e70;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/e70;->b(Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/s91;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/s91;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zm;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/naming/r0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->e:Lcom/android/tools/r8/naming/r0;

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/e70;->d:Lcom/android/tools/r8/internal/WR;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
