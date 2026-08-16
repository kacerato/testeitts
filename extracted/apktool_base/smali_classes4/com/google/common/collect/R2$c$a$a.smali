.class public Lcom/google/common/collect/R2$c$a$a;
.super Lcom/google/common/collect/D0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/R2$c$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/D0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/google/common/collect/R2$c$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/R2$c$a;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/R2$c$a$a;->c:Lcom/google/common/collect/R2$c$a;

    iput-object p2, p0, Lcom/google/common/collect/R2$c$a$a;->b:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/D0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/R2$c$a$a;->u0()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/R2$c$a$a;->m0()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public m0()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R2$c$a$a;->b:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public u0()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R2$c$a$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/R2$c$a$a;->c:Lcom/google/common/collect/R2$c$a;

    iget-object v1, v1, Lcom/google/common/collect/R2$c$a;->c:Lcom/google/common/collect/R2$c;

    iget-object v1, v1, Lcom/google/common/collect/R2$p;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/R2;->d(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
