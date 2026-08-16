.class public Lcom/google/common/collect/K1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/K1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public c:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public d:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public e:I

.field public final synthetic f:Lcom/google/common/collect/K1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/K1$e;->f:Lcom/google/common/collect/K1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/K1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/D2;->y(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/K1$e;->b:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/K1;->n(Lcom/google/common/collect/K1;)Lcom/google/common/collect/K1$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/K1$e;->c:Lcom/google/common/collect/K1$g;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/K1;->l(Lcom/google/common/collect/K1;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/K1$e;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/K1;Lcom/google/common/collect/K1$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/K1$e;-><init>(Lcom/google/common/collect/K1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/K1$e;->f:Lcom/google/common/collect/K1;

    invoke-static {v0}, Lcom/google/common/collect/K1;->l(Lcom/google/common/collect/K1;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/K1$e;->e:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/K1$e;->a()V

    iget-object v0, p0, Lcom/google/common/collect/K1$e;->c:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/K1$e;->a()V

    iget-object v0, p0, Lcom/google/common/collect/K1$e;->c:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/common/collect/K1$e;->d:Lcom/google/common/collect/K1$g;

    iget-object v1, p0, Lcom/google/common/collect/K1$e;->b:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/K1$g;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/K1$e;->c:Lcom/google/common/collect/K1$g;

    iget-object v0, v0, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iput-object v0, p0, Lcom/google/common/collect/K1$e;->c:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/K1$e;->b:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/K1$g;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/K1$e;->d:Lcom/google/common/collect/K1$g;

    iget-object v0, v0, Lcom/google/common/collect/K1$g;->b:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/K1$e;->a()V

    iget-object v0, p0, Lcom/google/common/collect/K1$e;->d:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/K1$e;->f:Lcom/google/common/collect/K1;

    iget-object v1, p0, Lcom/google/common/collect/K1$e;->d:Lcom/google/common/collect/K1$g;

    iget-object v1, v1, Lcom/google/common/collect/K1$g;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/K1;->q(Lcom/google/common/collect/K1;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/K1$e;->d:Lcom/google/common/collect/K1$g;

    iget-object v0, p0, Lcom/google/common/collect/K1$e;->f:Lcom/google/common/collect/K1;

    invoke-static {v0}, Lcom/google/common/collect/K1;->l(Lcom/google/common/collect/K1;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/K1$e;->e:I

    return-void
.end method
