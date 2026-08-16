.class public final LQe/W$a;
.super LJe/l;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LJe/l<",
        "TT;>;",
        "LBe/N<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = 0x348c813e921c2851L


# instance fields
.field public k:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LJe/l;-><init>(LBe/I;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJe/l;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, LJe/l;->dispose()V

    iget-object v0, p0, LQe/W$a;->k:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LQe/W$a;->k:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LQe/W$a;->k:LDe/c;

    iget-object p1, p0, LJe/l;->c:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, LJe/l;->i(Ljava/lang/Throwable;)V

    return-void
.end method
