.class public final Lcom/android/tools/r8/graph/Q0;
.super Lcom/android/tools/r8/graph/O0;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O0;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/Q0;->d:I

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    const/4 p2, 0x6

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->b(I)V

    .line 3
    iget p2, p0, Lcom/android/tools/r8/graph/Q0;->d:I

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->c(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/V0;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/V0;->a(Lcom/android/tools/r8/graph/Q0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/Q0;->d:I

    check-cast p1, Lcom/android/tools/r8/graph/Q0;

    iget p1, p1, Lcom/android/tools/r8/graph/Q0;->d:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/Q0;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/Q0;->d:I

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final n0()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/Q0;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTART_LOCAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
