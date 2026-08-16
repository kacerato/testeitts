.class public interface abstract Lorg/openjdk/javax/tools/JavaFileManager$Location;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/tools/JavaFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Location"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public isModuleOrientedLocation()Z
    .locals 2

    invoke-interface {p0}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\bMODULE\\b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract isOutputLocation()Z
.end method
