.class public Lcom/google/common/collect/H1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/H1;->h()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/H1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Lcom/google/common/collect/H1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic d:Lcom/google/common/collect/H1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/H1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/H1$a;->d:Lcom/google/common/collect/H1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/H1;->O(Lcom/google/common/collect/H1;)Lcom/google/common/collect/H1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/H1$b;->f()Lcom/google/common/collect/H1$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/H1$a;->b:Lcom/google/common/collect/H1$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/H1$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/H1$a;->b:Lcom/google/common/collect/H1$b;

    iput-object v0, p0, Lcom/google/common/collect/H1$a;->c:Lcom/google/common/collect/H1$b;

    invoke-virtual {v0}, Lcom/google/common/collect/H1$b;->f()Lcom/google/common/collect/H1$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/H1$a;->b:Lcom/google/common/collect/H1$b;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/H1$a;->b:Lcom/google/common/collect/H1$b;

    iget-object v1, p0, Lcom/google/common/collect/H1$a;->d:Lcom/google/common/collect/H1;

    invoke-static {v1}, Lcom/google/common/collect/H1;->O(Lcom/google/common/collect/H1;)Lcom/google/common/collect/H1$b;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/H1$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/H1$a;->c:Lcom/google/common/collect/H1$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/H1$a;->d:Lcom/google/common/collect/H1;

    iget-object v1, p0, Lcom/google/common/collect/H1$a;->c:Lcom/google/common/collect/H1$b;

    invoke-virtual {v1}, Lcom/google/common/collect/d1;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/H1$a;->c:Lcom/google/common/collect/H1$b;

    invoke-virtual {v2}, Lcom/google/common/collect/d1;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/H1;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/H1$a;->c:Lcom/google/common/collect/H1$b;

    return-void
.end method
