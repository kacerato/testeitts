.class public abstract Lcom/android/tools/r8/internal/O;
.super Lcom/android/tools/r8/internal/d0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/P;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/P;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final K()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->a()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/jG;->b(I)Lcom/android/tools/r8/internal/jG;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->comparator()Lcom/android/tools/r8/internal/gI;

    move-result-object v0

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/jG;->a(II)Lcom/android/tools/r8/internal/jG;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Lcom/android/tools/r8/internal/qI;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/jG;->c(I)Lcom/android/tools/r8/internal/jG;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/N;->a(I)Z

    move-result p1

    return p1
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O;->b:Lcom/android/tools/r8/internal/P;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v0

    return v0
.end method
