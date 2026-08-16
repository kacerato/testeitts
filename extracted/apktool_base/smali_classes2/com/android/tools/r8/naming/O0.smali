.class public final Lcom/android/tools/r8/naming/O0;
.super Lcom/android/tools/r8/naming/q0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/naming/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/naming/r0;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/q0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/tools/r8/naming/q0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_0

    .line 7
    instance-of v0, v0, Lcom/android/tools/r8/internal/ob0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/naming/O0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/O0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_0

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/naming/O0;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    .line 12
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_0

    .line 13
    iget-object v0, v1, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/r0;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/android/tools/r8/naming/r0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/r0;->c()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/naming/O0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/naming/O0;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/naming/r0;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/O0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method
