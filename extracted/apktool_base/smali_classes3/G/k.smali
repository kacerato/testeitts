.class public LG/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/j;


# instance fields
.field public a:LG/j$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(F)V
    .locals 0

    return-void
.end method

.method public d(LG/j$a;)V
    .locals 0
    .param p1    # LG/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LG/k;->a:LG/j$a;

    return-void
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f(LC/e;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, LG/k;->a:LG/j$a;

    invoke-interface {p1, p2}, LG/j$a;->d(Lcom/bumptech/glide/load/engine/t;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(LC/e;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
