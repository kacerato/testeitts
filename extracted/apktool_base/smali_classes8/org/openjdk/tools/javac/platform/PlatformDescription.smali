.class public interface abstract Lorg/openjdk/tools/javac/platform/PlatformDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo;
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAdditionalOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotationProcessors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlatformPath()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlugins()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo<",
            "Lorg/openjdk/source/util/Plugin;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSourceVersion()Ljava/lang/String;
.end method

.method public abstract getTargetVersion()Ljava/lang/String;
.end method
