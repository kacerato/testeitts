.class public Lcom/google/common/collect/l1$a;
.super Lcom/google/common/collect/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l1;->i()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/google/common/collect/l1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/l1$a;->c:Lcom/google/common/collect/l1;

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/l1;->k(Lcom/google/common/collect/l1;)Lcom/google/common/collect/i1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/l1$a;->b:Lcom/google/common/collect/e3;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l1$a;->b:Lcom/google/common/collect/e3;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l1$a;->b:Lcom/google/common/collect/e3;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
