.class public interface abstract Lcom/android/tools/r8/internal/Ri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ApiModelingMetadata:",
        "Ljava/lang/Object;",
        "LibraryDesugaringMetadata::Lcom/android/tools/r8/internal/Pi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getLibraryDesugaringMetadata()Lcom/android/tools/r8/internal/Pi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LibraryDesugaringMetadata;"
        }
    .end annotation
.end method

.method public abstract getMinApiLevel()Ljava/lang/String;
.end method

.method public abstract isDebugModeEnabled()Z
.end method
