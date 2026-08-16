.class public LC6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentScriptClass",
            "line"
        }
    .end annotation

    invoke-static {p2}, LH6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "]\\["

    const-string v1, "]@<ENTRY>@\\["

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "@<ENTRY>@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    if-ltz v1, :cond_5

    aget-object v7, p2, v1

    const-string v8, "[LPAREN]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    const-string v8, "[RPAREN]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    const-string v9, "[ID@"

    if-nez v5, :cond_3

    const-string v10, "[DOT]"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v6, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v6, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, LC6/i;

    invoke-direct {v7, v6, v4, v4}, LC6/i;-><init>(Ljava/lang/String;ZZ)V

    move-object v6, v7

    goto :goto_1

    :cond_3
    if-gez v5, :cond_4

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v6, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v7, v8, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    new-instance v1, LC6/i;

    invoke-direct {v1, p2, v4, v2}, LC6/i;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v3

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    const-string v1, ""

    :goto_3
    if-ltz p2, :cond_d

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LC6/i;

    if-nez v3, :cond_b

    iget-boolean v3, v5, LC6/i;->c:Z

    if-nez v3, :cond_9

    iget-object v3, v5, LC6/i;->a:Ljava/lang/String;

    invoke-static {p1, v3}, LH6/b;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    iget-object v3, v5, LC6/i;->a:Ljava/lang/String;

    invoke-static {v3}, LH6/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, v5, LC6/i;->a:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object p2, v5, LC6/i;->a:Ljava/lang/String;

    invoke-static {p2}, LH6/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, v5, LC6/i;->a:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v6, v5, LC6/i;->a:Ljava/lang/String;

    invoke-static {v3, v6}, LH6/b;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_c

    move-object v3, v6

    goto :goto_4

    :cond_c
    iget-object v1, v5, LC6/i;->a:Ljava/lang/String;

    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_d
    move v2, v4

    :goto_5
    if-eqz v3, :cond_10

    if-nez v2, :cond_f

    if-ne v3, p1, :cond_e

    invoke-static {v3, v1}, LH6/b;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_6

    :cond_e
    invoke-static {v3, v1}, LH6/b;->e(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_6
    invoke-static {p1}, LH6/b;->g(Ljava/util/List;)Ljava/util/List;

    goto :goto_7

    :cond_f
    invoke-static {v3}, LH6/b;->b(Ljava/lang/Class;)Ljava/util/List;

    :cond_10
    :goto_7
    return-void
.end method
