.class public final LNe/a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TR;>;",
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final d:J = -0x7c2e9f0a46fa84b0L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/I;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;",
            "LBe/G<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, LNe/a$a;->c:LBe/G;

    iput-object p1, p0, LNe/a$a;->b:LBe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LNe/a$a;->c:LBe/G;

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/a$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LNe/a$a;->c:LBe/G;

    invoke-interface {v0, p0}, LBe/G;->c(LBe/I;)V

    :goto_0
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

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/a$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/a$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
