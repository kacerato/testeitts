.class public interface abstract Lcom/jme3/opencl/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/jme3/opencl/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtensions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getProfile()Ljava/lang/String;
.end method

.method public abstract getVendor()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVersionMajor()I
.end method

.method public abstract getVersionMinor()I
.end method

.method public abstract hasExtension(Ljava/lang/String;)Z
.end method

.method public abstract hasOpenGLInterop()Z
.end method

.method public abstract isEmbeddedProfile()Z
.end method

.method public abstract isFullProfile()Z
.end method
