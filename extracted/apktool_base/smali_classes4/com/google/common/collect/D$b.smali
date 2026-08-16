.class public Lcom/google/common/collect/D$b;
.super Lcom/google/common/collect/D$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/D;->B()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/D<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/D;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/D;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/D$b;->f:Lcom/google/common/collect/D;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/D$e;-><init>(Lcom/google/common/collect/D;Lcom/google/common/collect/D$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/D$b;->e(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/D$g;

    iget-object v1, p0, Lcom/google/common/collect/D$b;->f:Lcom/google/common/collect/D;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/D$g;-><init>(Lcom/google/common/collect/D;I)V

    return-object v0
.end method
