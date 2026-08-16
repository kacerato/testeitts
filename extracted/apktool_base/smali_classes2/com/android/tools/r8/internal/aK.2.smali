.class public final Lcom/android/tools/r8/internal/aK;
.super Lcom/android/tools/r8/graph/f6;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public e:Lcom/android/tools/r8/internal/ZJ;

.field public f:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/f6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J5;)V

    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->g:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/ZJ;->b:Lcom/android/tools/r8/internal/ZJ;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ZJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ZJ;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    sget-object v1, Lcom/android/tools/r8/internal/ZJ;->g:Lcom/android/tools/r8/internal/ZJ;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->f:Lcom/android/tools/r8/graph/A2;

    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/aK;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aK;->f:Lcom/android/tools/r8/graph/A2;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->f:Lcom/android/tools/r8/graph/A2;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/ZJ;->d:Lcom/android/tools/r8/internal/ZJ;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ZJ;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 6
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/ZJ;->e:Lcom/android/tools/r8/internal/ZJ;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ZJ;)V

    return-void

    .line 10
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/ZJ;->c:Lcom/android/tools/r8/internal/ZJ;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/aK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ZJ;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void
.end method
