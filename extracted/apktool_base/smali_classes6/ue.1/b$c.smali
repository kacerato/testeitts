.class public Lue/b$c;
.super LUm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lqe/e;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lue/b$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lue/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lqe/e;)V
    .locals 0
    .param p1    # Lqe/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, LUm/a;-><init>()V

    iput-object p1, p0, Lue/b$c;->a:Lqe/e;

    return-void
.end method

.method public static N(LNm/c$a;)Lue/b$a;
    .locals 1
    .param p0    # LNm/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LNm/c$a;->RIGHT:LNm/c$a;

    if-ne v0, p0, :cond_0

    sget-object p0, Lue/b$a;->RIGHT:Lue/b$a;

    goto :goto_0

    :cond_0
    sget-object v0, LNm/c$a;->CENTER:LNm/c$a;

    if-ne v0, p0, :cond_1

    sget-object p0, Lue/b$a;->CENTER:Lue/b$a;

    goto :goto_0

    :cond_1
    sget-object p0, Lue/b$a;->LEFT:Lue/b$a;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public J(LUm/g;)V
    .locals 4

    instance-of v0, p1, LNm/c;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    check-cast p1, LNm/c;

    iget-object v0, p0, Lue/b$c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lue/b$c;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lue/b$c;->c:Ljava/util/List;

    new-instance v1, Lue/b$b;

    invoke-virtual {p1}, LNm/c;->p()LNm/c$a;

    move-result-object v2

    invoke-static {v2}, Lue/b$c;->N(LNm/c$a;)Lue/b$a;

    move-result-object v2

    iget-object v3, p0, Lue/b$c;->a:Lqe/e;

    invoke-virtual {v3, p1}, Lqe/e;->i(LUm/v;)Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lue/b$b;-><init>(Lue/b$a;Landroid/text/Spanned;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LNm/c;->q()Z

    move-result p1

    iput-boolean p1, p0, Lue/b$c;->d:Z

    return-void

    :cond_1
    instance-of v0, p1, LNm/d;

    if-nez v0, :cond_3

    instance-of v0, p1, LNm/e;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, LUm/a;->i(LUm/v;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, LUm/a;->i(LUm/v;)V

    iget-object p1, p0, Lue/b$c;->c:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lue/b$c;->b:Ljava/util/List;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lue/b$c;->b:Ljava/util/List;

    :cond_4
    iget-object p1, p0, Lue/b$c;->b:Ljava/util/List;

    new-instance v0, Lue/b$d;

    iget-boolean v1, p0, Lue/b$c;->d:Z

    iget-object v2, p0, Lue/b$c;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lue/b$d;-><init>(ZLjava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lue/b$c;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lue/b$c;->d:Z

    return-void
.end method

.method public O()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lue/b$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lue/b$c;->b:Ljava/util/List;

    return-object v0
.end method
