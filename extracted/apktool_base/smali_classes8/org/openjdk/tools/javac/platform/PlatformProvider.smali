.class public interface abstract Lorg/openjdk/tools/javac/platform/PlatformProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/platform/PlatformProvider$PlatformNotSupported;
    }
.end annotation


# virtual methods
.method public abstract getPlatform(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/platform/PlatformDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/platform/PlatformProvider$PlatformNotSupported;
        }
    .end annotation
.end method

.method public abstract getSupportedPlatformNames()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
