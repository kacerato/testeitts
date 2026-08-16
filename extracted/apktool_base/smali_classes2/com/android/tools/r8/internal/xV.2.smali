.class public final Lcom/android/tools/r8/internal/xV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/MarkerInfoConsumer;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xV;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final acceptMarkerInfo(Lcom/android/tools/r8/MarkerInfoConsumerData;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/tools/r8/MarkerInfoConsumerData;->hasMarkers()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/MarkerInfoConsumerData;->getMarkers()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/MarkerInfo;

    check-cast v0, Lcom/android/tools/r8/internal/wV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xV;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wV;->a:Lcom/android/tools/r8/dex/W;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final finished()V
    .locals 0

    return-void
.end method
