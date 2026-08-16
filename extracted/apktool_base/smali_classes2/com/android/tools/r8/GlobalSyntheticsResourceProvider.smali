.class public interface abstract Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getByteStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method

.method public abstract getOrigin()Lcom/android/tools/r8/origin/Origin;
.end method
