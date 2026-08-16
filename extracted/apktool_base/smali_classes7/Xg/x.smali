.class public LXg/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LXg/x$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXg/A;LXg/q;LXg/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "face",
            "output"
        }
    .end annotation

    invoke-interface {p0, p1}, LXg/A;->E(LXg/q;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, LXg/D;->z(Ljava/util/Collection;)V

    :cond_0
    invoke-interface {p0, p1}, LXg/A;->d(LXg/q;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2, p0}, LXg/D;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(LXg/A;LXg/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    invoke-interface {p1}, LXg/A;->a()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, LXg/A;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, LXg/A;->n(I)LXg/i;

    move-result-object v3

    invoke-interface {p1, v3}, LXg/D;->m(LXg/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LXg/A;->h()I

    move-result v2

    move v3, v1

    :goto_1
    invoke-interface {p0}, LXg/A;->h()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p0, v3}, LXg/A;->v(I)LXg/i;

    move-result-object v4

    invoke-interface {p1, v4}, LXg/D;->D(LXg/i;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, LXg/A;->x()I

    move-result v3

    move v4, v1

    :goto_2
    invoke-interface {p0}, LXg/A;->x()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p0, v4}, LXg/A;->o(I)LXg/i;

    move-result-object v5

    invoke-interface {p1, v5}, LXg/D;->q(LXg/i;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {p0, v1}, LXg/A;->b(I)LXg/q;

    move-result-object v4

    invoke-static {p0, v4, p1}, LXg/x;->a(LXg/A;LXg/q;LXg/D;)V

    invoke-static {v4, v0, v2, v3}, LXg/s;->f(LXg/q;III)LXg/f;

    move-result-object v4

    invoke-interface {p1, v4}, LXg/D;->A(LXg/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static c(LXg/A;LXg/D;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, LXg/A;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, LXg/A;->n(I)LXg/i;

    move-result-object v2

    invoke-interface {p1, v2}, LXg/D;->m(LXg/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    invoke-interface {p0}, LXg/A;->h()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, LXg/A;->v(I)LXg/i;

    move-result-object v2

    invoke-interface {p1, v2}, LXg/D;->D(LXg/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p0}, LXg/A;->x()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, LXg/A;->o(I)LXg/i;

    move-result-object v1

    invoke-interface {p1, v1}, LXg/D;->q(LXg/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static d(LXg/A;)LXg/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v0

    invoke-static {p0, v0}, LXg/x;->e(LXg/A;LXg/D;)LXg/D;

    move-result-object p0

    check-cast p0, LXg/o;

    return-object p0
.end method

.method public static e(LXg/A;LXg/D;)LXg/D;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LXg/D;",
            ">(",
            "LXg/A;",
            "TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, LXg/x;->p(LXg/A;)LXg/o;

    move-result-object p0

    invoke-static {p0}, LXg/x;->l(LXg/A;)LXg/o;

    move-result-object p0

    invoke-static {p0}, LXg/x;->i(LXg/A;)LXg/o;

    move-result-object p0

    invoke-static {p0, p1}, LXg/x;->o(LXg/A;LXg/D;)LXg/D;

    move-result-object p0

    return-object p0
.end method

.method public static f(LXg/A;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Obj:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mtlFileNames     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    numVertices      : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    numTexCoords     : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    numNormals       : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->x()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    numFaces         : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    numGroups        : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p0}, LXg/A;->e()I

    move-result v4

    const-string v5, "            numFaces: "

    const-string v6, "            name    : "

    const-string v7, ":\n"

    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, LXg/A;->i(I)LXg/t;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        Group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, LXg/t;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, LXg/t;->getNumFaces()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    numMaterialGroups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->t()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {p0}, LXg/A;->t()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, LXg/A;->f(I)LXg/t;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        MaterialGroup "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, LXg/t;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, LXg/t;->getNumFaces()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(LXg/A;LXg/t;Ljava/util/List;)LXg/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputGroup",
            "vertexIndexMapping"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXg/A;",
            "LXg/t;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "LXg/o;"
        }
    .end annotation

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LXg/x;->h(LXg/A;LXg/t;Ljava/util/List;LXg/D;)LXg/D;

    move-result-object p0

    check-cast p0, LXg/o;

    return-object p0
.end method

.method public static h(LXg/A;LXg/t;Ljava/util/List;LXg/D;)LXg/D;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputGroup",
            "vertexIndexMapping",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LXg/D;",
            ">(",
            "LXg/A;",
            "LXg/t;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TT;)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p0 .. p0}, LXg/A;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, LXg/D;->l(Ljava/util/Collection;)V

    invoke-interface/range {p0 .. p0}, LXg/A;->a()I

    move-result v3

    new-array v3, v3, [I

    invoke-interface/range {p0 .. p0}, LXg/A;->h()I

    move-result v4

    new-array v4, v4, [I

    invoke-interface/range {p0 .. p0}, LXg/A;->x()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, -0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, LXg/t;->getNumFaces()I

    move-result v12

    if-ge v8, v12, :cond_7

    move-object/from16 v12, p1

    invoke-interface {v12, v8}, LXg/t;->b(I)LXg/q;

    move-result-object v13

    invoke-static {v13}, LXg/s;->a(LXg/q;)LXg/f;

    move-result-object v14

    invoke-static {v0, v13, v2}, LXg/x;->a(LXg/A;LXg/q;LXg/D;)V

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v13}, LXg/q;->a()I

    move-result v7

    if-ge v15, v7, :cond_1

    invoke-interface {v13, v15}, LXg/q;->f(I)I

    move-result v7

    move/from16 v16, v10

    :try_start_0
    aget v10, v3, v7

    if-ne v10, v6, :cond_0

    aput v9, v3, v7

    invoke-interface {v0, v7}, LXg/A;->n(I)LXg/i;

    move-result-object v10

    invoke-interface {v2, v10}, LXg/D;->m(LXg/i;)V

    add-int/lit8 v9, v9, 0x1

    :cond_0
    aget v7, v3, v7

    invoke-virtual {v14, v15, v7}, LXg/f;->i(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v10

    invoke-interface {v13}, LXg/q;->d()Z

    move-result v7

    if-eqz v7, :cond_4

    move/from16 v10, v16

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v13}, LXg/q;->a()I

    move-result v15

    if-ge v7, v15, :cond_3

    invoke-interface {v13, v7}, LXg/q;->e(I)I

    move-result v15

    move/from16 v17, v9

    :try_start_1
    aget v9, v4, v15

    if-ne v9, v6, :cond_2

    aput v10, v4, v15

    invoke-interface {v0, v15}, LXg/A;->v(I)LXg/i;

    move-result-object v9

    invoke-interface {v2, v9}, LXg/D;->D(LXg/i;)V

    add-int/lit8 v10, v10, 0x1

    :cond_2
    aget v9, v4, v15

    invoke-virtual {v14, v7, v9}, LXg/f;->h(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v17

    goto :goto_2

    :cond_3
    move/from16 v17, v9

    goto :goto_3

    :cond_4
    move/from16 v17, v9

    move/from16 v10, v16

    :goto_3
    invoke-interface {v13}, LXg/q;->b()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v13}, LXg/q;->a()I

    move-result v9

    if-ge v7, v9, :cond_6

    invoke-interface {v13, v7}, LXg/q;->c(I)I

    move-result v9

    :try_start_2
    aget v15, v5, v9

    if-ne v15, v6, :cond_5

    aput v11, v5, v9

    invoke-interface {v0, v9}, LXg/A;->o(I)LXg/i;

    move-result-object v15

    invoke-interface {v2, v15}, LXg/D;->q(LXg/i;)V

    add-int/lit8 v11, v11, 0x1

    :cond_5
    aget v9, v5, v9

    invoke-virtual {v14, v7, v9}, LXg/f;->g(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v2, v14}, LXg/D;->A(LXg/q;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v17

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_a

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_6
    invoke-interface/range {p0 .. p0}, LXg/A;->a()I

    move-result v4

    if-ge v7, v4, :cond_a

    aget v4, v3, v7

    if-eq v4, v6, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    return-object v2
.end method

.method public static i(LXg/A;)LXg/o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v1

    invoke-static {p0, v0, v1}, LXg/x;->j(LXg/A;Ljava/util/List;LXg/D;)LXg/D;

    move-result-object p0

    check-cast p0, LXg/o;

    return-object p0
.end method

.method public static j(LXg/A;Ljava/util/List;LXg/D;)LXg/D;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "indexMapping",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LXg/D;",
            ">(",
            "LXg/A;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TT;)TT;"
        }
    .end annotation

    new-instance v0, LXg/x$b;

    invoke-direct {v0}, LXg/x$b;-><init>()V

    invoke-static {p0, v0, p1, p2}, LXg/x;->k(LXg/A;LXg/x$e;Ljava/util/List;LXg/D;)V

    return-object p2
.end method

.method public static k(LXg/A;LXg/x$e;Ljava/util/List;LXg/D;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "propertyIndexAccessor",
            "indexMapping",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXg/A;",
            "LXg/x$e;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "LXg/D;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, LXg/A;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, LXg/D;->l(Ljava/util/Collection;)V

    invoke-static {p0, p3}, LXg/x;->c(LXg/A;LXg/D;)V

    invoke-interface {p0}, LXg/A;->a()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {p0, v4}, LXg/A;->b(I)LXg/q;

    move-result-object v5

    invoke-static {p0, v5, p3}, LXg/x;->a(LXg/A;LXg/q;LXg/D;)V

    invoke-interface {p1, v5}, LXg/x$e;->a(LXg/q;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move v7, v3

    :goto_1
    invoke-interface {v5}, LXg/q;->a()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-interface {v5, v7}, LXg/q;->f(I)I

    move-result v8

    invoke-interface {p1, p0, v5, v7}, LXg/x$e;->b(LXg/A;LXg/q;I)I

    move-result v9

    aget v10, v0, v8

    if-eq v10, v1, :cond_1

    if-eq v10, v9, :cond_1

    invoke-interface {p0, v8}, LXg/A;->n(I)LXg/i;

    move-result-object v9

    invoke-interface {p0}, LXg/A;->a()I

    move-result v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v9}, LXg/D;->m(LXg/i;)V

    if-nez v6, :cond_0

    invoke-static {v5}, LXg/s;->a(LXg/q;)LXg/f;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, v7, v10}, LXg/f;->i(II)V

    if-eqz p2, :cond_2

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    aput v9, v0, v8

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    move-object v5, v6

    :cond_4
    invoke-interface {p3, v5}, LXg/D;->A(LXg/q;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static l(LXg/A;)LXg/o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v1

    invoke-static {p0, v0, v1}, LXg/x;->m(LXg/A;Ljava/util/List;LXg/D;)LXg/D;

    move-result-object p0

    check-cast p0, LXg/o;

    return-object p0
.end method

.method public static m(LXg/A;Ljava/util/List;LXg/D;)LXg/D;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "indexMapping",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LXg/D;",
            ">(",
            "LXg/A;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TT;)TT;"
        }
    .end annotation

    new-instance v0, LXg/x$a;

    invoke-direct {v0}, LXg/x$a;-><init>()V

    invoke-static {p0, v0, p1, p2}, LXg/x;->k(LXg/A;LXg/x$e;Ljava/util/List;LXg/D;)V

    return-object p2
.end method

.method public static n(LXg/A;)LXg/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v0

    invoke-static {p0, v0}, LXg/x;->o(LXg/A;LXg/D;)LXg/D;

    move-result-object p0

    check-cast p0, LXg/o;

    return-object p0
.end method

.method public static o(LXg/A;LXg/D;)LXg/D;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LXg/D;",
            ">(",
            "LXg/A;",
            "TT;)TT;"
        }
    .end annotation

    invoke-interface {p0}, LXg/A;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, LXg/D;->l(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, LXg/A;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, LXg/A;->n(I)LXg/i;

    move-result-object v2

    invoke-interface {p1, v2}, LXg/D;->m(LXg/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LXg/A;->a()I

    move-result v1

    new-array v1, v1, [I

    invoke-interface {p0}, LXg/A;->a()I

    move-result v2

    new-array v2, v2, [I

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-interface {p0, v3}, LXg/A;->b(I)LXg/q;

    move-result-object v6

    move v7, v0

    :goto_2
    invoke-interface {v6}, LXg/q;->a()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-interface {v6, v7}, LXg/q;->f(I)I

    move-result v8

    invoke-interface {v6}, LXg/q;->d()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-interface {v6, v7}, LXg/q;->e(I)I

    move-result v4

    aput v4, v1, v8

    move v4, v10

    :cond_1
    invoke-interface {v6}, LXg/q;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6, v7}, LXg/q;->c(I)I

    move-result v5

    aput v5, v2, v8

    move v5, v10

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    move v3, v0

    :goto_3
    invoke-interface {p0}, LXg/A;->a()I

    move-result v4

    if-ge v3, v4, :cond_5

    :try_start_0
    aget v4, v1, v3

    invoke-interface {p0, v4}, LXg/A;->v(I)LXg/i;

    move-result-object v4

    invoke-interface {p1, v4}, LXg/D;->D(LXg/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance v4, LXg/x$c;

    invoke-direct {v4}, LXg/x$c;-><init>()V

    invoke-interface {p1, v4}, LXg/D;->D(LXg/i;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    move v1, v0

    :goto_5
    invoke-interface {p0}, LXg/A;->a()I

    move-result v3

    if-ge v1, v3, :cond_6

    aget v3, v2, v1

    :try_start_1
    invoke-interface {p0, v3}, LXg/A;->o(I)LXg/i;

    move-result-object v3

    invoke-interface {p1, v3}, LXg/D;->q(LXg/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    new-instance v3, LXg/x$d;

    invoke-direct {v3}, LXg/x$d;-><init>()V

    invoke-interface {p1, v3}, LXg/D;->q(LXg/i;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_7
    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-interface {p0, v1}, LXg/A;->b(I)LXg/q;

    move-result-object v2

    invoke-static {p0, v2, p1}, LXg/x;->a(LXg/A;LXg/q;LXg/D;)V

    invoke-static {v2}, LXg/s;->a(LXg/q;)LXg/f;

    move-result-object v3

    invoke-interface {v2}, LXg/q;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v0

    :goto_8
    invoke-interface {v2}, LXg/q;->a()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v3, v4}, LXg/f;->f(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, LXg/f;->h(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    invoke-interface {v2}, LXg/q;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v0

    :goto_9
    invoke-interface {v2}, LXg/q;->a()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v3, v4}, LXg/f;->f(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, LXg/f;->g(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_8
    invoke-interface {p1, v3}, LXg/D;->A(LXg/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    return-object p1
.end method

.method public static p(LXg/A;)LXg/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v0

    invoke-static {p0, v0}, LXg/x;->q(LXg/A;LXg/D;)LXg/D;

    move-result-object p0

    check-cast p0, LXg/o;

    return-object p0
.end method

.method public static q(LXg/A;LXg/D;)LXg/D;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LXg/D;",
            ">(",
            "LXg/A;",
            "TT;)TT;"
        }
    .end annotation

    invoke-interface {p0}, LXg/A;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, LXg/D;->l(Ljava/util/Collection;)V

    invoke-static {p0, p1}, LXg/x;->c(LXg/A;LXg/D;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, LXg/A;->b(I)LXg/q;

    move-result-object v2

    invoke-static {p0, v2, p1}, LXg/x;->a(LXg/A;LXg/q;LXg/D;)V

    invoke-interface {v2}, LXg/q;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p1, v2}, LXg/D;->A(LXg/q;)V

    goto :goto_2

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {v2}, LXg/q;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    filled-new-array {v0, v4, v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, LXg/s;->b(LXg/q;[I)LXg/f;

    move-result-object v3

    invoke-interface {p1, v3}, LXg/D;->A(LXg/q;)V

    move v3, v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method
