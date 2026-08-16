.class public Lcom/google/common/collect/b3$d$b$c;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b3$d$b;->e()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/j2<",
        "TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/common/collect/b3$d$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b3$d$b;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/b3$d$b$c;->e:Lcom/google/common/collect/b3$d$b;

    iput-object p2, p0, Lcom/google/common/collect/b3$d$b$c;->d:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/b3$d$b$c;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b3$d$b$c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/b3$d$b$c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->f()Lcom/google/common/collect/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/b3$d$b$c;->e:Lcom/google/common/collect/b3$d$b;

    iget-object v2, v2, Lcom/google/common/collect/b3$d$b;->b:Lcom/google/common/collect/b3$d;

    invoke-static {v2}, Lcom/google/common/collect/b3$d;->b(Lcom/google/common/collect/b3$d;)Lcom/google/common/collect/j2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/b3$d$b$c;->e:Lcom/google/common/collect/b3$d$b;

    iget-object v2, v2, Lcom/google/common/collect/b3$d$b;->b:Lcom/google/common/collect/b3$d;

    invoke-static {v2}, Lcom/google/common/collect/b3$d;->b(Lcom/google/common/collect/b3$d;)Lcom/google/common/collect/j2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->e()Lcom/google/common/collect/j2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/b3$d$b$c;->e:Lcom/google/common/collect/b3$d$b;

    iget-object v2, v2, Lcom/google/common/collect/b3$d$b;->b:Lcom/google/common/collect/b3$d;

    invoke-static {v2}, Lcom/google/common/collect/b3$d;->b(Lcom/google/common/collect/b3$d;)Lcom/google/common/collect/j2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
