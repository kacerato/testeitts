.class public final LLe/d0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/v;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/d0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/v<",
        "TR;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final c:J = -0x6f97610685c39ceL


# instance fields
.field public final synthetic b:LLe/d0$a;


# direct methods
.method public constructor <init>(LLe/d0$a;)V
    .locals 0

    iput-object p1, p0, LLe/d0$a$a;->b:LLe/d0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/d0$a$a;->b:LLe/d0$a;

    invoke-virtual {v0, p0}, LLe/d0$a;->f(LLe/d0$a$a;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/d0$a$a;->b:LLe/d0$a;

    invoke-virtual {v0, p0, p1}, LLe/d0$a;->k(LLe/d0$a$a;Ljava/lang/Object;)V

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

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/d0$a$a;->b:LLe/d0$a;

    invoke-virtual {v0, p0, p1}, LLe/d0$a;->g(LLe/d0$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
