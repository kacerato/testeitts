.class public final LOe/l0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "Ljava/lang/Object;",
        ">;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final e:J = 0x1a24ec53e2780a15L


# instance fields
.field public final b:LOe/l0$b;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(LOe/l0$b;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/l0$c;->b:LOe/l0$b;

    iput-boolean p2, p0, LOe/l0$c;->c:Z

    iput p3, p0, LOe/l0$c;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LOe/l0$c;->b:LOe/l0$b;

    iget-boolean v1, p0, LOe/l0$c;->c:Z

    invoke-interface {v0, v1, p0}, LOe/l0$b;->f(ZLOe/l0$c;)V

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

.method public h(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LOe/l0$c;->b:LOe/l0$b;

    iget-boolean v0, p0, LOe/l0$c;->c:Z

    invoke-interface {p1, v0, p0}, LOe/l0$b;->f(ZLOe/l0$c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/l0$c;->b:LOe/l0$b;

    invoke-interface {v0, p1}, LOe/l0$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
