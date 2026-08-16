.class public abstract Lcom/android/tools/r8/internal/d0;
.super Lcom/android/tools/r8/internal/c0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/qI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final first()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/qI;->K()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/qI;->e(I)Lcom/android/tools/r8/internal/qI;

    move-result-object p1

    return-object p1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/qI;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/qI;->d(II)Lcom/android/tools/r8/internal/qI;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/qI;->a(I)Lcom/android/tools/r8/internal/qI;

    move-result-object p1

    return-object p1
.end method
