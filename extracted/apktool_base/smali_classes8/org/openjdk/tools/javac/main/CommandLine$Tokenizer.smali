.class public Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokenizer"
.end annotation


# instance fields
.field private ch:I

.field private final in:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p1

    iput p1, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->skipWhite()V

    iget v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    iget v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    if-eq v4, v1, :cond_10

    const/16 v5, 0x9

    if-eq v4, v5, :cond_e

    const/16 v6, 0xa

    if-eq v4, v6, :cond_d

    const/16 v7, 0xc

    if-eq v4, v7, :cond_e

    const/16 v8, 0xd

    if-eq v4, v8, :cond_d

    const/16 v9, 0x20

    if-eq v4, v9, :cond_e

    const/16 v10, 0x22

    if-eq v4, v10, :cond_a

    const/16 v10, 0x27

    if-eq v4, v10, :cond_a

    const/16 v10, 0x5c

    if-eq v4, v10, :cond_2

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    if-eqz v3, :cond_9

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    iput v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    if-eq v4, v6, :cond_7

    if-eq v4, v8, :cond_7

    const/16 v9, 0x66

    if-eq v4, v9, :cond_6

    const/16 v7, 0x6e

    if-eq v4, v7, :cond_5

    const/16 v6, 0x72

    if-eq v4, v6, :cond_4

    const/16 v6, 0x74

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    iput v5, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_2

    :cond_4
    iput v8, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_2

    :cond_5
    iput v6, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_2

    :cond_6
    iput v7, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_2

    :cond_7
    :goto_1
    iget v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    if-eq v4, v9, :cond_8

    if-eq v4, v6, :cond_8

    if-eq v4, v8, :cond_8

    if-eq v4, v5, :cond_8

    if-ne v4, v7, :cond_1

    :cond_8
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    iput v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_1

    :cond_9
    :goto_2
    iget v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    if-nez v3, :cond_b

    int-to-char v3, v4

    goto :goto_3

    :cond_b
    if-ne v3, v4, :cond_c

    move v3, v2

    goto :goto_3

    :cond_c
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    if-nez v3, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    iput v4, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipWhite()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    const/16 v4, 0x23

    if-eq v0, v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    :goto_1
    iget v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/main/CommandLine$Tokenizer;->ch:I

    goto :goto_0

    :cond_2
    return-void
.end method
