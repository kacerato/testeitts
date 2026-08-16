.class public final LLg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/w$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field

.field public final b:LKg/f;

.field public final c:LLg/c;

.field public final d:LKg/c;

.field public final e:I

.field public final f:Lokhttp3/C;

.field public final g:Lokhttp3/e;

.field public final h:Lokhttp3/r;

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/util/List;LKg/f;LLg/c;LKg/c;ILokhttp3/C;Lokhttp3/e;Lokhttp3/r;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/w;",
            ">;",
            "LKg/f;",
            "LLg/c;",
            "LKg/c;",
            "I",
            "Lokhttp3/C;",
            "Lokhttp3/e;",
            "Lokhttp3/r;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLg/g;->a:Ljava/util/List;

    iput-object p4, p0, LLg/g;->d:LKg/c;

    iput-object p2, p0, LLg/g;->b:LKg/f;

    iput-object p3, p0, LLg/g;->c:LLg/c;

    iput p5, p0, LLg/g;->e:I

    iput-object p6, p0, LLg/g;->f:Lokhttp3/C;

    iput-object p7, p0, LLg/g;->g:Lokhttp3/e;

    iput-object p8, p0, LLg/g;->h:Lokhttp3/r;

    iput p9, p0, LLg/g;->i:I

    iput p10, p0, LLg/g;->j:I

    iput p11, p0, LLg/g;->k:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LLg/g;->j:I

    return v0
.end method

.method public b(ILjava/util/concurrent/TimeUnit;)Lokhttp3/w$a;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "timeout"

    move/from16 v2, p1

    int-to-long v2, v2

    move-object/from16 v4, p2

    invoke-static {v1, v2, v3, v4}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v13

    new-instance v1, LLg/g;

    iget-object v5, v0, LLg/g;->a:Ljava/util/List;

    iget-object v6, v0, LLg/g;->b:LKg/f;

    iget-object v7, v0, LLg/g;->c:LLg/c;

    iget-object v8, v0, LLg/g;->d:LKg/c;

    iget v9, v0, LLg/g;->e:I

    iget-object v10, v0, LLg/g;->f:Lokhttp3/C;

    iget-object v11, v0, LLg/g;->g:Lokhttp3/e;

    iget-object v12, v0, LLg/g;->h:Lokhttp3/r;

    iget v14, v0, LLg/g;->j:I

    iget v15, v0, LLg/g;->k:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, LLg/g;-><init>(Ljava/util/List;LKg/f;LLg/c;LKg/c;ILokhttp3/C;Lokhttp3/e;Lokhttp3/r;III)V

    return-object v1
.end method

.method public b0()Lokhttp3/C;
    .locals 1

    iget-object v0, p0, LLg/g;->f:Lokhttp3/C;

    return-object v0
.end method

.method public c(Lokhttp3/C;)Lokhttp3/E;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LLg/g;->b:LKg/f;

    iget-object v1, p0, LLg/g;->c:LLg/c;

    iget-object v2, p0, LLg/g;->d:LKg/c;

    invoke-virtual {p0, p1, v0, v1, v2}, LLg/g;->k(Lokhttp3/C;LKg/f;LLg/c;LKg/c;)Lokhttp3/E;

    move-result-object p1

    return-object p1
.end method

.method public call()Lokhttp3/e;
    .locals 1

    iget-object v0, p0, LLg/g;->g:Lokhttp3/e;

    return-object v0
.end method

.method public d()Lokhttp3/j;
    .locals 1

    iget-object v0, p0, LLg/g;->d:LKg/c;

    return-object v0
.end method

.method public e(ILjava/util/concurrent/TimeUnit;)Lokhttp3/w$a;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "timeout"

    move/from16 v2, p1

    int-to-long v2, v2

    move-object/from16 v4, p2

    invoke-static {v1, v2, v3, v4}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v14

    new-instance v1, LLg/g;

    iget-object v5, v0, LLg/g;->a:Ljava/util/List;

    iget-object v6, v0, LLg/g;->b:LKg/f;

    iget-object v7, v0, LLg/g;->c:LLg/c;

    iget-object v8, v0, LLg/g;->d:LKg/c;

    iget v9, v0, LLg/g;->e:I

    iget-object v10, v0, LLg/g;->f:Lokhttp3/C;

    iget-object v11, v0, LLg/g;->g:Lokhttp3/e;

    iget-object v12, v0, LLg/g;->h:Lokhttp3/r;

    iget v13, v0, LLg/g;->i:I

    iget v15, v0, LLg/g;->k:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, LLg/g;-><init>(Ljava/util/List;LKg/f;LLg/c;LKg/c;ILokhttp3/C;Lokhttp3/e;Lokhttp3/r;III)V

    return-object v1
