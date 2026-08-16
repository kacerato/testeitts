.class public final Lcom/google/common/collect/R1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/R1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# static fields
.field public static final d:I = -0x1


# instance fields
.field public final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TB;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TB;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/collect/R1$b;->b:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/google/common/collect/R1$b;->c:I

    .line 5
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/R1$b;->a:Ljava/util/Comparator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/R1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/R1$b;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/collect/R1$b;)Lcom/google/common/collect/Ordering;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/R1$b;->g()Lcom/google/common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/collect/R1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/R1$b;->c:I

    return p0
.end method


# virtual methods
.method public c()Lcom/google/common/collect/R1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/R1<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/R1$b;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/R1;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Iterable;)Lcom/google/common/collect/R1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/R1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/R1;

    iget v1, p0, Lcom/google/common/collect/R1$b;->b:I

    iget v2, p0, Lcom/google/common/collect/R1$b;->c:I

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/R1;->p(IILjava/lang/Iterable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/R1;-><init>(Lcom/google/common/collect/R1$b;ILcom/google/common/collect/R1$a;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/R1;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e(I)Lcom/google/common/collect/R1$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/R1$b<",
            "TB;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    iput p1, p0, Lcom/google/common/collect/R1$b;->b:I

    return-object p0
.end method

.method public f(I)Lcom/google/common/collect/R1$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/R1$b<",
            "TB;>;"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    iput p1, p0, Lcom/google/common/collect/R1$b;->c:I

    return-object p0
.end method

.method public final g()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R1$b;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method
