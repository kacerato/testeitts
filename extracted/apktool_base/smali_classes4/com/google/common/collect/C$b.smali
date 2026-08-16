.class public final Lcom/google/common/collect/C$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-static {p2, p1}, Lcom/google/common/collect/g1;->N(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/C$b;->b:Lcom/google/common/collect/g1;

    iput-object p2, p0, Lcom/google/common/collect/C$b;->c:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/google/common/collect/C$b;->a(Ljava/util/List;Ljava/util/Comparator;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/C$b;->d:I

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)I"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    invoke-static {v1, v3}, LE2/f;->a(II)I

    move-result v3

    invoke-static {v2, v3}, LE2/f;->u(II)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, LE2/f;->a(II)I

    move-result p0

    invoke-static {v2, p0}, LE2/f;->u(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/google/common/collect/C$b;->b:Lcom/google/common/collect/g1;

    invoke-static {v0, p1}, Lcom/google/common/collect/C;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/C$c;

    iget-object v1, p0, Lcom/google/common/collect/C$b;->b:Lcom/google/common/collect/g1;

    iget-object v2, p0, Lcom/google/common/collect/C$b;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/C$c;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/C$b;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/C$b;->b:Lcom/google/common/collect/g1;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "orderedPermutationCollection("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
