.class public Lcom/google/common/collect/g0$a$a$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g0$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/google/common/collect/g0$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g0$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g0$a$a$a;->e:Lcom/google/common/collect/g0$a$a;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/g0$a$a;->b:Lcom/google/common/collect/g0$a;

    iget-object p1, p1, Lcom/google/common/collect/g0$a;->e:Lcom/google/common/collect/g0;

    iget-object p1, p1, Lcom/google/common/collect/g0;->g:Lcom/google/common/collect/S1;

    invoke-interface {p1}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/g0$a$a$a;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/g0$a$a$a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g0$a$a$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/g0$a$a$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lcom/google/common/collect/g0$c;

    iget-object v3, p0, Lcom/google/common/collect/g0$a$a$a;->e:Lcom/google/common/collect/g0$a$a;

    iget-object v3, v3, Lcom/google/common/collect/g0$a$a;->b:Lcom/google/common/collect/g0$a;

    iget-object v3, v3, Lcom/google/common/collect/g0$a;->e:Lcom/google/common/collect/g0;

    invoke-direct {v2, v3, v1}, Lcom/google/common/collect/g0$c;-><init>(Lcom/google/common/collect/g0;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/g0;->m(Ljava/util/Collection;Lw2/I;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
