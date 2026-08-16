.class public final LKe/J$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final e:J = 0x45a560c5d483e80eL


# instance fields
.field public final b:LBe/f;

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(LBe/f;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/f;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LKe/J$a;->b:LBe/f;

    iput-object p2, p0, LKe/J$a;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LKe/J$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, LKe/J$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LKe/J$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LKe/J$a;->d:Z

    :try_start_0
    iget-object v0, p0, LKe/J$a;->c:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The errorMapper returned a null CompletableSource"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p0}, LBe/i;->b(LBe/f;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LKe/J$a;->b:LBe/f;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
