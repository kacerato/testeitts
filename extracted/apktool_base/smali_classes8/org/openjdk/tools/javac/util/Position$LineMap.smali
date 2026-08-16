.class public interface abstract Lorg/openjdk/tools/javac/util/Position$LineMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/LineMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LineMap"
.end annotation


# virtual methods
.method public abstract getColumnNumber(I)I
.end method

.method public abstract getLineNumber(I)I
.end method

.method public abstract getPosition(II)I
.end method

.method public abstract getStartPosition(I)I
.end method
