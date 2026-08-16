.class public final LLe/u$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/u;
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
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x792806a4be12a645L


# instance fields
.field public final b:LLe/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/u$a<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(LLe/u$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/u$a<",
            "TT;*>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/u$b;->b:LLe/u$a;

    iput p2, p0, LLe/u$b;->c:I

    iput p3, p0, LLe/u$b;->d:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, LLe/u$b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LLe/u$b;->b:LLe/u$a;

    iget v1, p0, LLe/u$b;->c:I

    invoke-virtual {v0, v1}, LLe/u$a;->v(I)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public c()V
    .locals 4

    iget v0, p0, LLe/u$b;->f:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, LLe/u$b;->e:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, LLe/u$b;->f:I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhn/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    iput v0, p0, LLe/u$b;->f:I

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/u$b;->b:LLe/u$a;

    iget v1, p0, LLe/u$b;->c:I

    invoke-virtual {v0, v1, p1}, LLe/u$a;->x(ILjava/lang/Object;)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget v0, p0, LLe/u$b;->d:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LLe/u$b;->b:LLe/u$a;

    iget v1, p0, LLe/u$b;->c:I

    invoke-virtual {v0, v1, p1}, LLe/u$a;->w(ILjava/lang/Throwable;)V

    return-void
.end method
