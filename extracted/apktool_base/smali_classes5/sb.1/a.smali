.class public Lsb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsb/a$b;,
        Lsb/a$c;,
        Lsb/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/io/InputStreamReader;

.field public b:Ljava/io/BufferedReader;

.field public c:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    iput-object v0, p0, Lsb/a;->b:Ljava/io/BufferedReader;

    iput-object v0, p0, Lsb/a;->c:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lsb/a$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "listener"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lsb/a;->c:Ljava/io/FileInputStream;

    invoke-virtual {p0, v0, p2}, Lsb/a;->b(Ljava/io/FileInputStream;Lsb/a$b;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lsb/a;->d()Z

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/io/FileInputStream;Lsb/a$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileInputStream",
            "listener"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lsb/a;->c:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    new-instance p1, Ljava/io/BufferedReader;

    iget-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lsb/a;->b:Ljava/io/BufferedReader;

    invoke-virtual {p0, p2}, Lsb/a;->e(Lsb/a$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lsb/a;->d()Z

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/io/InputStream;Lsb/a$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileInputStream",
            "listener"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    new-instance p1, Ljava/io/BufferedReader;

    iget-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lsb/a;->b:Ljava/io/BufferedReader;

    invoke-virtual {p0, p2}, Lsb/a;->e(Lsb/a$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lsb/a;->d()Z

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lsb/a;->f()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lsb/a;->b:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    iput-object v0, p0, Lsb/a;->b:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    iput-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lsb/a;->c:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    iput-object v0, p0, Lsb/a;->c:Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lsb/a$b;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lsb/a$c;->None:Lsb/a$c;

    invoke-interface/range {p1 .. p1}, Lsb/a$b;->h()V

    iget-object v3, v0, Lsb/a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v10, v5

    move v8, v7

    const/4 v9, 0x0

    move v7, v6

    :goto_0
    if-eqz v3, :cond_f

    const-string v11, "#"

    if-nez v6, :cond_1

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/IncorrectFileTypeException;

    const-string v2, "File corrupted or is not a stream file!"

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/IncorrectFileTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    sget-object v12, Lsb/a$c;->ReadingBuffer:Lsb/a$c;

    const/4 v13, 0x1

    if-ne v2, v12, :cond_6

    const-string v11, ";"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface/range {p1 .. p1}, Lsb/a$b;->b()V

    sget-object v2, Lsb/a$c;->None:Lsb/a$c;

    move v10, v5

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_2
    const-string v11, "x"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v11, Lsb/a$a;->Float:Lsb/a$a;

    if-ne v9, v11, :cond_3

    invoke-interface {v1, v8, v3}, Lsb/a$b;->a(FI)V

    goto/16 :goto_2

    :cond_3
    sget-object v11, Lsb/a$a;->Int:Lsb/a$a;

    if-ne v9, v11, :cond_e

    invoke-interface {v1, v7, v3}, Lsb/a$b;->e(II)V

    goto/16 :goto_2

    :cond_4
    sget-object v11, Lsb/a$a;->Float:Lsb/a$a;

    if-ne v9, v11, :cond_5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-interface {v1, v3}, Lsb/a$b;->c(F)V

    move v8, v3

    goto/16 :goto_2

    :cond_5
    sget-object v11, Lsb/a$a;->Int:Lsb/a$a;

    if-ne v9, v11, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lsb/a$b;->d(I)V

    move v7, v3

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "FLOAT ["

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v14, "]"

    const-string v15, "["

    const-string v4, "illegal buffer read, a new buffer was introduced before a correct finish. line:"

    if-eqz v11, :cond_8

    sget-object v9, Lsb/a$c;->None:Lsb/a$c;

    if-ne v2, v9, :cond_7

    sget-object v9, Lsb/a$a;->Float:Lsb/a$a;

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v10

    sget-object v2, Lsb/a$c;->WaitingBufferTittle:Lsb/a$c;

    goto/16 :goto_2

    :cond_7
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/CorruptedFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/CorruptedFileException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v11, "INT ["

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v9, Lsb/a$c;->None:Lsb/a$c;

    if-ne v2, v9, :cond_9

    sget-object v9, Lsb/a$a;->Int:Lsb/a$a;

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v10

    sget-object v2, Lsb/a$c;->WaitingBufferTittle:Lsb/a$c;

    goto :goto_2

    :cond_9
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/CorruptedFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/CorruptedFileException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    sget-object v4, Lsb/a$c;->WaitingBufferTittle:Lsb/a$c;

    if-ne v2, v4, :cond_c

    if-eqz v9, :cond_b

    invoke-interface {v1, v3, v9, v10}, Lsb/a$b;->f(Ljava/lang/String;Lsb/a$a;I)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v2, v12

    goto :goto_2

    :cond_b
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/CorruptedFileException;

    const-string v2, "cannot begin a buffer without type and capacity"

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/CorruptedFileException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/UnknowStepException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown step at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/StreamSerializer/UnknowStepException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Lsb/a$b;->i(Ljava/lang/String;I)V

    :cond_e
    :goto_2
    iget-object v3, v0, Lsb/a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-interface/range {p1 .. p1}, Lsb/a$b;->g()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lsb/a;->b:Ljava/io/BufferedReader;

    const-string v1, "the serialized was not initiliazed with (begin)"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lsb/a;->b:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    iput-object v1, p0, Lsb/a;->b:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lsb/a;->a:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    iput-object v1, p0, Lsb/a;->a:Ljava/io/InputStreamReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lsb/a;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iput-object v1, p0, Lsb/a;->c:Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
