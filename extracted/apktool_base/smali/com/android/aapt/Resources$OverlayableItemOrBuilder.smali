.class public interface abstract Lcom/android/aapt/Resources$OverlayableItemOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverlayableItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCommentBytes()Lcom/google/protobuf/x;
.end method

.method public abstract getOverlayableIdx()I
.end method

.method public abstract getPolicy(I)Lcom/android/aapt/Resources$OverlayableItem$Policy;
.end method

.method public abstract getPolicyCount()I
.end method

.method public abstract getPolicyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPolicyValue(I)I
.end method

.method public abstract getPolicyValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()Lcom/android/aapt/Resources$Source;
.end method

.method public abstract getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
.end method

.method public abstract hasSource()Z
.end method
