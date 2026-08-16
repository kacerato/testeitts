.class public final Lv1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/g;
.implements Lv1/f;
.implements Lv1/d;
.implements Lv1/K;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv1/g<",
        "TTContinuationResult;>;",
        "Lv1/f;",
        "Lv1/d;",
        "Lv1/K;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lv1/c;

.field public final c:Lv1/Q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lv1/c;Lv1/Q;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lv1/Q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/z;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lv1/z;->b:Lv1/c;

    iput-object p3, p0, Lv1/z;->c:Lv1/Q;

    return-void
.end method

.method public static bridge synthetic e(Lv1/z;)Lv1/c;
    .locals 0

    iget-object p0, p0, Lv1/z;->b:Lv1/c;

    return-object p0
.end method

.method public static bridge synthetic f(Lv1/z;)Lv1/Q;
    .locals 0

    iget-object p0, p0, Lv1/z;->c:Lv1/Q;

    return-object p0
.end method


# virtual methods
.method public final P1()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lv1/z;->c:Lv1/Q;

    invoke-virtual {v0}, Lv1/Q;->A()Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lv1/z;->c:Lv1/Q;

    invoke-virtual {v0, p1}, Lv1/Q;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lv1/z;->c:Lv1/Q;

    invoke-virtual {v0, p1}, Lv1/Q;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Lv1/k;)V
    .locals 1
    .param p1    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lv1/y;

    invoke-direct {v0, p0, p1}, Lv1/y;-><init>(Lv1/z;Lv1/k;)V

    iget-object p1, p0, Lv1/z;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
