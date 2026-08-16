.class public abstract Lorg/openjdk/tools/javac/main/OptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/main/OptionHelper$GrumpyHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addClassName(Ljava/lang/String;)V
.end method

.method public abstract addFile(Ljava/nio/file/Path;)V
.end method

.method public abstract get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;
.end method

.method public abstract getLog()Lorg/openjdk/tools/javac/util/Log;
.end method

.method public abstract getOwnName()Ljava/lang/String;
.end method

.method public abstract handleFileManagerOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
.end method

.method public varargs newInvalidValueException(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/main/Option$InvalidValueException;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/main/Option$InvalidValueException;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/OptionHelper;->getLog()Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v1, v2, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/main/Option$InvalidValueException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
