.class public interface abstract Lcom/android/tools/r8/internal/Sr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic b()V
    .locals 0

    return-void
.end method

.method public static empty()Lcom/android/tools/r8/internal/Sr0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kW0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kW0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
