.class public Lcom/google/common/collect/i1$d$a;
.super Lcom/google/common/collect/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i1$d;->N()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lcom/google/common/collect/r1<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1$d;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/i1$d$a;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/r1<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/i1$d$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/i1$d$a$a;-><init>(Lcom/google/common/collect/i1$d$a;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i1$d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i1$d$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
