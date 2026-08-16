.class public interface abstract Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type$UndetVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UndetVarListener"
.end annotation


# virtual methods
.method public abstract varBoundChanged(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V
.end method

.method public varInstantiated(Lorg/openjdk/tools/javac/code/Type$UndetVar;)V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-void
.end method
