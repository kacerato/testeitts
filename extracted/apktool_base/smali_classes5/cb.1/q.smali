.class public Lcb/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftIdx",
            "rightIdx"
        }
    .end annotation

    iget-object v0, p0, Lcb/q;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    aget-object v3, v0, v2

    aget-object v0, v0, p2

    iget-object v4, p0, Lcb/q;->b:Ljava/util/Comparator;

    invoke-interface {v4, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcb/q;->b:Ljava/util/Comparator;

    invoke-interface {v4, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    return v2

    :cond_0
    iget-object v2, p0, Lcb/q;->b:Ljava/util/Comparator;

    invoke-interface {v2, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    return p2

    :cond_1
    return p1

    :cond_2
    iget-object v4, p0, Lcb/q;->b:Ljava/util/Comparator;

    invoke-interface {v4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_3

    return p1

    :cond_3
    iget-object p1, p0, Lcb/q;->b:Ljava/util/Comparator;

    invoke-interface {p1, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_4

    return p2

    :cond_4
    return v2
.end method

.method public final b(III)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "pivot"
        }
    .end annotation

    iget-object v0, p0, Lcb/q;->a:[Ljava/lang/Object;

    aget-object v0, v0, p3

    invoke-virtual {p0, p2, p3}, Lcb/q;->e(II)V

    move p3, p1

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v1, p0, Lcb/q;->b:Ljava/util/Comparator;

    iget-object v2, p0, Lcb/q;->a:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0, p3, p1}, Lcb/q;->e(II)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcb/q;->e(II)V

    return p3
.end method

.method public final c(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "k"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcb/q;->a(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcb/q;->b(III)I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p3, :cond_1

    goto :goto_0

    :cond_1
    if-ge p3, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0, p3}, Lcb/q;->c(III)I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p3, v1

    invoke-virtual {p0, v0, p2, p3}, Lcb/q;->c(III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public d([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "comp",
            "n",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)I"
        }
    .end annotation

    iput-object p1, p0, Lcb/q;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcb/q;->b:Ljava/util/Comparator;

    add-int/lit8 p4, p4, -0x1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4, p3}, Lcb/q;->c(III)I

    move-result p1

    return p1
.end method

.method public final e(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    iget-object v0, p0, Lcb/q;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    return-void
.end method
