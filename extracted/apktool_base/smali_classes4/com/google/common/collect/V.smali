.class public abstract Lcom/google/common/collect/V;
.super Lcom/google/common/collect/F0;
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
        "Lcom/google/common/collect/F0<",
        "TE;>;",
        "Lcom/google/common/collect/K2<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# instance fields
.field public transient b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient c:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/F0;-><init>()V

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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/K2;->Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->P6()Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public D0()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/K2;->B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->P6()Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public O0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/V$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/V$a;-><init>(Lcom/google/common/collect/V;)V

    return-object v0
.end method

.method public abstract P0()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public P6()Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    return-object v0
.end method

.method public abstract Q0()Lcom/google/common/collect/K2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation
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
    iget-object v0, p0, Lcom/google/common/collect/V;->c:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/common/collect/M2$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/M2$b;-><init>(Lcom/google/common/collect/K2;)V

    iput-object v0, p0, Lcom/google/common/collect/V;->c:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/V;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/V;->S1()Ljava/util/NavigableSet;

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

    iget-object v0, p0, Lcom/google/common/collect/V;->b:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/V;->b:Ljava/util/Comparator;

    :cond_0
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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/K2;->dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->P6()Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/V;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/V;->O0()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/V;->d:Ljava/util/Set;

    :cond_0
    return-object v0
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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/W1;->n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/V;->D0()Lcom/google/common/collect/V1;

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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/V;->D0()Lcom/google/common/collect/V1;

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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->pollLastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/common/collect/V;->Q0()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->pollFirstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0;->z0()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0;->B0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/V;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
