.class public final LMe/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/v;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/v<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LMe/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/m$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field public d:LDe/c;


# direct methods
.method public constructor <init>(LBe/v;Lhn/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;",
            "Lhn/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LMe/m$b;

    invoke-direct {v0, p1}, LMe/m$b;-><init>(LBe/v;)V

    iput-object v0, p0, LMe/m$a;->b:LMe/m$b;

    iput-object p2, p0, LMe/m$a;->c:Lhn/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/m$a;->d:LDe/c;

    invoke-virtual {p0}, LMe/m$a;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/m$a;->d:LDe/c;

    iget-object v0, p0, LMe/m$a;->b:LMe/m$b;

    iput-object p1, v0, LMe/m$b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, LMe/m$a;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LMe/m$a;->c:Lhn/b;

    iget-object v1, p0, LMe/m$a;->b:LMe/m$b;

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LMe/m$a;->b:LMe/m$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LMe/m$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/m$a;->d:LDe/c;

    iget-object v0, p0, LMe/m$a;->b:LMe/m$b;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LMe/m$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LMe/m$a;->d:LDe/c;

    iget-object p1, p0, LMe/m$a;->b:LMe/m$b;

    iget-object p1, p1, LMe/m$b;->b:LBe/v;

    invoke-interface {p1, p0}, LBe/v;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/m$a;->d:LDe/c;

    iget-object v0, p0, LMe/m$a;->b:LMe/m$b;

    iput-object p1, v0, LMe/m$b;->d:Ljava/lang/Throwable;

    invoke-virtual {p0}, LMe/m$a;->c()V

    return-void
.end method
