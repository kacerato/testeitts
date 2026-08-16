.class public Lorg/openjdk/javax/annotation/processing/Completions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/annotation/processing/Completions$SimpleCompletion;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lorg/openjdk/javax/annotation/processing/Completion;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/javax/annotation/processing/Completions$SimpleCompletion;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lorg/openjdk/javax/annotation/processing/Completions$SimpleCompletion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/annotation/processing/Completion;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/javax/annotation/processing/Completions$SimpleCompletion;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/javax/annotation/processing/Completions$SimpleCompletion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
