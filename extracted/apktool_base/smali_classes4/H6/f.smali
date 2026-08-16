.class public LH6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LH6/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LH6/f;->a:Ljava/lang/String;

    iput-object v0, p0, LH6/f;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LH6/f;->c:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, LH6/f;->d:Z

    return-void
.end method


# virtual methods
.method public final a(IIILjava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "lineStart",
            "operatorsFound",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, LH6/e;

    invoke-direct {v6}, LH6/e;-><init>()V

    const/4 v7, 0x1

    sub-int/2addr p2, v7

    iput p2, v6, LH6/e;->a:I

    invoke-virtual {p0, v6}, LH6/f;->g(LH6/e;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v8, p1, 0x1

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x2

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, LH6/f;->h(LH6/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ID"

    invoke-virtual {p0, p2, v0}, LH6/f;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v8, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string p2, ""

    invoke-interface {p4, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LH6/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, LH6/f;->c:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FOUND THE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " OPERATOR BUT THE NEXT IS A SUB, SO CREATING A INVERSE OF THE VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    invoke-virtual {v6}, LH6/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    const-string p1, "BREAKING LOOP, WAITING TO REPEAT"

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    iput-boolean v7, p0, LH6/f;->d:Z

    return-object p4
.end method

.method public final b(IIILjava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "lineStart",
            "operatorsFound",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, LH6/e;

    invoke-direct {v6}, LH6/e;-><init>()V

    const/4 v7, 0x1

    sub-int/2addr p2, v7

    iput p2, v6, LH6/e;->a:I

    invoke-virtual {p0, v6}, LH6/f;->g(LH6/e;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v8, p1, -0x1

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v9, p1, 0x1

    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, LH6/f;->h(LH6/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ID"

    invoke-virtual {p0, p2, v0}, LH6/f;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v8, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string p2, ""

    invoke-interface {p4, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, v9, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LH6/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, LH6/f;->c:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FOUND THE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " OPERATOR, CREATING A REDUCER "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    invoke-virtual {v6}, LH6/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    const-string p1, "BREAKING LOOP, WAITING TO REPEAT"

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    iput-boolean v7, p0, LH6/f;->d:Z

    return-object p4
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REMOVING EMPTY AT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, LH6/f;->i(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/2addr v5, v7

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    const-string v15, "SUB"

    const-string v3, "ADD"

    const-string v7, "EQUAL DETECTED OUTSIDE A FUNCTION, IGNORING"

    move/from16 v17, v9

    const-string v9, "EQUAL DETECTED OUTSIDE A LINE, IGNORING"

    move/from16 v18, v11

    const-string v11, "EQUAL DETECTED, ENTERING EXPRESSION AT "

    move/from16 v19, v13

    const-string v13, "EQUAL"

    move/from16 v20, v12

    const-string v12, "FOUND A ID INSIDE A FUNC, BUT NO EQUALS WAS FOUND BEFORE, ENTERING A LINE AT "

    move-object/from16 v21, v15

    const-string v15, "ID"

    move/from16 v22, v10

    const-string v10, "else"

    move-object/from16 v23, v3

    const-string v3, "if"

    move-object/from16 v24, v7

    const-string v7, "use"

    move-object/from16 v25, v9

    const-string v9, "FUNCTION FOUND WAITING TO ENTER"

    move-object/from16 v26, v11

    const-string v11, "fun"

    move-object/from16 v27, v13

    const-string v13, "cls"

    move-object/from16 v28, v12

    const-string v12, "KEYWORD"

    move/from16 v29, v8

    const-string v8, ""

    move/from16 v30, v6

    const-string v6, "FOUND THE FIRST OPERATOR, ADD INSIDE A EXPRESSION"

    move-object/from16 v31, v6

    const-string v6, "@"

    if-ge v2, v14, :cond_1e

    if-nez v4, :cond_1c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_1c

    iput-object v8, v0, LH6/f;->a:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-virtual {v14, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v4

    const/4 v4, 0x1

    invoke-virtual {v14, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->a:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move/from16 v32, v4

    const/4 v4, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v14, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->a:Ljava/lang/String;

    :goto_3
    iput-object v8, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v14, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->b:Ljava/lang/String;

    :cond_4
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v9}, LH6/f;->i(Ljava/lang/String;)V

    move/from16 v9, v17

    const/4 v13, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    move/from16 v13, v19

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    move/from16 v9, v17

    move/from16 v13, v19

    :goto_6
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v9, :cond_a

    if-eqz v5, :cond_a

    if-nez v30, :cond_a

    if-nez v29, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    move/from16 v8, v29

    :goto_7
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v14, v27

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v5, :cond_c

    if-eqz v8, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    :cond_d
    :goto_8
    move/from16 v6, v30

    :goto_9
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v6, :cond_e

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v10, v22, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v1, v31

    move/from16 v10, v22

    :goto_a
    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    :cond_f
    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    const-string v4, "MUL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v6, :cond_10

    if-nez v10, :cond_11

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    :cond_10
    move/from16 v12, v20

    move/from16 v4, v32

    goto :goto_b

    :cond_11
    const/4 v4, 0x1

    const/4 v12, 0x1

    :goto_b
    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    const-string v7, "DIV"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v6, :cond_13

    if-nez v10, :cond_12

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_12
    const/4 v4, 0x1

    const/4 v12, 0x1

    :cond_13
    :goto_c
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    const-string v3, "LPAREN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v5, :cond_15

    if-eqz v8, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LPAREN DETECTED, ENTERING EXPRESSION AT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v11, 0x1

    goto :goto_e

    :cond_14
    const-string v1, "LPAREN DETECTED OUTSIDE A LINE, IGNORING"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_d

    :cond_15
    const-string v1, "LPAREN DETECTED OUTSIDE A FUNCTION, IGNORING"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    :cond_16
    :goto_d
    move/from16 v11, v18

    :goto_e
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    const-string v3, "RPAREN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v6, :cond_17

    if-eqz v11, :cond_17

    const-string v1, "LEAVING EXPRESSION BY RPAREN"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_17
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    const-string v3, "COMMA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v6, :cond_18

    const-string v1, "RESETING EXPRESSION BY COMMA"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_18
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    const-string v3, "SEMICOLON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v6, :cond_19

    const-string v1, "LEAVING EXPRESSION BY SEMICOLON"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :cond_19
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    const-string v3, "LBRACE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v13, :cond_1a

    const-string v1, "ENTERING FUNCTION"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_1a
    if-eqz v5, :cond_1b

    if-eqz v9, :cond_1b

    const/4 v9, 0x0

    :cond_1b
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    const-string v3, "RBRACE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v5, :cond_1d

    const-string v1, "LEAVING FUNCTION"

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    move/from16 v32, v4

    move/from16 v9, v17

    move/from16 v11, v18

    move/from16 v13, v19

    move/from16 v12, v20

    move/from16 v10, v22

    move/from16 v8, v29

    move/from16 v6, v30

    move/from16 v4, v32

    :cond_1d
    :goto_f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v1, v25

    move-object/from16 v5, v26

    move-object/from16 v14, v27

    move-object/from16 v4, v28

    move-object/from16 v33, v31

    const/4 v2, 0x0

    iput-boolean v2, v0, LH6/f;->d:Z

    move-object/from16 v16, p1

    move-object/from16 v30, v1

    move/from16 v17, v2

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v22, v19

    move/from16 v25, v22

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v29, v27

    move/from16 v34, v29

    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_53

    if-nez v17, :cond_52

    move-object/from16 v1, v16

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v31, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_51

    iput-object v8, v0, LH6/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1f

    move-object/from16 v16, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v32, v14

    const/4 v14, 0x1

    invoke-virtual {v1, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, LH6/f;->a:Ljava/lang/String;

    goto :goto_11

    :cond_1f
    move-object/from16 v16, v5

    move-object/from16 v32, v14

    const/4 v14, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v1, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, LH6/f;->a:Ljava/lang/String;

    :goto_11
    iput-object v8, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v1, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v1, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH6/f;->b:Ljava/lang/String;

    :cond_20
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_13

    :cond_21
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, v9}, LH6/f;->i(Ljava/lang/String;)V

    move/from16 v27, v14

    goto :goto_13

    :cond_22
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_13

    :cond_23
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_12
    move/from16 v25, v14

    goto :goto_13

    :cond_24
    iget-object v1, v0, LH6/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_12

    :cond_25
    :goto_13
    iget-object v1, v0, LH6/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-nez v25, :cond_26

    if-eqz v18, :cond_26

    if-nez v19, :cond_26

    if-nez v22, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LH6/f;->i(Ljava/lang/String;)V

    move v1, v2

    move/from16 v22, v14

    goto :goto_14

    :cond_26
    move/from16 v1, v29

    :goto_14
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v14, v32

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz v18, :cond_28

    if-eqz v22, :cond_27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v3

    move-object/from16 v3, v16

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    move-object/from16 v5, v30

    const/16 v19, 0x1

    goto :goto_16

    :cond_27
    move-object/from16 v32, v3

    move-object/from16 v3, v16

    move-object/from16 v5, v30

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    move-object/from16 v3, v24

    goto :goto_15

    :cond_28
    move-object/from16 v32, v3

    move-object/from16 v3, v24

    move-object/from16 v5, v30

    invoke-virtual {v0, v3}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    move-object/from16 v32, v3

    move-object/from16 v3, v24

    move-object/from16 v5, v30

    :goto_15
    move-object/from16 v24, v3

    :goto_16
    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v30, v4

    const-string v4, "STRING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    const-string v4, "INT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    const-string v4, "FLOAT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v3, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "FOUND THE "

    move-object/from16 p1, v5

    const-string v5, "[SUB]"

    if-eqz v3, :cond_31

    if-eqz v19, :cond_31

    if-nez v26, :cond_2e

    move/from16 v3, v34

    if-nez v3, :cond_2b

    move-object/from16 v34, v6

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v35, v7

    move-object/from16 v7, v31

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v7, v6

    move-object/from16 v31, v8

    move-object/from16 v6, v33

    const/16 v17, 0x1

    :goto_17
    move-object/from16 v33, v9

    goto/16 :goto_1a

    :cond_2a
    move-object/from16 v6, v33

    invoke-virtual {v0, v6}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v31, v8

    goto :goto_17

    :cond_2b
    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v7, v31

    move-object/from16 v6, v33

    if-nez v20, :cond_2d

    move-object/from16 v31, v8

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    :goto_18
    move-object/from16 v33, v9

    :goto_19
    const/16 v17, 0x1

    goto/16 :goto_1a

    :cond_2c
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_18

    :cond_2d
    move-object/from16 v31, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v9

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " OPERATOR, ITS A ADD AND THERES A MULT OR DIV WAITING FIRST, IGNORING"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_1a

    :cond_2e
    move-object/from16 v35, v7

    move-object/from16 v7, v31

    move/from16 v3, v34

    move-object/from16 v34, v6

    move-object/from16 v31, v8

    move-object/from16 v6, v33

    move-object/from16 v33, v9

    if-nez v20, :cond_30

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_19

    :cond_2f
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_19

    :cond_30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " OPERATOR, ITS A ADD AND THERES A MULT OR DIV WAITING FIRST, IGNORING"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_1a

    :cond_31
    move-object/from16 v35, v7

    move-object/from16 v7, v31

    move/from16 v3, v34

    move-object/from16 v34, v6

    move-object/from16 v31, v8

    move-object/from16 v6, v33

    goto/16 :goto_17

    :goto_1a
    iget-object v8, v0, LH6/f;->a:Ljava/lang/String;

    move-object/from16 v9, v21

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    if-eqz v19, :cond_33

    if-eqz v26, :cond_38

    if-nez v3, :cond_35

    invoke-virtual {v0, v2, v7}, LH6/f;->e(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v0, v2, v7}, LH6/f;->f(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_32

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    :goto_1b
    const/4 v4, 0x1

    goto/16 :goto_1e

    :cond_32
    const-string v4, "FOUND THE FIRST OPERATOR, SUB INSIDE A EXPRESSION"

    invoke-virtual {v0, v4}, LH6/f;->i(Ljava/lang/String;)V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    :cond_33
    :goto_1d
    move/from16 v4, v17

    goto/16 :goto_1e

    :cond_34
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1b

    :cond_35
    if-nez v20, :cond_37

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1b

    :cond_36
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1b

    :cond_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " OPERATOR, ITS A SUB AND THERES A MULT OR DIV WAITING FIRST, IGNORING"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_1d

    :cond_38
    if-nez v3, :cond_39

    const-string v4, "FOUND THE FIRST OPERATOR, SUB INSIDE A EXPRESSION"

    invoke-virtual {v0, v4}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_1c

    :cond_39
    if-nez v20, :cond_3b

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1b

    :cond_3a
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1b

    :cond_3b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " OPERATOR, ITS A SUB AND THERES A MULT OR DIV WAITING FIRST, IGNORING"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1e
    iget-object v8, v0, LH6/f;->a:Ljava/lang/String;

    move/from16 v17, v4

    const-string v4, "MUL"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    if-eqz v19, :cond_3d

    if-nez v26, :cond_40

    if-nez v3, :cond_3e

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    :goto_1f
    const/4 v4, 0x1

    goto :goto_20

    :cond_3c
    invoke-virtual {v0, v6}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    :cond_3d
    move/from16 v4, v17

    goto :goto_20

    :cond_3e
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1f

    :cond_3f
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1f

    :cond_40
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1f

    :cond_41
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_1f

    :goto_20
    iget-object v8, v0, LH6/f;->a:Ljava/lang/String;

    move/from16 v17, v4

    const-string v4, "DIV"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    if-eqz v19, :cond_43

    if-nez v26, :cond_46

    if-nez v3, :cond_44

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    :goto_21
    const/4 v4, 0x1

    goto :goto_22

    :cond_42
    invoke-virtual {v0, v6}, LH6/f;->i(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    :cond_43
    move/from16 v4, v17

    goto :goto_22

    :cond_44
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_21

    :cond_45
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_21

    :cond_46
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->a(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_21

    :cond_47
    invoke-virtual {v0, v2, v1, v3, v7}, LH6/f;->b(IIILjava/util/List;)Ljava/util/List;

    move-result-object v7

    goto :goto_21

    :goto_22
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    const-string v8, "LPAREN"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    if-eqz v18, :cond_49

    if-eqz v22, :cond_48

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LPAREN DETECTED, ENTERING EXPRESSION AT "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    const/16 v19, 0x1

    const/16 v26, 0x1

    goto :goto_23

    :cond_48
    const-string v5, "LPAREN DETECTED OUTSIDE A LINE, IGNORING"

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    goto :goto_23

    :cond_49
    const-string v5, "LPAREN DETECTED OUTSIDE A FUNCTION, IGNORING"

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    :cond_4a
    :goto_23
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    const-string v8, "RPAREN"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    if-eqz v19, :cond_4b

    if-eqz v26, :cond_4b

    const-string v3, "LEAVING EXPRESSION BY RPAREN"

    invoke-virtual {v0, v3}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v26, 0x0

    :cond_4b
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    const-string v8, "COMMA"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    if-eqz v19, :cond_4c

    const-string v3, "RESETING EXPRESSION BY COMMA"

    invoke-virtual {v0, v3}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_4c
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    const-string v8, "SEMICOLON"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    if-eqz v19, :cond_4d

    const-string v3, "LEAVING EXPRESSION BY SEMICOLON"

    invoke-virtual {v0, v3}, LH6/f;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    :cond_4d
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    const-string v8, "LBRACE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    if-eqz v27, :cond_4e

    const-string v5, "ENTERING FUNCTION"

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    const/16 v18, 0x1

    :cond_4e
    if-eqz v18, :cond_4f

    if-eqz v25, :cond_4f

    const/16 v25, 0x0

    :cond_4f
    iget-object v5, v0, LH6/f;->a:Ljava/lang/String;

    const-string v8, "RBRACE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    if-eqz v18, :cond_50

    const-string v5, "LEAVING FUNCTION"

    invoke-virtual {v0, v5}, LH6/f;->i(Ljava/lang/String;)V

    move/from16 v29, v1

    move/from16 v17, v4

    const/16 v18, 0x0

    const/16 v27, 0x0

    goto :goto_25

    :cond_50
    move/from16 v29, v1

    move/from16 v17, v4

    goto :goto_25

    :cond_51
    move-object/from16 v32, v3

    move-object/from16 v16, v5

    move-object/from16 v35, v7

    move-object/from16 p1, v30

    move-object/from16 v7, v31

    move/from16 v3, v34

    move-object/from16 v30, v4

    move-object/from16 v34, v6

    move-object/from16 v31, v8

    :goto_24
    move-object/from16 v6, v33

    move-object/from16 v33, v9

    move-object/from16 v9, v21

    goto :goto_25

    :cond_52
    move-object/from16 v32, v3

    move-object/from16 v35, v7

    move-object/from16 v31, v8

    move-object/from16 v7, v16

    move-object/from16 p1, v30

    move/from16 v3, v34

    move-object/from16 v30, v4

    move-object/from16 v16, v5

    move-object/from16 v34, v6

    goto :goto_24

    :goto_25
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v9

    move-object/from16 v5, v16

    move-object/from16 v4, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-object/from16 v30, p1

    move-object/from16 v33, v6

    move-object/from16 v16, v7

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    move/from16 v34, v3

    move-object/from16 v3, v32

    goto/16 :goto_10

    :cond_53
    move-object/from16 v7, v16

    return-object v7
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    sub-int/2addr p1, v1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_1
    const-string p1, "ID"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final f(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    sub-int/2addr p1, v1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_1
    const-string p1, "INT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const-string p1, "FLOAT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final g(LH6/e;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insertion"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LH6/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, LH6/e;->b:Ljava/util/List;

    const-string v2, "float"

    const-string v3, "KEYWORD"

    invoke-virtual {p0, v2, v3}, LH6/f;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LH6/e;->b:Ljava/util/List;

    const-string v2, "ID"

    invoke-virtual {p0, v0, v2}, LH6/f;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LH6/e;->b:Ljava/util/List;

    const-string v2, "EQUAL"

    invoke-virtual {p0, v2}, LH6/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LH6/e;->b:Ljava/util/List;

    const-string v2, "0.0"

    const-string v3, "FLOAT"

    invoke-virtual {p0, v2, v3}, LH6/f;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, LH6/e;->b:Ljava/util/List;

    const-string v1, "SEMICOLON"

    invoke-virtual {p0, v1}, LH6/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final h(LH6/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insertion",
            "varName",
            "entry",
            "operator",
            "secondEntry"
        }
    .end annotation

    iget-object v0, p1, LH6/e;->b:Ljava/util/List;

    const-string v1, "ID"

    invoke-virtual {p0, p2, v1}, LH6/f;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, LH6/e;->b:Ljava/util/List;

    const-string v0, "EQUAL"

    invoke-virtual {p0, v0}, LH6/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, LH6/e;->b:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, LH6/e;->b:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, LH6/e;->b:Ljava/util/List;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, LH6/e;->b:Ljava/util/List;

    const-string p2, "SEMICOLON"

    invoke-virtual {p0, p2}, LH6/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    const-string v0, "]\\["

    const-string v1, "]@<ENTRY>@\\["

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "@<ENTRY>@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-boolean p1, p0, LH6/f;->d:Z

    if-eqz p1, :cond_2

    const-string p1, "STARTING LOOP AGAIN"

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LH6/f;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p0, LH6/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH6/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERTING AT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, LH6/e;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " THIS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LH6/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LH6/f;->i(Ljava/lang/String;)V

    iget v3, v2, LH6/e;->a:I

    add-int/lit8 v3, v3, 0x1

    iget-object v2, v2, LH6/e;->b:Ljava/util/List;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_1
    iget-object p1, p0, LH6/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    const-string p1, "BREAKING WHILE, FINISH"

    invoke-virtual {p0, p1}, LH6/f;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\']"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
