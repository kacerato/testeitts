.class public Lcom/google/common/collect/o2;
.super Lcom/google/common/collect/Z0;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Z0<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c1;Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "TE;>;",
            "Lcom/google/common/collect/g1<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/Z0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/o2;->d:Lcom/google/common/collect/c1;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/c1;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lcom/google/common/collect/g1;->k([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/o2;-><init>(Lcom/google/common/collect/c1;Lcom/google/common/collect/g1;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/c1;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 5
    invoke-static {p2, p3}, Lcom/google/common/collect/g1;->l([Ljava/lang/Object;I)Lcom/google/common/collect/g1;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/o2;-><init>(Lcom/google/common/collect/c1;Lcom/google/common/collect/g1;)V

    return-void
.end method


# virtual methods
.method public Q()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o2;->d:Lcom/google/common/collect/c1;

    return-object v0
.end method

.method public R()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public b([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/g1;->b([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public c()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->d()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->g()I

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/o2;->w(I)Lcom/google/common/collect/f3;

    move-result-object p1

    return-object p1
.end method

.method public w(I)Lcom/google/common/collect/f3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/f3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o2;->e:Lcom/google/common/collect/g1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1;->w(I)Lcom/google/common/collect/f3;

    move-result-object p1

    return-object p1
.end method
