.class public final Lcom/google/common/collect/u2;
.super Lcom/google/common/collect/v1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final j:[J

.field public static final k:Lcom/google/common/collect/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v1<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient f:Lcom/google/common/collect/v2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v2<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public final transient g:[J

.field public final transient h:I

.field public final transient i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    sput-object v0, Lcom/google/common/collect/u2;->j:[J

    new-instance v0, Lcom/google/common/collect/u2;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/u2;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/u2;->k:Lcom/google/common/collect/v1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/v2;[JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v2<",
            "TE;>;[JII)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    .line 8
    iput-object p2, p0, Lcom/google/common/collect/u2;->g:[J

    .line 9
    iput p3, p0, Lcom/google/common/collect/u2;->h:I

    .line 10
    iput p4, p0, Lcom/google/common/collect/u2;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    .line 3
    sget-object p1, Lcom/google/common/collect/u2;->j:[J

    iput-object p1, p0, Lcom/google/common/collect/u2;->g:[J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/u2;->h:I

    .line 5
    iput p1, p0, Lcom/google/common/collect/u2;->i:I

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v2;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u2;->j0(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u2;->W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u2;->i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S1()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u2;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/u2;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/SortedSet;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/u2;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public U()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    return-object v0
.end method

.method public W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v2;->B0(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/u2;->k0(II)Lcom/google/common/collect/v1;

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

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/u2;->v(I)Lcom/google/common/collect/V1$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Z
    .locals 3

    iget v0, p0, Lcom/google/common/collect/u2;->h:I

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/u2;->i:I

    iget-object v2, p0, Lcom/google/common/collect/u2;->g:[J

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v2;->C0(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/u2;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u2;->k0(II)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public final j0(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/common/collect/u2;->g:[J

    iget v1, p0, Lcom/google/common/collect/u2;->h:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    return p1
.end method

.method public k0(II)Lcom/google/common/collect/v1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/u2;->i:I

    invoke-static {p1, p2, v0}, Lw2/H;->f0(III)V

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/v1;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/v1;->V(Ljava/util/Comparator;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/common/collect/u2;->i:I

    if-ne p2, v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v2;->z0(II)Lcom/google/common/collect/v2;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/u2;

    iget-object v2, p0, Lcom/google/common/collect/u2;->g:[J

    iget v3, p0, Lcom/google/common/collect/u2;->h:I

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/google/common/collect/u2;-><init>(Lcom/google/common/collect/v2;[JII)V

    return-object v1
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

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/u2;->i:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/u2;->v(I)Lcom/google/common/collect/V1$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/common/collect/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/u2;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 6

    iget-object v0, p0, Lcom/google/common/collect/u2;->g:[J

    iget v1, p0, Lcom/google/common/collect/u2;->h:I

    iget v2, p0, Lcom/google/common/collect/u2;->i:I

    add-int/2addr v2, v1

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public v(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2;->f:Lcom/google/common/collect/v2;

    invoke-virtual {v0}, Lcom/google/common/collect/v2;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u2;->j0(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/W1;->k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    return-object p1
.end method
