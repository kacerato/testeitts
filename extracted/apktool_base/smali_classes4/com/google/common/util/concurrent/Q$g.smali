.class public final Lcom/google/common/util/concurrent/Q$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:[Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/Z<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile e:I


# direct methods
.method public constructor <init>([Lcom/google/common/util/concurrent/Z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/util/concurrent/Z<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Q$g;->a:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Q$g;->b:Z

    .line 5
    iput v0, p0, Lcom/google/common/util/concurrent/Q$g;->e:I

    .line 6
    iput-object p1, p0, Lcom/google/common/util/concurrent/Q$g;->d:[Lcom/google/common/util/concurrent/Z;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Q$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Q$g;-><init>([Lcom/google/common/util/concurrent/Z;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/Q$g;Lcom/google/common/collect/g1;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/Q$g;->f(Lcom/google/common/collect/g1;I)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/Q$g;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Q$g;->g(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/google/common/util/concurrent/Q$g;)[Lcom/google/common/util/concurrent/Z;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Q$g;->d:[Lcom/google/common/util/concurrent/Z;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/common/util/concurrent/Q$g;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Q$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/Q$g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Q$g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Q$g;->d:[Lcom/google/common/util/concurrent/Z;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Q$g;->b:Z

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lcom/google/common/collect/g1;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Q$g;->d:[Lcom/google/common/util/concurrent/Z;

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/Z;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$g;->d:[Lcom/google/common/util/concurrent/Z;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    iget p2, p0, Lcom/google/common/util/concurrent/Q$g;->e:I

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->E(Lcom/google/common/util/concurrent/Z;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Q$g;->e()V

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/util/concurrent/Q$g;->e:I

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/util/concurrent/Q$g;->e:I

    return-void
.end method

.method public final g(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Q$g;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Q$g;->b:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Q$g;->e()V

    return-void
.end method
