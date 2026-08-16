.class public abstract Lw2/r;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lw2/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "TT;>;",
        "Lw2/p;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation

.annotation runtime Lw2/k;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lw2/q;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lw2/q;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lw2/q;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p2}, Lw2/q;->d()V

    return-void
.end method
