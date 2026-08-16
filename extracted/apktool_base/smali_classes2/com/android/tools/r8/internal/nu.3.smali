.class public Lcom/android/tools/r8/internal/nu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nu;->b:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)I
    .locals 2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/nu;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez v1, :cond_3

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    .line 11
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/mu;

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/nu;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/nu;->c:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    return v0

    .line 3
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/nu;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nu;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method
