.class public Lcom/google/common/collect/D$h;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/D;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/D;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/D$h;->b:Lcom/google/common/collect/D;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/D$h;->b:Lcom/google/common/collect/D;

    invoke-virtual {v0}, Lcom/google/common/collect/D;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D$h;->b:Lcom/google/common/collect/D;

    invoke-virtual {v0}, Lcom/google/common/collect/D;->e0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/D$h;->b:Lcom/google/common/collect/D;

    invoke-virtual {v0}, Lcom/google/common/collect/D;->size()I

    move-result v0

    return v0
.end method
