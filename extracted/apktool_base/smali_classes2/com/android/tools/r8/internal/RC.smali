.class public final Lcom/android/tools/r8/internal/RC;
.super Lcom/android/tools/r8/internal/Se0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jn0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Se0;-><init>(Lcom/android/tools/r8/internal/JC;Lcom/android/tools/r8/internal/hC;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    check-cast v0, Lcom/android/tools/r8/internal/WC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RC;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(II)Lcom/android/tools/r8/internal/hC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gC;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/gC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    new-instance p1, Lcom/android/tools/r8/internal/ff0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    check-cast p2, Lcom/android/tools/r8/internal/WC;

    iget-object p2, p2, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    check-cast v0, Lcom/android/tools/r8/internal/WC;

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Se0;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    check-cast v0, Lcom/android/tools/r8/internal/WC;

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RC;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    check-cast v0, Lcom/android/tools/r8/internal/WC;

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/jV0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/jV0;-><init>(Lcom/android/tools/r8/internal/hC;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    check-cast v1, Lcom/android/tools/r8/internal/WC;

    iget-object v1, v1, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    const/16 v3, 0x515

    invoke-static {v0, v3, v2, v1}, Lcom/android/tools/r8/internal/Se;->a(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lcom/android/tools/r8/internal/Oe;

    move-result-object v0

    return-object v0
.end method
