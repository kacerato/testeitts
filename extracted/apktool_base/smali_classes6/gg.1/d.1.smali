.class public interface abstract Lgg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgg/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgg/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgg/E<",
        "TE;>;"
    }
.end annotation

.annotation build Leg/a1;
.end annotation

.annotation runtime Lnf/o;
    level = .enum Lnf/q;->WARNING:Lnf/q;
    message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/concurrent/CancellationException;)V
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract synthetic b(Ljava/lang/Throwable;)Z
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Binary compatibility only"
    .end annotation
.end method

.method public abstract m()Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
