.class public final Lkg/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/f;
.implements LBf/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lyf/f<",
        "TT;>;",
        "LBf/e;"
    }
.end annotation


# instance fields
.field public final b:Lyf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lyf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/f;Lyf/j;)V
    .locals 0
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-TT;>;",
            "Lyf/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkg/x;->b:Lyf/f;

    iput-object p2, p0, Lkg/x;->c:Lyf/j;

    return-void
.end method


# virtual methods
.method public getCallerFrame()LBf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkg/x;->b:Lyf/f;

    instance-of v1, v0, LBf/e;

    if-eqz v1, :cond_0

    check-cast v0, LBf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkg/x;->c:Lyf/j;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lkg/x;->b:Lyf/f;

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
