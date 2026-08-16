.class public interface abstract Leg/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/v$a;
    }
.end annotation

.annotation build Leg/F0;
.end annotation

.annotation runtime Lnf/o;
    level = .enum Lnf/q;->ERROR:Lnf/q;
    message = "This is internal API and may be removed in the future releases"
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/Throwable;)Z
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation
.end method

.method public abstract getParent()Leg/K0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
