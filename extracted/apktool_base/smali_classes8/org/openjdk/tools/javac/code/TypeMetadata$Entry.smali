.class public interface abstract Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;
    }
.end annotation


# virtual methods
.method public abstract combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
.end method

.method public abstract kind()Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;
.end method
