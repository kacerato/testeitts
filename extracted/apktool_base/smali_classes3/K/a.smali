.class public abstract LK/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/n<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LJ/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/n<",
            "LJ/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final b:LJ/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/m<",
            "TModel;",
            "LJ/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJ/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/n<",
            "LJ/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LK/a;-><init>(LJ/n;LJ/m;)V

    return-void
.end method

.method public constructor <init>(LJ/n;LJ/m;)V
    .locals 0
    .param p2    # LJ/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/n<",
            "LJ/g;",
            "Ljava/io/InputStream;",
            ">;",
            "LJ/m<",
            "TModel;",
            "LJ/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LK/a;->a:LJ/n;

    .line 4
    iput-object p2, p0, LK/a;->b:LJ/m;

    return-void
.end method

.method public static c(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "LC/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, LJ/g;

    invoke-direct {v2, v1}, LJ/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;IILC/h;)LJ/n$a;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LC/h;",
            ")",
            "LJ/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LK/a;->b:LJ/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, LJ/m;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/g;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, LK/a;->f(Ljava/lang/Object;IILC/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, LJ/g;

    invoke-virtual {p0, p1, p2, p3, p4}, LK/a;->e(Ljava/lang/Object;IILC/h;)LJ/h;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LJ/g;-><init>(Ljava/lang/String;LJ/h;)V

    iget-object v0, p0, LK/a;->b:LJ/m;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, v1}, LJ/m;->c(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, LK/a;->d(Ljava/lang/Object;IILC/h;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, LK/a;->a:LJ/n;

    invoke-interface {v1, v0, p2, p3, p4}, LJ/n;->b(Ljava/lang/Object;IILC/h;)LJ/n$a;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p3, LJ/n$a;

    iget-object p4, p2, LJ/n$a;->a:LC/e;

    invoke-static {p1}, LK/a;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, LJ/n$a;->c:LD/d;

    invoke-direct {p3, p4, p1, p2}, LJ/n$a;-><init>(LC/e;Ljava/util/List;LD/d;)V

    return-object p3

    :cond_5
    :goto_1
    return-object p2
.end method

.method public d(Ljava/lang/Object;IILC/h;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LC/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;IILC/h;)LJ/h;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LC/h;",
            ")",
            "LJ/h;"
        }
    .end annotation

    sget-object p1, LJ/h;->b:LJ/h;

    return-object p1
.end method

.method public abstract f(Ljava/lang/Object;IILC/h;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LC/h;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
