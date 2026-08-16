.class public final LOe/u$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = -0x42f1490d3f05c855L


# instance fields
.field public final b:LOe/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/u$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(LOe/u$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/u$b<",
            "TT;TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/u$a;->b:LOe/u$b;

    iput p2, p0, LOe/u$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LOe/u$a;->b:LOe/u$b;

    iget v1, p0, LOe/u$a;->c:I

    invoke-virtual {v0, v1}, LOe/u$b;->e(I)V

    return-void
.end method

.method public b()V
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/u$a;->b:LOe/u$b;

    iget v1, p0, LOe/u$a;->c:I

    invoke-virtual {v0, v1, p1}, LOe/u$b;->g(ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LOe/u$a;->b:LOe/u$b;

    iget v1, p0, LOe/u$a;->c:I

    invoke-virtual {v0, v1, p1}, LOe/u$b;->f(ILjava/lang/Throwable;)V

    return-void
.end method
