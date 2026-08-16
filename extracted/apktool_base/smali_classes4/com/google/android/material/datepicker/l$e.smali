.class public final Lcom/google/android/material/datepicker/l$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Lcom/google/android/material/datepicker/a;

.field public d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/datepicker/l$e;->b:I

    iput v0, p0, Lcom/google/android/material/datepicker/l$e;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/datepicker/l$e;->e:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/material/datepicker/l$e;->f:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/material/datepicker/l$e;->g:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$e;->a:Lcom/google/android/material/datepicker/f;

    return-void
.end method

.method public static c(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/l$e;
    .locals 1
    .param p0    # Lcom/google/android/material/datepicker/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/datepicker/l$e;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/l$e;-><init>(Lcom/google/android/material/datepicker/f;)V

    return-object v0
.end method

.method public static d()Lcom/google/android/material/datepicker/l$e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/l$e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/datepicker/l$e;

    new-instance v1, Lcom/google/android/material/datepicker/v;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/v;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/l$e;-><init>(Lcom/google/android/material/datepicker/f;)V

    return-object v0
.end method

.method public static e()Lcom/google/android/material/datepicker/l$e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/l$e<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/datepicker/l$e;

    new-instance v1, Lcom/google/android/material/datepicker/u;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/u;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/l$e;-><init>(Lcom/google/android/material/datepicker/f;)V

    return-object v0
.end method

.method public static f(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/a;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/a;->m()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/p;->b(Lcom/google/android/material/datepicker/p;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/a;->h()Lcom/google/android/material/datepicker/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->b(Lcom/google/android/material/datepicker/p;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Lcom/google/android/material/datepicker/l;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/l<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/datepicker/a$b;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/a$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a$b;->a()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    :cond_0
    iget v0, p0, Lcom/google/android/material/datepicker/l$e;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->a:Lcom/google/android/material/datepicker/f;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/f;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l$e;->d:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->f:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/datepicker/l$e;->a:Lcom/google/android/material/datepicker/f;

    invoke-interface {v1, v0}, Lcom/google/android/material/datepicker/f;->y(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->l()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l$e;->b()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/a;->q(Lcom/google/android/material/datepicker/p;)V

    :cond_3
    invoke-static {p0}, Lcom/google/android/material/datepicker/l;->E(Lcom/google/android/material/datepicker/l$e;)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/material/datepicker/p;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->a:Lcom/google/android/material/datepicker/f;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/f;->L()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->a:Lcom/google/android/material/datepicker/f;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/f;->L()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/p;->e(J)Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l$e;->f(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/material/datepicker/p;->g()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l$e;->f(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->m()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l$e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/a;",
            ")",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$e;->c:Lcom/google/android/material/datepicker/a;

    return-object p0
.end method

.method public h(I)Lcom/google/android/material/datepicker/l$e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/material/datepicker/l$e;->g:I

    return-object p0
.end method

.method public i(Ljava/lang/Object;)Lcom/google/android/material/datepicker/l$e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$e;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public j(I)Lcom/google/android/material/datepicker/l$e;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/material/datepicker/l$e;->b:I

    return-object p0
.end method

.method public k(I)Lcom/google/android/material/datepicker/l$e;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/material/datepicker/l$e;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$e;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/l$e;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/android/material/datepicker/l$e<",
            "TS;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$e;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/datepicker/l$e;->d:I

    return-object p0
.end method
