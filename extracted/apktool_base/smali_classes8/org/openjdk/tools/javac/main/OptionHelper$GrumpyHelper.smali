.class public Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;
.super Lorg/openjdk/tools/javac/main/OptionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/OptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrumpyHelper"
.end annotation


# instance fields
.field private final log:Lorg/openjdk/tools/javac/util/Log;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/OptionHelper;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;->log:Lorg/openjdk/tools/javac/util/Log;

    return-void
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFile(Ljava/nio/file/Path;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getLog()Lorg/openjdk/tools/javac/util/Log;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object v0
.end method

.method public getOwnName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public handleFileManagerOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