.end method

.method public f(ILjava/util/concurrent/TimeUnit;)Lokhttp3/w$a;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "timeout"

    move/from16 v2, p1

    int-to-long v2, v2

    move-object/from16 v4, p2

    invoke-static {v1, v2, v3, v4}, LGg/c;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v15

    new-instance v1, LLg/g;

    iget-object v5, v0, LLg/g;->a:Ljava/util/List;

    iget-object v6, v0, LLg/g;->b:LKg/f;

    iget-object v7, v0, LLg/g;->c:LLg/c;

    iget-object v8, v0, LLg/g;->d:LKg/c;

    iget v9, v0, LLg/g;->e:I

    iget-object v10, v0, LLg/g;->f:Lokhttp3/C;

    iget-object v11, v0, LLg/g;->g:Lokhttp3/e;

    iget-object v12, v0, LLg/g;->h:Lokhttp3/r;

    iget v13, v0, LLg/g;->i:I

    iget v14, v0, LLg/g;->j:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, LLg/g;-><init>(Ljava/util/List;LKg/f;LLg/c;LKg/c;ILokhttp3/C;Lokhttp3/e;Lokhttp3/r;III)V

    return-object v1
.end method

.method public g()I
    .locals 1

    iget v0, p0, LLg/g;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LLg/g;->i:I

    return v0
.end method

.method public i()Lokhttp3/r;
    .locals 1

    iget-object v0, p0, LLg/g;->h:Lokhttp3/r;

    return-object v0
.end method

.method public j()LLg/c;
    .locals 1

    iget-object v0, p0, LLg/g;->c:LLg/c;

    return-object v0
.end method

.method public k(Lokhttp3/C;LKg/f;LLg/c;LKg/c;)Lokhttp3/E;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, LLg/g;->e:I

    iget-object v2, v0, LLg/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget v1, v0, LLg/g;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, LLg/g;->l:I

    iget-object v1, v0, LLg/g;->c:LLg/c;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, LLg/g;->d:LKg/c;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v4

    invoke-virtual {v1, v4}, LKg/c;->u(Lokhttp3/v;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, LLg/g;->a:Ljava/util/List;

    iget v5, v0, LLg/g;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, v0, LLg/g;->c:LLg/c;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, LLg/g;->l:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, LLg/g;->a:Ljava/util/List;

    iget v6, v0, LLg/g;->e:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    new-instance v1, LLg/g;

    iget-object v6, v0, LLg/g;->a:Ljava/util/List;

    iget v5, v0, LLg/g;->e:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, LLg/g;->g:Lokhttp3/e;

    iget-object v13, v0, LLg/g;->h:Lokhttp3/r;

    iget v14, v0, LLg/g;->i:I

    iget v15, v0, LLg/g;->j:I

    iget v11, v0, LLg/g;->k:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, LLg/g;-><init>(Ljava/util/List;LKg/f;LLg/c;LKg/c;ILokhttp3/C;Lokhttp3/e;Lokhttp3/r;III)V

    iget-object v5, v0, LLg/g;->a:Ljava/util/List;

    iget v6, v0, LLg/g;->e:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/w;

    invoke-interface {v5, v1}, Lokhttp3/w;->a(Lokhttp3/w$a;)Lokhttp3/E;

    move-result-object v6

    if-eqz p3, :cond_5

    iget v7, v0, LLg/g;->e:I

    add-int/2addr v7, v2

    iget-object v8, v0, LLg/g;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v1, v1, LLg/g;->l:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v6

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public l()LKg/f;
    .locals 1

    iget-object v0, p0, LLg/g;->b:LKg/f;

    return-object v0
.end method
