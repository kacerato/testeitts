.class public Lcom/android/tools/r8/graph/U5;
.super Lcom/android/tools/r8/graph/B0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/B0;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lcom/android/tools/r8/dex/c;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/c;->a()Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    new-instance v2, Lcom/android/tools/r8/graph/U5;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/graph/U5;-><init>(Lcom/android/tools/r8/graph/w4;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/B0;->b(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/tools/r8/graph/hb;->a(Ljava/io/ByteArrayOutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string v0, "Failed to generate smali sting"

    invoke-direct {p1, v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
    .locals 1

    .line 2
    const-string v0, "# End of class "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->i0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 4
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    return-void
.end method

.method public final b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/H5;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    iget-object v4, v0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    .line 7
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v5, v5, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    if-nez v4, :cond_0

    .line 8
    sget-object v4, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v6, Lcom/android/tools/r8/internal/vk0;

    .line 10
    invoke-static {v4}, Lcom/android/tools/r8/internal/eV;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/internal/dV;

    move-result-object v4

    .line 11
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/wk0;->a(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/tools/r8/internal/vk0;-><init>(Lcom/android/tools/r8/internal/wk0;)V

    move-object v4, v6

    .line 12
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ".method "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v6, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/4 v7, 0x1

    .line 15
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 19
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    if-eqz v3, :cond_d

    .line 26
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v3

    .line 27
    const-string v6, "    .registers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v6, v3, Lcom/android/tools/r8/graph/J0;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 32
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 33
    iget-object v9, v3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v10, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_5

    aget-object v13, v9, v12

    .line 34
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->A()[I

    move-result-object v14

    .line 35
    sget-object v15, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    if-eqz v14, :cond_3

    sget-object v15, Lcom/android/tools/r8/internal/Np;->d:[I

    if-eq v14, v15, :cond_3

    .line 36
    sget-boolean v15, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez v15, :cond_2

    array-length v15, v14

    const/4 v11, 0x2

    if-gt v15, v11, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 37
    :cond_2
    :goto_2
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    const/4 v15, 0x0

    aget v13, v14, v15

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 38
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 39
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->w()I

    move-result v14

    add-int/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->w()I

    move-result v14

    add-int/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    .line 41
    iget-object v9, v3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v10, v9

    move v11, v15

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    .line 42
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->N()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 43
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Np;

    .line 44
    instance-of v14, v12, Lcom/android/tools/r8/internal/Cs;

    if-eqz v14, :cond_6

    .line 45
    check-cast v12, Lcom/android/tools/r8/internal/Cs;

    .line 46
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Cs;->P()[I

    move-result-object v12

    array-length v14, v12

    :goto_5
    if-ge v15, v14, :cond_6

    aget v16, v12, v15

    .line 47
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v17

    add-int v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    const/4 v15, 0x0

    goto :goto_4

    .line 48
    :cond_7
    iget-object v0, v3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v9, v0

    const/4 v10, 0x0

    :goto_6
    const/16 v11, 0xa

    if-ge v10, v9, :cond_a

    aget-object v12, v0, v10

    .line 49
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 50
    const-string v13, "  :label_"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_8
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->N()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 54
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Np;

    .line 55
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 56
    :cond_9
    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 57
    :cond_a
    iget-object v0, v3, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 58
    const-string v0, "Tries (numbers are offsets)\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, v3, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v4, v0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_b

    aget-object v8, v0, v7

    .line 60
    const-string v9, "  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/J0$a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 63
    :cond_b
    const-string v0, "Handlers (numbers are offsets)\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, v3, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_c

    aget-object v7, v0, v4

    .line 65
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/J0$b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 67
    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_d
    const-string v0, ".end method\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 72
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    return-void
.end method

.method public final b(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Ljava/io/PrintStream;)V
    .locals 5

    const-string v0, ".class "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/B0;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_0

    const-string v0, ".super "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, ".implements "

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->i0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
