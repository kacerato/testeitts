.class public final Lcom/android/tools/r8/internal/se0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Gf0;

.field public final b:Lcom/android/tools/r8/internal/Tf0;

.field public final c:Lcom/android/tools/r8/internal/Ug0;

.field public final d:Lcom/android/tools/r8/internal/ng0;

.field public final e:Lcom/android/tools/r8/internal/kr0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Gf0;Lcom/android/tools/r8/internal/Tf0;Lcom/android/tools/r8/internal/Ug0;Lcom/android/tools/r8/internal/ng0;)V
    .locals 1

    const-string v0, "resourcesRoot"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/se0;->a:Lcom/android/tools/r8/internal/Gf0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/se0;->c:Lcom/android/tools/r8/internal/Ug0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    new-instance p1, Lcom/android/tools/r8/internal/re0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/re0;-><init>(Lcom/android/tools/r8/internal/se0;)V

    new-instance p2, Lcom/android/tools/r8/internal/kr0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/kr0;-><init>(Lcom/android/tools/r8/internal/ly;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/se0;->e:Lcom/android/tools/r8/internal/kr0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Zh0;)V
    .locals 3

    .line 145
    iget v0, p1, Lcom/android/tools/r8/internal/Zh0;->c:I

    if-eqz v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 147
    iget-object p1, p1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 148
    iget-object p1, p1, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    .line 150
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "singletonList(...)"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zh0;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reference.name"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 153
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 154
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zh0;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    const-string v1, "possibleUrlReference"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Lcom/android/tools/r8/internal/mg0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mg0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 157
    iget-object v1, p1, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    const-string v2, "url.name"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 159
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    goto :goto_1

    .line 160
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    .line 161
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    .line 162
    invoke-static {v0}, Lcom/android/tools/r8/internal/pl0;->a(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/cx;

    move-result-object p1

    .line 163
    sget-object v0, Lcom/android/tools/r8/internal/fe0;->b:Lcom/android/tools/r8/internal/fe0;

    .line 164
    new-instance v1, Lcom/android/tools/r8/internal/cx;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 165
    new-instance p1, Lcom/android/tools/r8/internal/bx;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/bx;-><init>(Lcom/android/tools/r8/internal/cx;)V

    .line 166
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/bx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/bx;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ng0;

    .line 167
    iget-object v1, p0, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ng0;->a(Lcom/android/tools/r8/internal/ng0;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bh0;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/tools/r8/internal/se0;->a:Lcom/android/tools/r8/internal/Gf0;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/bh0;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file.path"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v4, "res/"

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v2, v4, v5, v6}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x4

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "substring(...)"

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Gf0;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/de0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/de0;-><init>([B)V

    .line 6
    new-instance v4, Lcom/android/tools/r8/internal/kr0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/kr0;-><init>(Lcom/android/tools/r8/internal/ly;)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/bh0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v8, v5

    :goto_1
    if-ge v8, v3, :cond_4

    .line 9
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x41

    if-lt v9, v10, :cond_3

    const/16 v11, 0x5a

    if-gt v9, v11, :cond_3

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_2
    if-ge v8, v3, :cond_2

    .line 11
    aget-char v9, v2, v8

    if-lt v9, v10, :cond_1

    if-gt v9, v11, :cond_1

    xor-int/lit8 v9, v9, 0x20

    int-to-char v9, v9

    .line 12
    aput-char v9, v2, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :cond_4
    :goto_3
    const-string v3, "toLowerCase(file.path.substringAfterLast(\'.\'))"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p1

    .line 15
    iget v3, v3, Lcom/android/tools/r8/internal/bh0;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v3, :cond_8

    if-eq v3, v11, :cond_7

    if-eq v3, v9, :cond_6

    if-eq v3, v10, :cond_5

    move-object v3, v8

    goto :goto_4

    .line 16
    :cond_5
    sget-object v3, Lcom/android/tools/r8/internal/ah0;->f:Lcom/android/tools/r8/internal/ah0;

    goto :goto_4

    .line 17
    :cond_6
    sget-object v3, Lcom/android/tools/r8/internal/ah0;->e:Lcom/android/tools/r8/internal/ah0;

    goto :goto_4

    .line 18
    :cond_7
    sget-object v3, Lcom/android/tools/r8/internal/ah0;->d:Lcom/android/tools/r8/internal/ah0;

    goto :goto_4

    .line 19
    :cond_8
    sget-object v3, Lcom/android/tools/r8/internal/ah0;->c:Lcom/android/tools/r8/internal/ah0;

    :goto_4
    if-nez v3, :cond_9

    .line 20
    sget-object v3, Lcom/android/tools/r8/internal/ah0;->g:Lcom/android/tools/r8/internal/ah0;

    .line 21
    :cond_9
    sget-object v12, Lcom/android/tools/r8/internal/ah0;->f:Lcom/android/tools/r8/internal/ah0;

    if-ne v3, v12, :cond_a

    .line 22
    sget-object v2, Lcom/android/tools/r8/internal/uj0;->g:Lcom/android/tools/r8/internal/sj0;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/uj0;

    .line 23
    const-string v2, "parseFrom(bytes)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/se0;->a(Lcom/android/tools/r8/internal/uj0;)V

    return-void

    .line 24
    :cond_a
    const-string v1, "html"

    const-string v3, "htm"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/bf;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 25
    iget-object v1, v0, Lcom/android/tools/r8/internal/se0;->e:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Bx0;

    .line 26
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v5

    move v12, v4

    move v15, v7

    move-object v13, v8

    move-object v14, v13

    move v6, v11

    move v8, v12

    :goto_5
    if-ge v5, v3, :cond_25

    if-ne v5, v15, :cond_b

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_b

    goto/16 :goto_16

    :cond_b
    move v15, v5

    .line 29
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x5

    const/16 v9, 0x3d

    const/16 v11, 0x27

    const/16 v10, 0x22

    const/16 v17, 0x8

    const/16 v7, 0x3e

    packed-switch v6, :pswitch_data_0

    .line 30
    sget-boolean v5, Lcom/android/tools/r8/internal/Bx0;->b:Z

    if-eqz v5, :cond_c

    goto :goto_8

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    if-ne v5, v7, :cond_d

    add-int/lit8 v5, v15, 0x1

    const/4 v6, 0x1

    :goto_6
    const/4 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    :goto_7
    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    :goto_8
    move v5, v15

    goto :goto_6

    :pswitch_1
    if-ne v5, v7, :cond_e

    :goto_9
    const/4 v6, 0x1

    :cond_e
    :goto_a
    const/4 v7, -0x1

    const/4 v9, 0x3

    goto/16 :goto_15

    :pswitch_2
    if-ne v5, v10, :cond_e

    .line 31
    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v1, v14, v5}, Lcom/android/tools/r8/internal/Bx0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const/4 v6, 0x6

    goto :goto_a

    :pswitch_3
    if-ne v5, v11, :cond_e

    .line 33
    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v1, v14, v5}, Lcom/android/tools/r8/internal/Bx0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_4
    if-ne v5, v7, :cond_f

    .line 35
    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {v1, v14, v5}, Lcom/android/tools/r8/internal/Bx0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v15, v2, v13}, Lcom/android/tools/r8/internal/Bx0;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 38
    :cond_f
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 39
    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v1, v14, v5}, Lcom/android/tools/r8/internal/Bx0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_5
    if-ne v5, v11, :cond_10

    add-int/lit8 v5, v15, 0x1

    const/16 v6, 0xa

    :goto_c
    move v8, v5

    goto :goto_a

    :cond_10
    if-ne v5, v10, :cond_11

    add-int/lit8 v5, v15, 0x1

    const/16 v6, 0xb

    goto :goto_c

    .line 41
    :cond_11
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_e

    add-int/lit8 v5, v15, 0x1

    const/16 v6, 0x9

    goto :goto_c

    :pswitch_6
    if-ne v5, v9, :cond_12

    :goto_d
    move/from16 v6, v17

    goto :goto_a

    :cond_12
    if-ne v5, v7, :cond_13

    .line 42
    invoke-virtual {v1, v15, v2, v13}, Lcom/android/tools/r8/internal/Bx0;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 43
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_e

    :pswitch_7
    if-ne v5, v7, :cond_14

    .line 44
    invoke-virtual {v1, v15, v2, v13}, Lcom/android/tools/r8/internal/Bx0;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_15

    goto :goto_a

    .line 45
    :cond_15
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_e

    :goto_e
    move v12, v15

    const/4 v6, 0x3

    goto :goto_a

    .line 46
    :pswitch_8
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 47
    invoke-virtual {v2, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    goto :goto_b

    :cond_16
    if-ne v5, v7, :cond_17

    .line 48
    invoke-virtual {v2, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v1, v15, v2, v5}, Lcom/android/tools/r8/internal/Bx0;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v13, v5

    goto/16 :goto_9

    :cond_17
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_e

    .line 50
    invoke-virtual {v2, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v1, v15, v2, v5}, Lcom/android/tools/r8/internal/Bx0;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xd

    move-object v13, v5

    goto/16 :goto_a

    .line 52
    :pswitch_9
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_e

    move v4, v15

    move/from16 v6, v16

    goto/16 :goto_a

    :pswitch_a
    if-ne v5, v7, :cond_18

    .line 53
    invoke-virtual {v1, v15, v2, v13}, Lcom/android/tools/r8/internal/Bx0;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_18
    if-ne v5, v9, :cond_19

    .line 54
    invoke-virtual {v2, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    goto :goto_d

    .line 55
    :cond_19
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 56
    invoke-virtual {v2, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    move-object v14, v5

    goto/16 :goto_a

    :pswitch_b
    const/16 v9, 0x21

    if-ne v5, v9, :cond_1d

    .line 57
    const-string v5, "!--"

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1b

    add-int/lit8 v5, v15, 0x3

    .line 58
    const-string v7, "-->"

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v9, 0x3

    goto :goto_10

    :cond_1b
    const/4 v7, -0x1

    .line 59
    const-string v5, "![CDATA["

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1c

    add-int/lit8 v5, v15, 0x8

    .line 60
    const-string v9, "]]>"

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_1a

    :goto_f
    move v5, v3

    goto/16 :goto_6

    :goto_10
    add-int/2addr v5, v9

    move v10, v9

    const/4 v6, 0x1

    :goto_11
    const/4 v7, -0x1

    :goto_12
    const/4 v9, 0x2

    goto/16 :goto_7

    :cond_1c
    const/4 v9, 0x3

    goto :goto_14

    :cond_1d
    const/16 v6, 0x2f

    const/4 v9, 0x3

    if-ne v5, v6, :cond_1e

    add-int/lit8 v5, v15, 0x1

    const/16 v6, 0xc

    move v10, v9

    goto :goto_11

    :cond_1e
    const/16 v6, 0x3f

    if-ne v5, v6, :cond_20

    add-int/lit8 v5, v15, 0x2

    .line 61
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1f

    move v5, v3

    :goto_13
    move v10, v9

    const/4 v6, 0x1

    goto :goto_12

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_20
    const/4 v7, -0x1

    :goto_14
    move v10, v9

    move v4, v15

    move v5, v4

    move/from16 v6, v16

    goto :goto_12

    :pswitch_c
    const/4 v7, -0x1

    const/4 v9, 0x3

    const/16 v10, 0x3c

    if-ne v5, v10, :cond_21

    add-int/lit8 v5, v15, 0x1

    move v10, v9

    const/4 v6, 0x2

    goto :goto_12

    :cond_21
    :goto_15
    add-int/lit8 v5, v15, 0x1

    move v10, v9

    goto :goto_12

    .line 62
    :cond_22
    const-string v1, "css"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 64
    iget-object v1, v0, Lcom/android/tools/r8/internal/se0;->e:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Bx0;

    .line 65
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Bx0;->a(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_23
    const-string v1, "js"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 69
    iget-object v1, v0, Lcom/android/tools/r8/internal/se0;->e:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Bx0;

    .line 70
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Bx0;->b(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_24
    sget-object v1, Lcom/android/tools/r8/internal/jl0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 73
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1, v5}, Lcom/android/tools/r8/internal/se0;->a(Ljava/lang/String;Z)V

    :cond_25
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/hh0;)V
    .locals 2

    .line 139
    :try_start_0
    iget v0, p1, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object v0

    const-string v1, "item.ref"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/se0;->a(Lcom/android/tools/r8/internal/Zh0;)V

    return-void

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->a()Lcom/android/tools/r8/internal/bh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bh0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item.file.path"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "res/"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->a()Lcom/android/tools/r8/internal/bh0;

    move-result-object v0

    const-string v1, "item.file"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/se0;->a(Lcom/android/tools/r8/internal/bh0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 142
    :catch_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 143
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->a:Lcom/android/tools/r8/internal/Tl0;

    .line 144
    new-instance v1, Lcom/android/tools/r8/internal/ee0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ee0;-><init>(Lcom/android/tools/r8/internal/hh0;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/uj0;)V
    .locals 9

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->B:Lcom/android/tools/r8/internal/lg0;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uj0;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node.text"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/se0;->a(Ljava/lang/String;Z)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object v0

    const-string v1, "node.element"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/oj0;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "rawPathResId"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v0, v0, Lcom/android/tools/r8/internal/oj0;->f:Ljava/util/List;

    .line 80
    const-string v1, "element.childList"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/tools/r8/internal/uj0;

    .line 84
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/uj0;->b()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0x3e

    .line 86
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/ny;I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 89
    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 90
    sget-object v3, Lcom/android/tools/r8/internal/lg0;->w:Lcom/android/tools/r8/internal/lg0;

    invoke-virtual {v1, v3, v0}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ng0;

    .line 92
    iget-object v3, p0, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/ng0;->a(Lcom/android/tools/r8/internal/ng0;)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object v0

    .line 94
    iget-object v0, v0, Lcom/android/tools/r8/internal/oj0;->e:Ljava/util/List;

    .line 95
    const-string v1, "node.element.attributeList"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "it"

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/lj0;

    .line 97
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "constraint_referenced_ids"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 100
    const-string v4, ","

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5, v3, v4}, Lcom/android/tools/r8/internal/Iq0;->b(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    invoke-static {v5}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_5
    if-ge v5, v3, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 107
    iget-object v7, p0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 108
    iget-object v7, v7, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 109
    sget-object v8, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    invoke-virtual {v7, v8, v6}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 110
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/ng0;

    .line 111
    invoke-static {v7}, Lcom/android/tools/r8/internal/pg0;->a(Lcom/android/tools/r8/internal/ng0;)Z

    goto :goto_4

    .line 112
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lj0;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 113
    iget-object v3, v1, Lcom/android/tools/r8/internal/lj0;->g:Lcom/android/tools/r8/internal/hh0;

    if-nez v3, :cond_7

    .line 114
    sget-object v3, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    .line 115
    :cond_7
    const-string v4, "attribute.compiledItem"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/se0;->a(Lcom/android/tools/r8/internal/hh0;)V

    .line 116
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    sget-object v4, Lcom/android/tools/r8/internal/lg0;->B:Lcom/android/tools/r8/internal/lg0;

    if-ne v3, v4, :cond_3

    .line 117
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "attribute.value"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/se0;->a(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 118
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object p1

    .line 119
    iget-object p1, p1, Lcom/android/tools/r8/internal/oj0;->f:Ljava/util/List;

    .line 120
    const-string v0, "node.element.childList"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/uj0;

    .line 122
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/se0;->a(Lcom/android/tools/r8/internal/uj0;)V

    goto :goto_5

    :cond_a
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .line 123
    new-instance v0, Lcom/android/tools/r8/internal/ce0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/ce0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/fi;)V

    .line 124
    new-instance p1, Lcom/android/tools/r8/internal/ql0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/ql0;-><init>(Lcom/android/tools/r8/internal/By;)V

    .line 125
    sget-object v0, Lcom/android/tools/r8/internal/le0;->b:Lcom/android/tools/r8/internal/le0;

    .line 126
    new-instance v1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    .line 127
    sget-object p1, Lcom/android/tools/r8/internal/me0;->b:Lcom/android/tools/r8/internal/me0;

    .line 128
    new-instance v0, Lcom/android/tools/r8/internal/cx;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 129
    sget-object p1, Lcom/android/tools/r8/internal/ne0;->b:Lcom/android/tools/r8/internal/ne0;

    .line 130
    new-instance v1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    .line 131
    sget-object p1, Lcom/android/tools/r8/internal/oe0;->b:Lcom/android/tools/r8/internal/oe0;

    .line 132
    new-instance v0, Lcom/android/tools/r8/internal/cx;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 133
    new-instance p1, Lcom/android/tools/r8/internal/pe0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/pe0;-><init>(Lcom/android/tools/r8/internal/se0;)V

    .line 134
    new-instance v1, Lcom/android/tools/r8/internal/Ax;

    sget-object v2, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v1, v0, p1, v2}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    .line 135
    new-instance p1, Lcom/android/tools/r8/internal/zx;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/zx;-><init>(Lcom/android/tools/r8/internal/Ax;)V

    .line 136
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zx;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ng0;

    if-eqz p2, :cond_0

    .line 137
    invoke-static {v0}, Lcom/android/tools/r8/internal/pg0;->a(Lcom/android/tools/r8/internal/ng0;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ng0;->a(Lcom/android/tools/r8/internal/ng0;)V

    goto :goto_0

    :cond_1
    return-void
.end method
