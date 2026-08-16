.class public abstract Lcom/jme3/environment/generation/JobProgressAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/environment/generation/JobProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jme3/environment/generation/JobProgressListener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public progress(D)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public step(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
