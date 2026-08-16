.class public Lcom/google/common/collect/u$d$b;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u$d;->e()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/u$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u$d$b;->d:Lcom/google/common/collect/u$d;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u$d$b;->b(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$d$b;->d:Lcom/google/common/collect/u$d;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u$d;->f(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
