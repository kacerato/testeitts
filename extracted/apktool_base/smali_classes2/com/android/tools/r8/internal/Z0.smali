.class public abstract Lcom/android/tools/r8/internal/Z0;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/a1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/a1;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/a1;->comparator()Ljava/util/Comparator;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/a1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/a1;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a1;->e()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v0

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a1;->e()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z0;->b:Lcom/android/tools/r8/internal/a1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/a1;->c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a1;->e()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method
