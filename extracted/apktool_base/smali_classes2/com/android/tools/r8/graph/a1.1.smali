.class public Lcom/android/tools/r8/graph/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/V0;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/android/tools/r8/graph/A2;

.field public d:Z

.field public e:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/graph/a1;->a:I

    iput p1, p0, Lcom/android/tools/r8/graph/a1;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/graph/a1;->c:Lcom/android/tools/r8/graph/A2;

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/a1;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/android/tools/r8/graph/a1;->b:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/N0;)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/android/tools/r8/graph/a1;->b:I

    iget p1, p1, Lcom/android/tools/r8/graph/N0;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/graph/a1;->b:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O0$a;)V
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/a1;->f:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/tools/r8/graph/O0$a;->d:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/graph/a1;->a:I

    iget p1, p1, Lcom/android/tools/r8/graph/O0$a;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/graph/a1;->a:I

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/O0$b;)V
    .locals 2

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/graph/a1;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O0$b;->q0()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/graph/a1;->a:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O0$b;->q0()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/graph/a1;->a:I

    .line 21
    iget v0, p0, Lcom/android/tools/r8/graph/a1;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O0$b;->p0()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/graph/a1;->b:I

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/O0$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/O0$d;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/P0;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/Q0;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/R0;)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/S0;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/graph/a1;->f:Z

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/graph/a1;->c:Lcom/android/tools/r8/graph/A2;

    .line 16
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/B60;->f:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/a1;->d:Z

    .line 18
    iput-object p1, p0, Lcom/android/tools/r8/graph/a1;->e:Lcom/android/tools/r8/internal/B60;

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/T0;)V
    .locals 0

    .line 6
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/a1;->a:I

    return v0
.end method

.method public final c()Lcom/android/tools/r8/internal/B60;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/a1;->e:Lcom/android/tools/r8/internal/B60;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/a1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/tools/r8/graph/a1;->d:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    return-object v0
.end method
