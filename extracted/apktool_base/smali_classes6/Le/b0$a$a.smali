.class public final LLe/b0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/b0$a;
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
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final c:J = 0x77710b9f43210614L


# instance fields
.field public final synthetic b:LLe/b0$a;


# direct methods
.method public constructor <init>(LLe/b0$a;)V
    .locals 0

    iput-object p1, p0, LLe/b0$a$a;->b:LLe/b0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/b0$a$a;->b:LLe/b0$a;

    invoke-virtual {v0, p0}, LLe/b0$a;->d(LLe/b0$a$a;)V

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

    iget-object v0, p0, LLe/b0$a$a;->b:LLe/b0$a;

    invoke-virtual {v0, p0, p1}, LLe/b0$a;->n(LLe/b0$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
