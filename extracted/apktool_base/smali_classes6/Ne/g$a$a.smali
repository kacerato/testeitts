.class public final LNe/g$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/g$a;
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
        "LBe/v<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x6f9e30e36197ffc7L


# instance fields
.field public final b:LNe/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNe/g$a<",
            "*TR;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LNe/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNe/g$a<",
            "*TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LNe/g$a$a;->b:LNe/g$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LNe/g$a$a;->b:LNe/g$a;

    invoke-virtual {v0, p0}, LNe/g$a;->d(LNe/g$a$a;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, LNe/g$a$a;->c:Ljava/lang/Object;

    iget-object p1, p0, LNe/g$a$a;->b:LNe/g$a;

    invoke-virtual {p1}, LNe/g$a;->c()V

    return-void
.end method

.method public c()V
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

    iget-object v0, p0, LNe/g$a$a;->b:LNe/g$a;

    invoke-virtual {v0, p0, p1}, LNe/g$a;->e(LNe/g$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
