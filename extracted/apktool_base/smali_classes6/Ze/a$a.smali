.class public final LZe/a$a;
.super LUe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/a;
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
        "LUe/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final o:J = 0x4e215678802bc8d0L


# instance fields
.field public final n:LZe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;LZe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LZe/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LUe/f;-><init>(Lhn/c;)V

    iput-object p2, p0, LZe/a$a;->n:LZe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, LUe/f;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LUe/f;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZe/a$a;->n:LZe/a;

    invoke-virtual {v0, p0}, LZe/a;->Z8(LZe/a$a;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LUe/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
