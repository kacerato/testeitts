.class public final Lcom/google/common/collect/g3;
.super Lcom/google/common/collect/W1$m;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/K2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/W1$m<",
        "TE;>;",
        "Lcom/google/common/collect/K2<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final g:J


# instance fields
.field public transient f:Lcom/google/common/collect/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g3<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/K2<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/W1$m;-><init>(Lcom/google/common/collect/V1;)V

    return-void
.end method


# virtual methods
.method public B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/K2;->B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/W1;->B(Lcom/google/common/collect/K2;)Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D0()Lcom/google/common/collect/V1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    return-object v0
.end method

.method public Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/K2;->Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/W1;->B(Lcom/google/common/collect/K2;)Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O0()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->P0()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public P0()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/D2;->O(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public P6()Lcom/google/common/collect/K2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g3;->f:Lcom/google/common/collect/g3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/g3;

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/K2;->P6()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g3;-><init>(Lcom/google/common/collect/K2;)V

    iput-object p0, v0, Lcom/google/common/collect/g3;->f:Lcom/google/common/collect/g3;

    iput-object v0, p0, Lcom/google/common/collect/g3;->f:Lcom/google/common/collect/g3;

    :cond_0
    return-object v0
.end method

.method public Q0()Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/W1$m;->D0()Lcom/google/common/collect/V1;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/K2;

    return-object v0
.end method

.method public S1()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/google/common/collect/W1$m;->S1()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g3;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/g3;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            "TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/K2;->dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/W1;->B(Lcom/google/common/collect/K2;)Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public firstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/g3;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
