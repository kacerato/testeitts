.class public final LLe/p0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final e:J = 0x1a24ec53e2780a15L


# instance fields
.field public final b:LLe/p0$b;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(LLe/p0$b;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/p0$c;->b:LLe/p0$b;

    iput-boolean p2, p0, LLe/p0$c;->c:Z

    iput p3, p0, LLe/p0$c;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LLe/p0$c;->b:LLe/p0$b;

    iget-boolean v1, p0, LLe/p0$c;->c:Z

    invoke-interface {v0, v1, p0}, LLe/p0$b;->d(ZLLe/p0$c;)V

    return-void
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/p0$c;->b:LLe/p0$b;

    iget-boolean v0, p0, LLe/p0$c;->c:Z

    invoke-interface {p1, v0, p0}, LLe/p0$b;->d(ZLLe/p0$c;)V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/p0$c;->b:LLe/p0$b;

    invoke-interface {v0, p1}, LLe/p0$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
