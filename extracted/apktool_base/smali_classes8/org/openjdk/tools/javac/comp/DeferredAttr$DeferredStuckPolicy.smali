.class interface abstract Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeferredStuckPolicy"
.end annotation


# virtual methods
.method public abstract depVars()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isStuck()Z
.end method

.method public abstract stuckVars()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end method
