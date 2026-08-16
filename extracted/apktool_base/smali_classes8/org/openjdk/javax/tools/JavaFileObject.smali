.class public interface abstract Lorg/openjdk/javax/tools/JavaFileObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/FileObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    }
.end annotation


# virtual methods
.method public abstract getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
.end method

.method public abstract getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
.end method

.method public abstract getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
.end method

.method public abstract isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
.end method
