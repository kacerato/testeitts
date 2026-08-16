.class public final Lcom/android/tools/r8/internal/RS;
.super Lcom/android/tools/r8/internal/SS;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/SS;-><init>(I)V

    iput p2, p0, Lcom/android/tools/r8/internal/RS;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/SS;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/RS;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/RS;

    iget p1, p1, Lcom/android/tools/r8/internal/RS;->d:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 4
    iput-boolean p2, p1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 6
    iget p2, p0, Lcom/android/tools/r8/internal/RS;->d:I

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/RS;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 4
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
