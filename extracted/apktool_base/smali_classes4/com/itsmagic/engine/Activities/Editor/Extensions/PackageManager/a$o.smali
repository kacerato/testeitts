.class public interface abstract Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "o"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation
.end method

.method public abstract c(IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond"
        }
    .end annotation
.end method
