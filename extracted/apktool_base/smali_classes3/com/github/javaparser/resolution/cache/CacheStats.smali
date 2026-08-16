.class public interface abstract Lcom/github/javaparser/resolution/cache/CacheStats;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract averageLoadPenalty()D
.end method

.method public abstract evictionCount()J
.end method

.method public abstract hitCount()J
.end method

.method public abstract hitRate()D
.end method

.method public abstract loadCount()J
.end method

.method public abstract loadExceptionCount()J
.end method

.method public abstract loadExceptionRate()D
.end method

.method public abstract loadSuccessCount()J
.end method

.method public abstract minus(Lcom/github/javaparser/resolution/cache/CacheStats;)Lcom/github/javaparser/resolution/cache/CacheStats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract missCount()J
.end method

.method public abstract missRate()D
.end method

.method public abstract plus(Lcom/github/javaparser/resolution/cache/CacheStats;)Lcom/github/javaparser/resolution/cache/CacheStats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract requestCount()J
.end method

.method public abstract totalLoadTime()J
.end method
