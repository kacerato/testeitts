.class public final Lig/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/f;
.implements LBf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

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
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lig/e;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/f;Lig/e;)V
    .locals 0
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lig/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-TT;>;",
            "Lig/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig/g$a;->b:Lyf/f;

    iput-object p2, p0, Lig/g$a;->c:Lig/e;

    return-void
.end method


# virtual methods
.method public final a()Lig/m;
    .locals 1

    iget-object v0, p0, Lig/g$a;->c:Lig/e;

    invoke-virtual {v0}, Lig/e;->d()Lig/m;

    move-result-object v0

    return-object v0
.end method

.method public getCallerFrame()LBf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lig/g$a;->a()Lig/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lig/m;->getCallerFrame()LBf/e;

    move-result-object v0

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

    iget-object v0, p0, Lig/g$a;->b:Lyf/f;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lig/g$a;->a()Lig/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lig/m;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lig/g;->a:Lig/g;

    invoke-static {v0, p0}, Lig/g;->c(Lig/g;Lig/g$a;)V

    iget-object v0, p0, Lig/g$a;->b:Lyf/f;

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/g$a;->b:Lyf/f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
