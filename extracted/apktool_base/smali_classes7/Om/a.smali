.class public LOm/a;
.super LWm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOm/a$b;
    }
.end annotation


# instance fields
.field public final a:LNm/a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LNm/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LNm/c$a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LWm/a;-><init>()V

    .line 3
    new-instance v0, LNm/a;

    invoke-direct {v0}, LNm/a;-><init>()V

    iput-object v0, p0, LOm/a;->a:LNm/a;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOm/a;->b:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LOm/a;->e:Z

    .line 6
    iput-object p1, p0, LOm/a;->c:Ljava/util/List;

    .line 7
    iput-object p2, p0, LOm/a;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;LOm/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LOm/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, LOm/a;->l(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, LOm/a;->m(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j(ZZ)LNm/c$a;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, LNm/c$a;->CENTER:LNm/c$a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, LNm/c$a;->LEFT:LNm/c$a;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, LNm/c$a;->RIGHT:LNm/c$a;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "LNm/c$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-ge v2, v5, :cond_9

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_8

    const/16 v7, 0x20

    if-eq v5, v7, :cond_8

    const/16 v7, 0x2d

    const/16 v8, 0x3a

    const/4 v9, 0x1

    if-eq v5, v7, :cond_2

    if-eq v5, v8, :cond_2

    const/16 v3, 0x7c

    if-eq v5, v3, :cond_0

    return-object v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    if-le v4, v9, :cond_1

    return-object v6

    :cond_1
    move v3, v9

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v6

    :cond_3
    if-ne v5, v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v4, v9

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    move v5, v1

    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v2, v10, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_5

    add-int/lit8 v2, v2, 0x1

    move v5, v9

    goto :goto_2

    :cond_5
    if-nez v5, :cond_6

    return-object v6

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v9, v1

    :goto_3
    invoke-static {v4, v9}, LOm/a;->j(ZZ)LNm/c$a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    return-object v6

    :cond_a
    return-object v0
.end method

.method public static m(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    const/16 v7, 0x7c

    if-eq v5, v6, :cond_2

    if-eq v5, v7, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v4, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, LOm/a;->e:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, LOm/a;->e:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOm/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public d(LWm/h;)LWm/c;
    .locals 2

    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-static {p1}, LWm/c;->b(I)LWm/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public e(LVm/a;)V
    .locals 8

    iget-object v0, p0, LOm/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, LNm/d;

    invoke-direct {v1}, LNm/d;-><init>()V

    iget-object v2, p0, LOm/a;->a:LNm/a;

    invoke-virtual {v2, v1}, LUm/v;->d(LUm/v;)V

    new-instance v2, LNm/e;

    invoke-direct {v2}, LNm/e;-><init>()V

    invoke-virtual {v1, v2}, LUm/v;->d(LUm/v;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, LOm/a;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v3, p1}, LOm/a;->k(Ljava/lang/String;ILVm/a;)LNm/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, LNm/c;->s(Z)V

    invoke-virtual {v2, v4}, LUm/v;->d(LUm/v;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, LOm/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, LOm/a;->m(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    new-instance v5, LNm/e;

    invoke-direct {v5}, LNm/e;-><init>()V

    move v6, v1

    :goto_2
    if-ge v6, v0, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string v7, ""

    :goto_3
    invoke-virtual {p0, v7, v6, p1}, LOm/a;->k(Ljava/lang/String;ILVm/a;)LNm/c;

    move-result-object v7

    invoke-virtual {v5, v7}, LUm/v;->d(LUm/v;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, LNm/b;

    invoke-direct {v3}, LNm/b;-><init>()V

    iget-object v4, p0, LOm/a;->a:LNm/a;

    invoke-virtual {v4, v3}, LUm/v;->d(LUm/v;)V

    :cond_3
    invoke-virtual {v3, v5}, LUm/v;->d(LUm/v;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getBlock()LUm/b;
    .locals 1

    iget-object v0, p0, LOm/a;->a:LNm/a;

    return-object v0
.end method

.method public final k(Ljava/lang/String;ILVm/a;)LNm/c;
    .locals 2

    new-instance v0, LNm/c;

    invoke-direct {v0}, LNm/c;-><init>()V

    iget-object v1, p0, LOm/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, LOm/a;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LNm/c$a;

    invoke-virtual {v0, p2}, LNm/c;->r(LNm/c$a;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v0}, LVm/a;->a(Ljava/lang/String;LUm/v;)V

    return-object v0
.end method
