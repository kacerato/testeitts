.class public final LLe/G1$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/G1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = -0x31dc445a260f2f32L


# instance fields
.field public final synthetic b:LLe/G1$a;


# direct methods
.method public constructor <init>(LLe/G1$a;)V
    .locals 0

    iput-object p1, p0, LLe/G1$a$a;->b:LLe/G1$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LLe/G1$a$a;->b:LLe/G1$a;

    iget-object v0, v0, LLe/G1$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/G1$a$a;->b:LLe/G1$a;

    iget-object v1, v0, LLe/G1$a;->b:Lhn/c;

    iget-object v2, v0, LLe/G1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v1, v0, v2}, Lio/reactivex/internal/util/k;->b(Lhn/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, LLe/G1$a$a;->a()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LLe/G1$a$a;->b:LLe/G1$a;

    iget-object v0, v0, LLe/G1$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/G1$a$a;->b:LLe/G1$a;

    iget-object v1, v0, LLe/G1$a;->b:Lhn/c;

    iget-object v2, v0, LLe/G1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/k;->d(Lhn/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method
