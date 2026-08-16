.class public final Lcom/google/common/collect/I2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/I2$b;,
        Lcom/google/common/collect/I2$c;
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;TE;",
            "Lcom/google/common/collect/I2$c;",
            "Lcom/google/common/collect/I2$b;",
            ")I"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/common/collect/I2;->b(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;TE;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lcom/google/common/collect/I2$c;",
            "Lcom/google/common/collect/I2$b;",
            ")I"
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/M1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr v2, v1

    invoke-virtual {p3, p2, p1, p0, v2}, Lcom/google/common/collect/I2$c;->b(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result p0

    add-int/2addr v1, p0

    return v1

    :cond_3
    invoke-virtual {p4, v1}, Lcom/google/common/collect/I2$b;->b(I)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/List;Lw2/t;Ljava/lang/Comparable;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lw2/t<",
            "-TE;TK;>;TK;",
            "Lcom/google/common/collect/I2$c;",
            "Lcom/google/common/collect/I2$b;",
            ")I"
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/I2;->d(Ljava/util/List;Lw2/t;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/util/List;Lw2/t;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lw2/t<",
            "-TE;TK;>;TK;",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Lcom/google/common/collect/I2$c;",
            "Lcom/google/common/collect/I2$b;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/M1;->D(Ljava/util/List;Lw2/t;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/common/collect/I2;->b(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/I2$c;Lcom/google/common/collect/I2$b;)I

    move-result p0

    return p0
.end method
