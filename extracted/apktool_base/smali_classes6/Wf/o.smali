.class public interface abstract LWf/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LWf/n;
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWf/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LWf/n<",
        "TV;>;",
        "LMf/a<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract c()LWf/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWf/o$a<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract getDelegate()Ljava/lang/Object;
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
