.class public final LNe/c$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/c$a;
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
        "LBe/f;"
    }
.end annotation


# static fields
.field public static final c:J = 0x4e3f736d9160236fL


# instance fields
.field public final b:LNe/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNe/c$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LNe/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNe/c$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LNe/c$a$a;->b:LNe/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LNe/c$a$a;->b:LNe/c$a;

    invoke-virtual {v0}, LNe/c$a;->c()V

    return-void
.end method

.method public b()V
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
    .locals 1

    iget-object v0, p0, LNe/c$a$a;->b:LNe/c$a;

    invoke-virtual {v0, p1}, LNe/c$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method
