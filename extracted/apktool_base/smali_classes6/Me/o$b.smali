.class public final LMe/o$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final d:J = 0x9c3039c7940ab61L


# instance fields
.field public final b:LBe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/v;LBe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;",
            "LBe/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LMe/o$b;->b:LBe/v;

    iput-object p2, p0, LMe/o$b;->c:LBe/y;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LMe/o$b;->c:LBe/y;

    new-instance v1, LMe/o$a;

    iget-object v2, p0, LMe/o$b;->b:LBe/v;

    invoke-direct {v1, p0, v2}, LMe/o$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LBe/v;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

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

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LMe/o$b;->b:LBe/v;

    invoke-interface {p1, p0}, LBe/v;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/o$b;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
