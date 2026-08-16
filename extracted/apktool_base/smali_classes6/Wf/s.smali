.class public interface abstract LWf/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LWf/f;


# annotations
.annotation build Lnf/l0;
    version = "1.1"
.end annotation


# virtual methods
.method public abstract b()Z
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUpperBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LWf/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getVariance()LWf/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
