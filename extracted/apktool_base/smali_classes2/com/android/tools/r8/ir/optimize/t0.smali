.class public final Lcom/android/tools/r8/ir/optimize/t0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "RedundantFieldLoadAndStoreElimination"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->g0:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/mB;->b()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x1b

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/ir/optimize/s0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/ir/optimize/s0;-><init>(Lcom/android/tools/r8/ir/optimize/t0;Lcom/android/tools/r8/internal/fB;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/s0;->c()Lcom/android/tools/r8/internal/ve;

    move-result-object p1

    return-object p1
.end method
