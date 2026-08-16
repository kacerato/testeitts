.class public Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;
.super Lcom/ardor3d/renderer/queue/AbstractRenderBucket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;-><init>()V

    new-instance v0, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$OpaqueComparator;-><init>(Lcom/ardor3d/renderer/queue/OpaqueRenderBucket;Lcom/ardor3d/renderer/queue/OpaqueRenderBucket$1;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_comparator:Ljava/util/Comparator;

    return-void
.end method
