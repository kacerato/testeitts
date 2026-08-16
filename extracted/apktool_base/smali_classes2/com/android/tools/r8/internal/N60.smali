.class public final Lcom/android/tools/r8/internal/N60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Tl0;

.field public final b:Lcom/android/tools/r8/internal/ig0;

.field public final c:Ljava/util/HashSet;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%(\\d+\\$)?([-+#, 0(<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/N60;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Tl0;Lcom/android/tools/r8/internal/ig0;Ljava/util/HashSet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/N60;->a:Lcom/android/tools/r8/internal/Tl0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/N60;->c:Ljava/util/HashSet;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/N60;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/internal/ng0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ng0;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " used because it matches string pool constant "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    sget-object v1, Lcom/android/tools/r8/internal/N60;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 59
    :goto_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    const-string v7, "-nomatch-"

    const/4 v8, 0x1

    if-eqz v6, :cond_10

    .line 60
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 61
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    if-nez v6, :cond_0

    if-ne v9, v2, :cond_0

    return-object v7

    :cond_0
    if-le v6, v4, :cond_3

    .line 62
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v4, v6, :cond_2

    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v5, v4

    :cond_3
    const/4 v4, 0x6

    .line 64
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    .line 65
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eqz v4, :cond_f

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_f

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x25

    const-string v7, ".*"

    if-eq v4, v6, :cond_b

    const/16 v6, 0x45

    if-eq v4, v6, :cond_a

    const/16 v6, 0x58

    if-eq v4, v6, :cond_9

    const/16 v6, 0x78

    if-eq v4, v6, :cond_9

    const/16 v6, 0x47

    if-eq v4, v6, :cond_8

    const/16 v6, 0x48

    if-eq v4, v6, :cond_7

    const/16 v6, 0x6e

    if-eq v4, v6, :cond_6

    const/16 v6, 0x6f

    if-eq v4, v6, :cond_5

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    move-object v4, v7

    goto :goto_3

    .line 68
    :pswitch_0
    const-string v4, "-?[\\p{XDigit},.]+"

    goto :goto_3

    .line 69
    :pswitch_1
    const-string v4, "-?\\p{Digit}+[,.]\\p{Digit}+e\\+?\\p{Digit}+"

    goto :goto_3

    .line 70
    :pswitch_2
    const-string v4, "(true|false)"

    goto :goto_3

    .line 71
    :pswitch_3
    const-string v4, "0x[\\p{XDigit},.+p]+"

    goto :goto_3

    .line 72
    :pswitch_4
    const-string v4, "."

    goto :goto_3

    .line 73
    :pswitch_5
    const-string v4, "(TRUE|FALSE)"

    goto :goto_3

    .line 74
    :pswitch_6
    const-string v4, "0X[\\p{XDigit},.+P]+"

    goto :goto_3

    .line 75
    :cond_5
    :pswitch_7
    const-string v4, "\\p{Digit}+"

    goto :goto_3

    .line 76
    :cond_6
    const-string v4, "\n"

    goto :goto_3

    .line 77
    :cond_7
    :pswitch_8
    const-string v4, "(null|\\p{XDigit}+)"

    goto :goto_3

    .line 78
    :cond_8
    :pswitch_9
    const-string v4, "-?[\\p{XDigit},.+eE]+"

    goto :goto_3

    .line 79
    :cond_9
    const-string v4, "\\p{XDigit}+"

    goto :goto_3

    .line 80
    :cond_a
    const-string v4, "-?\\p{Digit}+[,.]\\p{Digit}+E\\+?\\p{Digit}+"

    goto :goto_3

    .line 81
    :cond_b
    const-string v4, "%"

    .line 82
    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_d

    const/4 v6, 0x3

    .line 83
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 84
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    const-string v10, "0"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0*"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 87
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    :cond_d
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 89
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-lt v6, v8, :cond_e

    add-int/lit8 v7, v6, -0x1

    .line 90
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_e

    add-int/lit8 v6, v6, -0x2

    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_f

    .line 92
    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_5
    move v4, v9

    goto/16 :goto_0

    :cond_10
    if-ge v4, v2, :cond_13

    .line 93
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-ge v4, v2, :cond_12

    .line 94
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_11

    move v3, v8

    goto :goto_7

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    :goto_7
    or-int/2addr v5, v3

    :cond_13
    if-nez v5, :cond_14

    return-object v7

    .line 95
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/tools/r8/internal/xT;)Ljava/util/stream/Stream;
    .locals 0

    .line 55
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/xT;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(ILjava/lang/String;)Z
    .locals 0

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/regex/Pattern;Lcom/android/tools/r8/internal/ng0;)Z
    .locals 0

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/internal/ng0;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/android/tools/r8/internal/ng0;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/ng0;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/android/tools/r8/internal/xT;)Z
    .locals 0

    .line 24
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/FY;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/android/tools/r8/internal/xT;)Z
    .locals 0

    .line 15
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/FY;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/android/tools/r8/internal/xT;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/xT;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 16
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    move v7, v5

    move v8, v7

    :goto_0
    const/16 v9, 0x2f

    if-ge v5, v2, :cond_3

    .line 17
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_0

    move v11, v3

    goto :goto_1

    :cond_0
    move v11, v4

    :goto_1
    or-int/2addr v7, v11

    const/16 v11, 0x25

    if-ne v10, v11, :cond_1

    move v12, v3

    goto :goto_2

    :cond_1
    move v12, v4

    :goto_2
    or-int/2addr v8, v12

    if-eqz v6, :cond_2

    const/16 v6, 0x3a

    if-eq v10, v6, :cond_2

    if-eq v10, v11, :cond_2

    if-eq v10, v9, :cond_2

    move v6, v3

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    add-int/2addr v5, v3

    goto :goto_0

    .line 18
    :cond_3
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/N60;->d:Z

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual/range {p0 .. p2}, Lcom/android/tools/r8/internal/N60;->c(Ljava/util/Set;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object v2

    goto :goto_4

    .line 20
    :cond_4
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v2

    :goto_4
    if-eqz v6, :cond_5

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N60;->c(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object v5

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v5

    :goto_5
    if-eqz v8, :cond_6

    if-nez v7, :cond_6

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N60;->b(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object v6

    goto :goto_6

    .line 23
    :cond_6
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v6

    :goto_6
    if-eqz v7, :cond_7

    .line 24
    invoke-virtual/range {p0 .. p2}, Lcom/android/tools/r8/internal/N60;->b(Ljava/util/Set;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object v7

    goto :goto_7

    .line 25
    :cond_7
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v7

    .line 26
    :goto_7
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_8
    move-object/from16 v17, v5

    goto/16 :goto_12

    .line 28
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    :goto_8
    move-object/from16 v17, v5

    goto/16 :goto_d

    .line 29
    :cond_b
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_c

    move v9, v3

    goto :goto_9

    :cond_c
    move v9, v4

    .line 30
    :goto_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v9, v11, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v11, v9, 0x1

    .line 31
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x80

    if-ge v12, v14, :cond_e

    .line 32
    sget-object v15, Lcom/android/tools/r8/internal/uU;->a:[B

    aget-byte v12, v15, v12

    goto :goto_a

    .line 33
    :cond_e
    sget-object v12, Lcom/android/tools/r8/internal/uU;->a:[B

    const/4 v12, -0x1

    :goto_a
    if-ltz v12, :cond_a

    const/16 v15, 0xa

    if-lt v12, v15, :cond_f

    goto :goto_8

    :cond_f
    neg-int v12, v12

    move/from16 v16, v11

    int-to-long v10, v12

    move-object/from16 v17, v5

    int-to-long v4, v15

    const-wide/high16 v18, -0x8000000000000000L

    .line 34
    div-long v20, v18, v4

    move/from16 v12, v16

    .line 35
    :goto_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_13

    add-int/lit8 v13, v12, 0x1

    .line 36
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ge v12, v14, :cond_10

    .line 37
    sget-object v22, Lcom/android/tools/r8/internal/uU;->a:[B

    aget-byte v12, v22, v12

    goto :goto_c

    .line 38
    :cond_10
    sget-object v12, Lcom/android/tools/r8/internal/uU;->a:[B

    const/4 v12, -0x1

    :goto_c
    if-ltz v12, :cond_16

    if-ge v12, v15, :cond_16

    cmp-long v22, v10, v20

    if-gez v22, :cond_11

    goto :goto_d

    :cond_11
    mul-long/2addr v10, v4

    int-to-long v14, v12

    add-long v23, v14, v18

    cmp-long v12, v10, v23

    if-gez v12, :cond_12

    goto :goto_d

    :cond_12
    sub-long/2addr v10, v14

    move v12, v13

    const/16 v14, 0x80

    const/16 v15, 0xa

    goto :goto_b

    :cond_13
    if-eqz v9, :cond_14

    .line 39
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_e

    :cond_14
    cmp-long v4, v10, v18

    if-nez v4, :cond_15

    goto :goto_d

    :cond_15
    neg-long v4, v10

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_18

    .line 41
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-eqz v5, :cond_17

    goto :goto_f

    .line 42
    :cond_17
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_19

    .line 43
    iget-object v5, v0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    .line 44
    iget-object v5, v5, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    .line 45
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/tools/r8/internal/ng0;

    goto :goto_11

    :cond_19
    const/4 v10, 0x0

    :goto_11
    if-eqz v10, :cond_1a

    .line 46
    invoke-static {v10}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    goto :goto_13

    :cond_1a
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v4

    goto :goto_13

    .line 47
    :goto_12
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v4

    :goto_13
    const/4 v5, 0x5

    .line 48
    new-array v5, v5, [Ljava/util/stream/Stream;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    aput-object v17, v5, v3

    const/4 v2, 0x2

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object v7, v5, v2

    const/4 v2, 0x4

    aput-object v4, v5, v2

    .line 49
    invoke-static {v5}, Lcom/android/tools/r8/internal/ap0;->a([Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 50
    new-instance v3, Lcom/android/tools/r8/internal/kN0;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/kN0;-><init>(Lcom/android/tools/r8/internal/N60;Ljava/lang/String;)V

    .line 51
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(_resources)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/nN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nN0;-><init>()V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 6
    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/Ke;->a:Ljava/util/stream/Collector;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/oN0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/oN0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/N60;->c:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/pN0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/pN0;-><init>(I)V

    .line 11
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/qN0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/qN0;-><init>(Lcom/android/tools/r8/internal/N60;Ljava/util/Set;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/rN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rN0;-><init>()V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Lcom/android/tools/r8/internal/ng0;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/N60;->a:Lcom/android/tools/r8/internal/Tl0;

    new-instance v1, Lcom/android/tools/r8/internal/sN0;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/sN0;-><init>(Lcom/android/tools/r8/internal/ng0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/N60;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(_resources)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/mN0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/mN0;-><init>(Ljava/util/regex/Pattern;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 8
    :catch_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Set;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 3

    const/16 v0, 0x2f

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    const/16 p1, 0x3a

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 13
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lg0;

    if-eqz p1, :cond_1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/ig0;->c:Ljava/util/EnumMap;

    .line 19
    invoke-virtual {p1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/hN0;

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/hN0;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/lN0;

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/lN0;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(_resources)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/tN0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/tN0;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/Set;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/ig0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x2f

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2e

    .line 5
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/N60;->b:Lcom/android/tools/r8/internal/ig0;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/ig0;->c:Ljava/util/EnumMap;

    .line 10
    invoke-virtual {p1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/iN0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/iN0;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/jN0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/jN0;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
