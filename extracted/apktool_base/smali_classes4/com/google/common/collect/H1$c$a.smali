.class public Lcom/google/common/collect/H1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/H1$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/H1$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/H1$d<",
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

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/H1$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/H1$c;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/H1$c$a;->e:Lcom/google/common/collect/H1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/H1$c;->a(Lcom/google/common/collect/H1$c;)Lcom/google/common/collect/H1$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/H1$c$a;->b:Lcom/google/common/collect/H1$d;

    invoke-static {p1}, Lcom/google/common/collect/H1$c;->e(Lcom/google/common/collect/H1$c;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/H1$c$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/H1$c$a;->e:Lcom/google/common/collect/H1$c;

    invoke-static {v0}, Lcom/google/common/collect/H1$c;->e(Lcom/google/common/collect/H1$c;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/H1$c$a;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c$a;->a()V

    iget-object v0, p0, Lcom/google/common/collect/H1$c$a;->b:Lcom/google/common/collect/H1$d;

    iget-object v1, p0, Lcom/google/common/collect/H1$c$a;->e:Lcom/google/common/collect/H1$c;

    if-eq v0, v1, :cond_0

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
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/H1$c$a;->b:Lcom/google/common/collect/H1$d;

    check-cast v0, Lcom/google/common/collect/H1$b;

    invoke-virtual {v0}, Lcom/google/common/collect/d1;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v0, p0, Lcom/google/common/collect/H1$c$a;->c:Lcom/google/common/collect/H1$b;

    invoke-virtual {v0}, Lcom/google/common/collect/H1$b;->g()Lcom/google/common/collect/H1$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/H1$c$a;->b:Lcom/google/common/collect/H1$d;

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c$a;->a()V

    iget-object v0, p0, Lcom/google/common/collect/H1$c$a;->c:Lcom/google/common/collect/H1$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/H1$c$a;->e:Lcom/google/common/collect/H1$c;

    iget-object v1, p0, Lcom/google/common/collect/H1$c$a;->c:Lcom/google/common/collect/H1$b;

    invoke-virtual {v1}, Lcom/google/common/collect/d1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/H1$c;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/H1$c$a;->e:Lcom/google/common/collect/H1$c;

    invoke-static {v0}, Lcom/google/common/collect/H1$c;->e(Lcom/google/common/collect/H1$c;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/H1$c$a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/H1$c$a;->c:Lcom/google/common/collect/H1$b;

    return-void
.end method
