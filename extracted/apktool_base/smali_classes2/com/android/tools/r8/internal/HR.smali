.class public final Lcom/android/tools/r8/internal/HR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/Collection;

.field public final c:Ljava/util/Collection;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/util/List;

.field public final f:Lcom/android/tools/r8/internal/Tl0;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/internal/Tl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HR;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HR;->b:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/tools/r8/internal/HR;->g:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/tools/r8/internal/HR;->h:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/tools/r8/internal/HR;->c:Ljava/util/Collection;

    iput-object p6, p0, Lcom/android/tools/r8/internal/HR;->d:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/tools/r8/internal/HR;->e:Ljava/util/List;

    iput-object p8, p0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/FR;)Lcom/android/tools/r8/internal/FR;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/ci0;
    .locals 0

    .line 2
    return-object p0
.end method

.method public static a([B)Ljava/io/Reader;
    .locals 8

    .line 13
    array-length v0, p0

    if-nez v0, :cond_0

    .line 14
    new-instance p0, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 15
    aget-byte v1, p0, v1

    const/16 v2, -0x11

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, -0x1

    const/4 v6, -0x2

    if-eq v1, v6, :cond_4

    const/4 v7, 0x4

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    if-lt v0, v7, :cond_6

    if-nez v1, :cond_6

    .line 16
    aget-byte v1, p0, v3

    if-nez v1, :cond_6

    aget-byte v1, p0, v5

    if-ne v1, v6, :cond_6

    aget-byte v1, p0, v4

    if-ne v1, v2, :cond_6

    .line 17
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v0, v7

    invoke-direct {v2, p0, v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string p0, "UTF-32BE"

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    :cond_2
    if-lt v0, v5, :cond_6

    .line 18
    aget-byte v1, p0, v3

    if-ne v1, v6, :cond_6

    if-lt v0, v7, :cond_3

    .line 19
    aget-byte v1, p0, v5

    if-nez v1, :cond_3

    aget-byte v1, p0, v4

    if-nez v1, :cond_3

    .line 20
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v0, v7

    invoke-direct {v2, p0, v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string p0, "UTF-32LE"

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    .line 21
    :cond_3
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v0, v5

    invoke-direct {v2, p0, v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1

    :cond_4
    if-lt v0, v5, :cond_6

    .line 22
    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_6

    .line 23
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v0, v5

    invoke-direct {v2, p0, v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1

    :cond_5
    if-lt v0, v4, :cond_6

    .line 24
    aget-byte v1, p0, v3

    const/16 v2, -0x45

    if-ne v1, v2, :cond_6

    aget-byte v1, p0, v5

    const/16 v2, -0x41

    if-ne v1, v2, :cond_6

    .line 25
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v0, v4

    invoke-direct {v2, p0, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1

    .line 26
    :cond_6
    :goto_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 5
    const-string v0, "The root reachable resources are:"

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/TG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TG0;-><init>()V

    .line 9
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/UG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UG0;-><init>()V

    .line 10
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 11
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ng0;)Z
    .locals 1

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nC;Ljava/lang/String;)[B
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/FR;

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/FR;->a:[B

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/FR;)Lcom/android/tools/r8/internal/FR;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/Integer;
    .locals 0

    .line 3
    iget p0, p0, Lcom/android/tools/r8/internal/ng0;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "Unused resources are: "

    return-object v0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/util/List;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    new-instance v1, Lcom/android/tools/r8/internal/PG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/PG0;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/VG0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/VG0;-><init>(Lcom/android/tools/r8/internal/HR;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/GR;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    new-instance v6, Lcom/android/tools/r8/internal/xb0;

    iget-object v7, v0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/xb0;-><init>(Lcom/android/tools/r8/internal/Tl0;)V

    .line 2
    iget-object v7, v0, Lcom/android/tools/r8/internal/HR;->h:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/FR;

    .line 3
    iget-object v8, v8, Lcom/android/tools/r8/internal/FR;->a:[B

    .line 4
    sget-object v9, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    invoke-interface {v9, v8}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/ci0;

    .line 5
    invoke-virtual {v6, v8, v4}, Lcom/android/tools/r8/internal/xb0;->a(Lcom/android/tools/r8/internal/ci0;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v7, v0, Lcom/android/tools/r8/internal/HR;->e:Ljava/util/List;

    const-string v9, "<this>"

    if-eqz v7, :cond_e

    .line 7
    new-instance v10, Lcom/android/tools/r8/internal/U10;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/U10;-><init>()V

    .line 8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 9
    const-string v12, " "

    invoke-static {v11, v12}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const/16 v13, 0x20

    const-string v14, "->"

    if-nez v12, :cond_2

    const-string v12, "\t"

    invoke-static {v11, v12}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    invoke-static {v11, v14}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 10
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v11, v12}, Lcom/android/tools/r8/internal/Iq0;->b(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 11
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x28

    .line 12
    invoke-static {v12, v14, v12}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    .line 13
    invoke-static {v12, v13, v14}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CI)I

    move-result v13

    if-ne v13, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v13, v5

    .line 14
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "substring(...)"

    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :goto_2
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 16
    iget-object v13, v10, Lcom/android/tools/r8/internal/U10;->c:Lcom/android/tools/r8/internal/p50;

    if-eqz v13, :cond_1

    .line 17
    iget-object v14, v10, Lcom/android/tools/r8/internal/U10;->b:Ljava/util/LinkedHashMap;

    .line 18
    new-instance v15, Lcom/android/tools/r8/internal/Cc;

    .line 19
    iget-object v13, v13, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    .line 20
    check-cast v13, Ljava/lang/String;

    invoke-direct {v15, v13, v11}, Lcom/android/tools/r8/internal/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v11, Lcom/android/tools/r8/internal/Cc;

    iget-object v13, v10, Lcom/android/tools/r8/internal/U10;->c:Lcom/android/tools/r8/internal/p50;

    invoke-static {v13}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 22
    iget-object v13, v13, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    .line 23
    check-cast v13, Ljava/lang/String;

    invoke-direct {v11, v13, v12}, Lcom/android/tools/r8/internal/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 25
    :cond_4
    invoke-static {v11, v14}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 26
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v11, v12}, Lcom/android/tools/r8/internal/Iq0;->b(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 27
    new-instance v12, Lcom/android/tools/r8/internal/p50;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-array v14, v3, [C

    fill-array-data v14, :array_0

    .line 28
    invoke-static {v11, v9}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v5

    move v2, v4

    move/from16 v16, v2

    :goto_3
    if-gt v2, v15, :cond_c

    if-nez v16, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v15

    .line 30
    :goto_4
    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v3, :cond_7

    .line 31
    aget-char v3, v14, v8

    if-ne v4, v3, :cond_6

    goto :goto_6

    :cond_6
    add-int/2addr v8, v5

    const/4 v3, 0x3

    goto :goto_5

    :cond_7
    move v8, v1

    :goto_6
    if-ltz v8, :cond_8

    move v3, v5

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    if-nez v16, :cond_a

    if-nez v3, :cond_9

    move/from16 v16, v5

    :goto_8
    const/4 v3, 0x3

    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    add-int/2addr v2, v5

    goto :goto_8

    :cond_a
    if-nez v3, :cond_b

    goto :goto_9

    :cond_b
    add-int/2addr v15, v1

    goto :goto_8

    :cond_c
    :goto_9
    add-int/2addr v15, v5

    .line 32
    invoke-virtual {v11, v2, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-direct {v12, v13, v2}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    iput-object v12, v10, Lcom/android/tools/r8/internal/U10;->c:Lcom/android/tools/r8/internal/p50;

    .line 36
    iget-object v3, v10, Lcom/android/tools/r8/internal/U10;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 37
    :cond_d
    new-instance v1, Lcom/android/tools/r8/internal/V10;

    invoke-direct {v1, v10}, Lcom/android/tools/r8/internal/V10;-><init>(Lcom/android/tools/r8/internal/U10;)V

    .line 38
    iput-object v1, v6, Lcom/android/tools/r8/internal/Tf0;->c:Lcom/android/tools/r8/internal/V10;

    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/android/tools/r8/internal/HR;->e:Ljava/util/List;

    .line 40
    :cond_e
    iget-object v1, v0, Lcom/android/tools/r8/internal/HR;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in_memory_r8_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    invoke-static {v3, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    new-instance v4, Lcom/android/tools/r8/internal/Io;

    invoke-direct {v4, v3, v6}, Lcom/android/tools/r8/internal/Io;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/xb0;)V

    .line 43
    const-string v7, "bytes"

    invoke-static {v2, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v7, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v7, v3}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    const/4 v8, 0x0

    invoke-static {v7, v3, v2, v8}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v2

    .line 45
    new-instance v3, Lcom/android/tools/r8/internal/ub0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/ub0;-><init>(Lcom/android/tools/r8/ProgramResource;)V

    .line 46
    new-instance v2, Lcom/android/tools/r8/ResourceShrinker$Builder;

    invoke-direct {v2}, Lcom/android/tools/r8/ResourceShrinker$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ResourceShrinker$Builder;

    invoke-virtual {v2}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ResourceShrinker$Command;

    .line 47
    new-instance v3, Lcom/android/tools/r8/internal/q2;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/q2;-><init>(Lcom/android/tools/r8/internal/Io;)V

    invoke-static {v2, v3}, Lcom/android/tools/r8/ResourceShrinker;->run(Lcom/android/tools/r8/ResourceShrinker$Command;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V

    goto :goto_a

    .line 48
    :cond_f
    iget-object v1, v0, Lcom/android/tools/r8/internal/HR;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_10

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, v5

    check-cast v4, Lcom/android/tools/r8/internal/FR;

    .line 49
    iget-object v4, v4, Lcom/android/tools/r8/internal/FR;->a:[B

    .line 50
    sget-object v7, Lcom/android/tools/r8/internal/uj0;->g:Lcom/android/tools/r8/internal/sj0;

    invoke-interface {v7, v4}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/uj0;

    .line 51
    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/E80;->a(Lcom/android/tools/r8/internal/uj0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/nl0;

    goto :goto_b

    .line 52
    :cond_10
    iget-object v1, v0, Lcom/android/tools/r8/internal/HR;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_11

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, v5

    check-cast v4, [B

    .line 53
    invoke-static {v4}, Lcom/android/tools/r8/internal/HR;->a([B)Ljava/io/Reader;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/us0;->a(Ljava/io/Reader;Lcom/android/tools/r8/internal/Tf0;)V

    goto :goto_c

    .line 54
    :cond_11
    new-instance v1, Lcom/android/tools/r8/internal/kC;

    const/4 v2, 0x4

    .line 55
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 56
    iget-object v2, v0, Lcom/android/tools/r8/internal/HR;->c:Ljava/util/Collection;

    .line 57
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/YG0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/YG0;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/ZG0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ZG0;-><init>()V

    .line 58
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 59
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/util/Set;)Lcom/android/tools/r8/internal/kC;

    move-result-object v1

    .line 60
    iget-object v2, v0, Lcom/android/tools/r8/internal/HR;->b:Ljava/util/Collection;

    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/YG0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/YG0;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/aH0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/aH0;-><init>()V

    .line 62
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 63
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/kC;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/android/tools/r8/internal/HR;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FR;

    .line 66
    iget-object v3, v3, Lcom/android/tools/r8/internal/FR;->a:[B

    .line 67
    sget-object v4, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ci0;

    .line 68
    new-instance v4, Lcom/android/tools/r8/internal/Na0;

    new-instance v7, Lcom/android/tools/r8/internal/bH0;

    invoke-direct {v7, v1}, Lcom/android/tools/r8/internal/bH0;-><init>(Lcom/android/tools/r8/internal/nC;)V

    new-instance v8, Lcom/android/tools/r8/internal/cH0;

    invoke-direct {v8, v3}, Lcom/android/tools/r8/internal/cH0;-><init>(Lcom/android/tools/r8/internal/ci0;)V

    invoke-direct {v4, v7, v8}, Lcom/android/tools/r8/internal/Na0;-><init>(Lcom/android/tools/r8/internal/Gf0;Lcom/android/tools/r8/internal/ny;)V

    .line 69
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/Na0;->a(Lcom/android/tools/r8/internal/Tf0;)V

    goto :goto_d

    .line 70
    :cond_12
    iget-object v1, v6, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ig0;->b()Ljava/util/List;

    .line 72
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Tf0;->a()V

    .line 73
    iget-object v2, v0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    .line 74
    iget-object v3, v6, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 75
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/dH0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/dH0;-><init>(Lcom/android/tools/r8/internal/ig0;)V

    invoke-interface {v2, v4}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    iget-object v3, v6, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 78
    iget-object v3, v3, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    .line 79
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v4, "unmodifiableList(_resources)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v4, Lcom/android/tools/r8/internal/QG0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/QG0;-><init>(Lcom/android/tools/r8/internal/HR;)V

    .line 81
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/util/List;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance v3, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 83
    iget-object v4, v0, Lcom/android/tools/r8/internal/HR;->c:Ljava/util/Collection;

    iget-object v6, v0, Lcom/android/tools/r8/internal/HR;->b:Ljava/util/Collection;

    const/4 v7, 0x2

    .line 84
    new-array v8, v7, [Ljava/lang/Iterable;

    const/4 v7, 0x0

    aput-object v4, v8, v7

    aput-object v6, v8, v5

    invoke-static {v8}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_e
    move-object v6, v4

    check-cast v6, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/FR;

    .line 86
    iget-object v7, v6, Lcom/android/tools/r8/internal/FR;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/tools/r8/internal/Sf0;->a(Lcom/android/tools/r8/internal/ig0;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 87
    iget-object v7, v6, Lcom/android/tools/r8/internal/FR;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 88
    iget-boolean v7, v6, Lcom/android/tools/r8/internal/FR;->c:Z

    if-eqz v7, :cond_13

    .line 89
    iget-object v6, v6, Lcom/android/tools/r8/internal/FR;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v7, "path"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-array v7, v5, [C

    const/16 v8, 0x2f

    const/4 v10, 0x0

    aput-char v8, v7, v10

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;[CI)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v10, 0x2

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    invoke-static {v7}, Lcom/android/tools/r8/internal/Qf0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Qf0;

    move-result-object v7

    if-nez v7, :cond_14

    sget-object v6, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    goto :goto_12

    :cond_14
    const/16 v11, 0x2e

    .line 94
    invoke-static {v6, v11}, Lcom/android/tools/r8/internal/Iq0;->c(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    .line 95
    sget-object v11, Lcom/android/tools/r8/internal/Wx;->b:Ljava/util/EnumMap;

    invoke-virtual {v11, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_15

    goto :goto_f

    .line 96
    :cond_15
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 97
    :goto_f
    const-string v11, "getRelatedResourceTypes(folderType)"

    invoke-static {v7, v11}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/android/tools/r8/internal/lg0;

    .line 100
    sget-object v14, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    if-ne v13, v14, :cond_16

    goto :goto_10

    .line 101
    :cond_16
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 102
    :cond_17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v12, :cond_18

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/2addr v13, v5

    .line 104
    check-cast v14, Lcom/android/tools/r8/internal/lg0;

    .line 105
    const-string v15, "it"

    invoke-static {v14, v15}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v6}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 106
    invoke-interface {v7, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 107
    :cond_18
    invoke-static {v7}, Lcom/android/tools/r8/internal/Ze;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 108
    :goto_12
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    .line 109
    :cond_19
    iget-object v1, v0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    new-instance v4, Lcom/android/tools/r8/internal/RG0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/RG0;-><init>()V

    invoke-interface {v1, v4}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    .line 110
    new-instance v1, Lcom/android/tools/r8/internal/SG0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/SG0;-><init>(Lcom/android/tools/r8/internal/HR;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    invoke-static {v2}, Lcom/android/tools/r8/internal/HR;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 113
    iget-object v4, v0, Lcom/android/tools/r8/internal/HR;->h:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/FR;

    iget-object v6, v6, Lcom/android/tools/r8/internal/FR;->a:[B

    .line 115
    sget-object v7, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    invoke-interface {v7, v6}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/ci0;

    .line 116
    invoke-static {v6, v9}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "ids"

    invoke-static {v1, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 117
    invoke-static {v6, v1, v7}, Lcom/android/tools/r8/internal/kg0;->a(Lcom/android/tools/r8/internal/ci0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/ci0;

    move-result-object v6

    .line 118
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/FeatureSplit;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 119
    :cond_1a
    new-instance v1, Lcom/android/tools/r8/internal/GR;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/tools/r8/internal/GR;-><init>(Lcom/android/tools/r8/internal/QC;Ljava/util/AbstractMap;)V

    return-object v1

    nop

    :array_0
    .array-data 2
        0x20s
        0x9s
        0x3as
    .end array-data
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/ng0;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    new-instance v1, Lcom/android/tools/r8/internal/WG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/WG0;-><init>(Lcom/android/tools/r8/internal/ng0;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public final synthetic e(Lcom/android/tools/r8/internal/ng0;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HR;->f:Lcom/android/tools/r8/internal/Tl0;

    new-instance v1, Lcom/android/tools/r8/internal/XG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/XG0;-><init>(Lcom/android/tools/r8/internal/ng0;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    return-void
.end method
