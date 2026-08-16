.class public Lqe/j$a;
.super Lqe/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqe/j;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LUm/v;)Ljava/util/List;
    .locals 2
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/v;",
            ")",
            "Ljava/util/List<",
            "LUm/v;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, LUm/v;->e()LUm/v;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, LUm/s;

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, LUm/v;->g()LUm/v;

    move-result-object v1

    invoke-virtual {v0}, LUm/v;->o()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method
