.class public final Lbf/a$a;
.super LJe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf/a;
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
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = 0x4e215678802bc8d0L


# instance fields
.field public final k:Lbf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/I;Lbf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "Lbf/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LJe/l;-><init>(LBe/I;)V

    iput-object p2, p0, Lbf/a$a;->k:Lbf/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, LJe/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJe/l;->c:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, LJe/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf/a$a;->k:Lbf/a;

    invoke-virtual {v0, p0}, Lbf/a;->u8(Lbf/a$a;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LJe/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJe/l;->c:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
