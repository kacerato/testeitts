.class public interface abstract Lcom/android/tools/r8/MarkerInfoConsumerData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInputOrigin()Lcom/android/tools/r8/origin/Origin;
.end method

.method public abstract getMarkers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/MarkerInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMarkers()Z
.end method
