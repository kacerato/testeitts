.class public final Li1/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li1/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Li1/p0;Li1/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li1/p0<",
            "TT;>;",
            "Li1/p0<",
            "TT;>;)V"
        }
    .end annotation

    check-cast p0, Li1/j0;

    iget-object v0, p0, Li1/j0;->a:Li1/p0;

    if-nez v0, :cond_0

    iput-object p1, p0, Li1/j0;->a:Li1/p0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final O1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Li1/j0;->a:Li1/p0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
