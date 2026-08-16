.class public Lcom/google/common/collect/U1$a$a;
.super Lcom/google/common/collect/Q1$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/U1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$s<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/U1$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/U1$a$a;->b:Lcom/google/common/collect/U1$a;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$a$a;->b:Lcom/google/common/collect/U1$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$a$a;->b:Lcom/google/common/collect/U1$a;

    invoke-static {v0}, Lcom/google/common/collect/U1$a;->k(Lcom/google/common/collect/U1$a;)Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/U1$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/U1$a$a$a;-><init>(Lcom/google/common/collect/U1$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->m(Ljava/util/Set;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q1$s;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/U1$a$a;->b:Lcom/google/common/collect/U1$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/U1$a;->n(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
