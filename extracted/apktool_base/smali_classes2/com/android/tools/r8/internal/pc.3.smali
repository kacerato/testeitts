.class public final Lcom/android/tools/r8/internal/pc;
.super Lcom/android/tools/r8/internal/QW;
.source "SourceFile"


# instance fields
.field public final synthetic y:Lcom/android/tools/r8/internal/DX;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/DX;)V
    .locals 6

    iput-object p5, p0, Lcom/android/tools/r8/internal/pc;->y:Lcom/android/tools/r8/internal/DX;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/QW;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/tools/r8/internal/QW;->t:I

    iget v2, v1, Lcom/android/tools/r8/internal/QW;->s:I

    iget-object v3, v1, Lcom/android/tools/r8/internal/pc;->y:Lcom/android/tools/r8/internal/DX;

    instance-of v4, v3, Lcom/android/tools/r8/internal/rc;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/tools/r8/internal/rc;

    iget-object v4, v3, Lcom/android/tools/r8/internal/rc;->d:Lcom/android/tools/r8/internal/he;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/android/tools/r8/internal/rc;->d:Lcom/android/tools/r8/internal/he;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lcom/android/tools/r8/internal/rc;->c:I

    const v7, 0xffff

    and-int/2addr v4, v7

    const/16 v7, 0x33

    if-lt v4, v7, :cond_0

    iget-object v3, v3, Lcom/android/tools/r8/internal/rc;->d:Lcom/android/tools/r8/internal/he;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/tools/r8/internal/oc;

    new-instance v7, Lcom/android/tools/r8/internal/d6;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/d6;-><init>()V

    invoke-direct {v3, v7}, Lcom/android/tools/r8/internal/oc;-><init>(Lcom/android/tools/r8/internal/d6;)V

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/r2;

    new-instance v7, Lcom/android/tools/r8/internal/d6;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/d6;-><init>()V

    invoke-direct {v3, v7}, Lcom/android/tools/r8/internal/r2;-><init>(Lcom/android/tools/r8/internal/d6;)V

    :goto_2
    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/r2;->a(Lcom/android/tools/r8/internal/pc;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/r2;->b(Lcom/android/tools/r8/internal/pc;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/internal/s2; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v3, v1, Lcom/android/tools/r8/internal/pc;->y:Lcom/android/tools/r8/internal/DX;

    if-eqz v3, :cond_4

    iput v0, v1, Lcom/android/tools/r8/internal/QW;->t:I

    iput v2, v1, Lcom/android/tools/r8/internal/QW;->s:I

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/QW;->a(Lcom/android/tools/r8/internal/DX;)V

    :cond_4
    return-void

    :goto_4
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v7, Lcom/android/tools/r8/internal/Hr0;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/Hr0;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/Fs0;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/Fs0;-><init>(Lcom/android/tools/r8/internal/Hr0;)V

    iget-object v9, v1, Lcom/android/tools/r8/internal/QW;->d:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/tools/r8/internal/QW;->e:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_5
    iget-object v10, v1, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget v11, v10, Lcom/android/tools/r8/internal/OD;->b:I

    const-string v12, " "

    if-ge v9, v11, :cond_9

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/DX;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Lcom/android/tools/r8/internal/r2;->e:[Lcom/android/tools/r8/internal/fy;

    aget-object v11, v11, v9

    const-string v13, " : "

    const/16 v14, 0x20

    if-nez v11, :cond_5

    const/16 v11, 0x3f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_5
    const/4 v15, 0x0

    :goto_6
    iget v6, v11, Lcom/android/tools/r8/internal/fy;->c:I

    if-ge v15, v6, :cond_6

    invoke-virtual {v11, v15}, Lcom/android/tools/r8/internal/fy;->a(I)Lcom/android/tools/r8/internal/ww0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/c6;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/mc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_7
    iget v15, v11, Lcom/android/tools/r8/internal/fy;->d:I

    if-ge v6, v15, :cond_7

    iget-object v15, v11, Lcom/android/tools/r8/internal/fy;->b:[Lcom/android/tools/r8/internal/ww0;

    iget v5, v11, Lcom/android/tools/r8/internal/fy;->c:I

    add-int/2addr v5, v6

    aget-object v5, v15, v5

    check-cast v5, Lcom/android/tools/r8/internal/c6;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/c6;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/mc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v6, v1, Lcom/android/tools/r8/internal/QW;->s:I

    iget v11, v1, Lcom/android/tools/r8/internal/QW;->t:I

    add-int/2addr v6, v11

    const/4 v11, 0x1

    add-int/2addr v6, v11

    if-ge v5, v6, :cond_8

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_8
    const v5, 0x186a0

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    invoke-static {v5, v11}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_9
    iget-object v3, v1, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/pt0;

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/pt0;->a(Lcom/android/tools/r8/internal/DX;)V

    iget-object v5, v7, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
