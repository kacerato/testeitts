.class public final Lcom/android/tools/r8/shaking/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/file/Path;

.field public final h:Lcom/android/tools/r8/origin/Origin;

.field public final synthetic i:Lcom/android/tools/r8/shaking/q3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/q3;Lcom/android/tools/r8/shaking/w3;)V
    .locals 3

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    iput p1, p0, Lcom/android/tools/r8/shaking/s3;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/shaking/s3;->e:I

    iput p1, p0, Lcom/android/tools/r8/shaking/s3;->f:I

    invoke-interface {p2}, Lcom/android/tools/r8/shaking/w3;->get()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/zq0;->a:[C

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v2, 0xfeff

    if-ne p1, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/tools/r8/shaking/w3;->a()Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s3;->g:Ljava/nio/file/Path;

    invoke-interface {p2}, Lcom/android/tools/r8/shaking/w3;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s3;->a:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/tools/r8/shaking/w3;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public static synthetic a(CI)Z
    .locals 1

    .line 96
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(ZCZI)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eq p3, p1, :cond_3

    :cond_0
    if-nez p0, :cond_1

    .line 86
    sget-char p1, Ljava/io/File;->pathSeparatorChar:C

    if-ne p3, p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-nez p0, :cond_2

    .line 87
    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-nez p0, :cond_4

    const/16 p0, 0x28

    if-eq p3, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(I)Z
    .locals 0

    .line 14
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic e(I)Z
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    .line 19
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic f(I)Z
    .locals 1

    .line 15
    invoke-static {p0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;
    .locals 4

    .line 187
    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v0

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p1

    .line 188
    :cond_0
    new-instance v0, Lcom/android/tools/r8/position/TextRange;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/position/TextRange;-><init>(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public final a(IZ)Lcom/android/tools/r8/shaking/r3;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 98
    const-string v2, "> is invalid."

    const-string v3, "Wildcard <"

    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    .line 99
    new-instance v4, Lcom/android/tools/r8/internal/eC;

    .line 100
    invoke-direct {v4}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v5

    .line 103
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v6

    if-eqz p2, :cond_0

    const/16 v8, 0x21

    .line 104
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 105
    :goto_0
    iget v9, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 106
    :goto_1
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(I)Z

    move-result v15

    if-nez v15, :cond_18

    .line 107
    iget-object v15, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    .line 108
    sget-boolean v16, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v16, :cond_2

    if-eqz v12, :cond_2

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    :goto_2
    const/16 v7, 0x3e

    const/4 v10, 0x1

    if-eqz v13, :cond_9

    if-ne v15, v7, :cond_4

    .line 109
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 110
    new-instance v10, Lcom/android/tools/r8/shaking/r4$a;

    invoke-direct {v10, v7}, Lcom/android/tools/r8/shaking/r4$a;-><init>(I)V

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v11, v7

    const/4 v13, 0x0

    goto :goto_1

    :catch_0
    const/4 v13, 0x0

    goto :goto_3

    .line 112
    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v5, 0x0

    .line 114
    invoke-virtual {v1, v5, v4}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 115
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :catch_1
    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 117
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v1, v2, v4}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 120
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1

    :cond_4
    const/16 v7, 0x30

    if-gt v7, v15, :cond_5

    const/16 v7, 0x39

    if-le v15, v7, :cond_6

    :cond_5
    const/16 v7, 0x2d

    if-ne v15, v7, :cond_7

    .line 121
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    int-to-char v7, v15

    .line 122
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    :goto_4
    add-int/2addr v11, v7

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x2

    if-eq v1, v7, :cond_8

    const/4 v13, 0x0

    goto :goto_5

    .line 124
    :cond_8
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v4

    const-string v5, "Use of generics not allowed for java type."

    invoke-direct {v2, v5, v3, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 127
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1

    :cond_9
    if-eqz v12, :cond_c

    const/16 v7, 0x2a

    if-ne v15, v7, :cond_b

    const/4 v7, 0x3

    if-lt v14, v7, :cond_a

    .line 128
    new-instance v7, Lcom/android/tools/r8/shaking/r4$b;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v7

    const/4 v14, 0x0

    :cond_a
    int-to-char v7, v15

    .line 130
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v10

    .line 131
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    goto :goto_4

    .line 132
    :cond_b
    new-instance v7, Lcom/android/tools/r8/shaking/r4$b;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    const/4 v12, 0x0

    const/4 v14, 0x0

    :cond_c
    :goto_5
    if-nez v16, :cond_d

    if-nez v12, :cond_e

    if-nez v13, :cond_e

    :cond_d
    const/16 v7, 0x2a

    goto :goto_6

    .line 133
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :goto_6
    if-ne v15, v7, :cond_10

    const/4 v7, 0x2

    if-ne v1, v7, :cond_f

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v12, v15

    .line 135
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v12, v7

    move v14, v10

    goto :goto_7

    .line 136
    :cond_f
    new-instance v7, Lcom/android/tools/r8/shaking/r4$b;

    int-to-char v10, v15

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 137
    :goto_7
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    goto/16 :goto_4

    :cond_10
    const/16 v7, 0x3f

    if-eq v15, v7, :cond_17

    const/16 v7, 0x25

    if-ne v15, v7, :cond_11

    goto :goto_9

    :cond_11
    if-ne v1, v10, :cond_12

    .line 138
    invoke-static {v15}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v7

    if-nez v7, :cond_16

    const/16 v7, 0x2e

    if-eq v15, v7, :cond_16

    const/16 v7, 0x2a

    if-eq v15, v7, :cond_16

    const/16 v7, 0x3f

    if-ne v15, v7, :cond_13

    goto :goto_8

    .line 139
    :cond_12
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/shaking/s3;->b(I)Z

    move-result v7

    if-nez v7, :cond_16

    const/16 v7, 0x3e

    if-ne v15, v7, :cond_13

    goto :goto_8

    :cond_13
    if-eq v1, v10, :cond_14

    const/16 v7, 0x3c

    if-ne v15, v7, :cond_14

    .line 140
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    goto/16 :goto_4

    :cond_14
    if-eqz v6, :cond_18

    if-ne v5, v15, :cond_15

    goto :goto_a

    .line 142
    :cond_15
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    int-to-char v3, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\', expected end-quote."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 145
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1

    .line 146
    :cond_16
    :goto_8
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    goto/16 :goto_4

    .line 147
    :cond_17
    :goto_9
    new-instance v7, Lcom/android/tools/r8/shaking/r4$b;

    int-to-char v10, v15

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 148
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    goto/16 :goto_4

    :cond_18
    :goto_a
    if-eqz v6, :cond_19

    add-int/lit8 v2, v11, 0x1

    goto :goto_b

    :cond_19
    move v2, v11

    .line 149
    :goto_b
    iput v2, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    if-eqz v12, :cond_1a

    .line 150
    new-instance v2, Lcom/android/tools/r8/shaking/r4$b;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_1a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    if-nez v13, :cond_1c

    :cond_1b
    const/4 v3, 0x0

    goto :goto_c

    .line 151
    :cond_1c
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v4

    const-string v5, "Missing closing angular bracket"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 154
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1

    :goto_c
    if-ne v9, v11, :cond_1d

    return-object v3

    .line 155
    :cond_1d
    new-instance v1, Lcom/android/tools/r8/shaking/r3;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-direct {v1, v2, v3, v8}, Lcom/android/tools/r8/shaking/r3;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Z)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 6
    iput-object v0, p2, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object v0

    .line 8
    iput-object p1, v0, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    .line 13
    iput-object v0, p2, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3$a;->a()Lcom/android/tools/r8/shaking/f3;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/v3;

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 97
    new-instance v0, Lcom/android/tools/r8/shaking/He;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/He;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;
    .locals 10

    .line 189
    instance-of v0, p2, Lcom/android/tools/r8/position/TextPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    check-cast p2, Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-virtual {p3}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 192
    invoke-virtual {p2}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 193
    invoke-virtual {p2}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/position/TextPosition;->getOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v4, v8

    if-gtz v0, :cond_1

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/position/TextPosition;->getOffsetAsInt()I

    move-result p2

    invoke-virtual {p3}, Lcom/android/tools/r8/position/TextPosition;->getOffsetAsInt()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final a(Ljava/util/function/IntPredicate;)Ljava/lang/String;
    .locals 4

    .line 157
    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    move v1, v0

    .line 158
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 160
    invoke-interface {p1, v2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_1
    iput v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    .line 163
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Ljava/nio/file/Path;
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 75
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->g:Ljava/nio/file/Path;

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v1

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v2

    .line 78
    new-instance v3, Lcom/android/tools/r8/shaking/Ne;

    invoke-direct {v3, v2, v1, p1}, Lcom/android/tools/r8/shaking/Ne;-><init>(ZCZ)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No closing "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " quote"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->g:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    const-string p1, "File name expected"

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1

    .line 85
    :cond_3
    const-string p1, "Options with file names are not supported"

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option \"-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p1

    invoke-direct {v1, p2, p3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 4
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/f3$a;Lcom/android/tools/r8/internal/Sr0;Ljava/util/function/Consumer;)V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    const/16 v1, 0x21

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p1, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    :cond_0
    const/16 v1, 0x40

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    const-string v2, "interface"

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object p3, Lcom/android/tools/r8/shaking/l3;->b:Lcom/android/tools/r8/shaking/l3;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    sget-object p3, Lcom/android/tools/r8/shaking/l3;->e:Lcom/android/tools/r8/shaking/j3;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    goto :goto_0

    .line 67
    :cond_3
    const-string v1, "class"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    sget-object p3, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    goto :goto_0

    .line 69
    :cond_4
    const-string v1, "enum"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    sget-object p3, Lcom/android/tools/r8/shaking/l3;->d:Lcom/android/tools/r8/shaking/i3;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/l3;)Lcom/android/tools/r8/shaking/f3$a;

    .line 71
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Sr0;->a()V

    return-void

    .line 72
    :cond_5
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/f3$a;Z)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/s3;->b(Lcom/android/tools/r8/shaking/f3$a;Z)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/q2;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/s3;->b(Lcom/android/tools/r8/shaking/f3$a;Z)V

    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 5

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/r4;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->a()Lcom/android/tools/r8/shaking/r4$a;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lcom/android/tools/r8/shaking/r4$a;->b:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/r4$b;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/r4$a;->a(Lcom/android/tools/r8/shaking/r4$b;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget v1, v1, Lcom/android/tools/r8/shaking/r4$a;->b:I

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wildcard <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "> is invalid (only seen "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at this point)."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 27
    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->b()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring option: -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 183
    monitor-enter v0

    .line 184
    :try_start_0
    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 186
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 5

    .line 164
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 165
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-static {}, Lcom/android/tools/r8/shaking/c3;->a()Lcom/android/tools/r8/shaking/c3$a;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 167
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/shaking/s3;->a(IZ)Lcom/android/tools/r8/shaking/r3;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/r3;->b:Z

    iget-object v1, v1, Lcom/android/tools/r8/shaking/r3;->a:Lcom/android/tools/r8/shaking/q3$a;

    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 169
    invoke-static {v1, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/c3$a;->a(ZLcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3$a;

    .line 171
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v1, 0x2c

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3$a;->a()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    .line 174
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 175
    :cond_1
    const-string p1, "Class name expected"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1

    .line 176
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/shaking/i4;->a:Z

    .line 177
    sget-object v0, Lcom/android/tools/r8/shaking/j4;->c:Lcom/android/tools/r8/shaking/j4;

    .line 178
    invoke-static {v0}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    .line 179
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(C)Z
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget p1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(I)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/f3$a;)Z
    .locals 6

    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 31
    iget v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    const/16 v2, 0x40

    .line 32
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->l()Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v2

    .line 34
    iget-object v4, v2, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    .line 35
    const-string v5, "interface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    iput v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    goto :goto_1

    .line 37
    :cond_0
    sget-object v1, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v3

    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-eqz v3, :cond_2

    .line 38
    iget-object v0, p1, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    .line 39
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_3

    .line 40
    :cond_2
    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v3, 0x21

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    iget-object v3, p1, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    goto :goto_2

    .line 44
    :cond_3
    iget-object v3, p1, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    .line 45
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 46
    const-string v4, "public"

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    iget v0, v3, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/2addr v0, v1

    .line 48
    iput v0, v3, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_3

    .line 49
    :cond_4
    const-string v4, "final"

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    iget v0, v3, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit8 v0, v0, 0x10

    .line 51
    iput v0, v3, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_3

    .line 52
    :cond_5
    const-string v4, "abstract"

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 53
    iget v0, v3, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit16 v0, v0, 0x400

    .line 54
    iput v0, v3, Lcom/android/tools/r8/shaking/S2;->a:I

    :goto_3
    move v0, v1

    goto :goto_0

    .line 55
    :cond_6
    iput v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    return v0
.end method

.method public final a(Ljava/lang/Integer;)Z
    .locals 2

    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    sub-int/2addr v0, v1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 93
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;
    .locals 4

    .line 266
    new-instance v0, Lcom/android/tools/r8/shaking/h4;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->u()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/shaking/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;
    .locals 3

    .line 267
    new-instance v0, Lcom/android/tools/r8/shaking/h4;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/s3;->j(Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 268
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/tools/r8/shaking/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/ue;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/ue;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final b(C)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/position/TextPosition;)V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v2, "includecode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring modifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 274
    monitor-enter v0

    .line 275
    :try_start_0
    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit v0

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" is used in a "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "field"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " rule. The characters in this "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " are legal for the JVM, but unlikely to originate from a source language. Maybe this is not the rule you are looking for."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p1

    invoke-direct {v1, p2, p3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/f3$a;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6
    invoke-static {}, Lcom/android/tools/r8/shaking/c3;->a()Lcom/android/tools/r8/shaking/c3$a;

    move-result-object v2

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/shaking/s3;->a(IZ)Lcom/android/tools/r8/shaking/r3;

    move-result-object v5

    if-eqz v5, :cond_55

    .line 8
    iget-boolean v6, v5, Lcom/android/tools/r8/shaking/r3;->b:Z

    iget-object v5, v5, Lcom/android/tools/r8/shaking/r3;->a:Lcom/android/tools/r8/shaking/q3$a;

    sget-object v7, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v8, v8, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 9
    invoke-static {v5, v7, v8}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v5

    .line 10
    invoke-virtual {v2, v6, v5}, Lcom/android/tools/r8/shaking/c3$a;->a(ZLcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3$a;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v5, 0x2c

    .line 12
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/c3$a;->a()Lcom/android/tools/r8/shaking/c3;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/f3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/f3$a;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 16
    const-string v2, "implements"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "interface"

    const/16 v6, 0x40

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 17
    iput-boolean v7, v1, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    goto :goto_0

    .line 18
    :cond_1
    const-string v2, "extends"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 19
    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    :goto_0
    const/4 v2, 0x0

    .line 20
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 21
    iget v9, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    .line 22
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->l()Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v10

    .line 24
    iget-object v11, v10, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 26
    iput v9, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 27
    :cond_3
    sget-object v9, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v11, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v11, v11, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v10, v9, v11}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_5

    if-nez v2, :cond_4

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    :cond_4
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 31
    :goto_3
    sget-boolean v9, Lcom/android/tools/r8/shaking/f3$a;->o:Z

    if-nez v9, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 32
    :cond_8
    :goto_4
    iget-object v9, v1, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->l()Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v2

    sget-object v9, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v10, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v10, v10, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v9, v10}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v2

    .line 34
    iput-object v2, v1, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    .line 35
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v2

    if-nez v2, :cond_54

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 37
    :goto_5
    invoke-static {}, Lcom/android/tools/r8/shaking/R3;->a()Lcom/android/tools/r8/shaking/R3$a;

    move-result-object v2

    const/4 v9, 0x0

    .line 38
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 39
    iget v10, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    .line 40
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->l()Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v11

    .line 42
    iget-object v12, v11, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 44
    iput v10, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 45
    :cond_b
    sget-object v10, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v12, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v12, v12, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v11, v10, v12}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v10

    :goto_7
    if-eqz v10, :cond_d

    if-nez v9, :cond_c

    .line 46
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :cond_c
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    if-eqz v9, :cond_e

    goto :goto_8

    .line 48
    :cond_e
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 49
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    sget-boolean v10, Lcom/android/tools/r8/shaking/R3$a;->i:Z

    if-nez v10, :cond_10

    if-eqz v9, :cond_f

    goto :goto_9

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 51
    :cond_10
    :goto_9
    iput-object v9, v2, Lcom/android/tools/r8/shaking/R3$a;->a:Ljava/util/List;

    move v9, v4

    :goto_a
    const/16 v10, 0x21

    if-eqz v9, :cond_1f

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 54
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 55
    iget-object v10, v2, Lcom/android/tools/r8/shaking/R3$a;->c:Lcom/android/tools/r8/shaking/S2;

    goto :goto_b

    .line 56
    :cond_11
    iget-object v10, v2, Lcom/android/tools/r8/shaking/R3$a;->b:Lcom/android/tools/r8/shaking/S2;

    .line 57
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 58
    iget-object v11, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v12, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x66

    if-eq v11, v12, :cond_1c

    const/16 v12, 0x6e

    if-eq v11, v12, :cond_1b

    const/16 v12, 0x70

    if-eq v11, v12, :cond_18

    const/16 v12, 0x76

    if-eq v11, v12, :cond_17

    const/16 v12, 0x73

    if-eq v11, v12, :cond_13

    const/16 v12, 0x74

    if-eq v11, v12, :cond_12

    packed-switch v11, :pswitch_data_0

    move v11, v7

    goto/16 :goto_c

    .line 59
    :pswitch_0
    const-string v11, "constructor"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 60
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    const/high16 v13, 0x10000

    or-int/2addr v12, v13

    .line 61
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto/16 :goto_c

    .line 62
    :pswitch_1
    const-string v11, "bridge"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 63
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/2addr v12, v6

    .line 64
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto/16 :goto_c

    .line 65
    :pswitch_2
    const-string v11, "abstract"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 66
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit16 v12, v12, 0x400

    .line 67
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto/16 :goto_c

    .line 68
    :cond_12
    const-string v11, "transient"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 69
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit16 v12, v12, 0x80

    .line 70
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto/16 :goto_c

    .line 71
    :cond_13
    const-string v11, "synchronized"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 72
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit8 v12, v12, 0x20

    .line 73
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto/16 :goto_c

    .line 74
    :cond_14
    const-string v11, "static"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 75
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit8 v12, v12, 0x8

    .line 76
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto/16 :goto_c

    .line 77
    :cond_15
    const-string v11, "strictfp"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 78
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit16 v12, v12, 0x800

    .line 79
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 80
    :cond_16
    const-string v11, "synthetic"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 81
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit16 v12, v12, 0x1000

    .line 82
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 83
    :cond_17
    const-string v11, "volatile"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 84
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/2addr v12, v6

    .line 85
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 86
    :cond_18
    const-string v11, "public"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 87
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/2addr v12, v4

    .line 88
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 89
    :cond_19
    const-string v11, "private"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 90
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/2addr v12, v3

    .line 91
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 92
    :cond_1a
    const-string v11, "protected"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 93
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit8 v12, v12, 0x4

    .line 94
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 95
    :cond_1b
    const-string v11, "native"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 96
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit16 v12, v12, 0x100

    .line 97
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    goto :goto_c

    .line 98
    :cond_1c
    const-string v11, "final"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 99
    iget v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    or-int/lit8 v12, v12, 0x10

    .line 100
    iput v12, v10, Lcom/android/tools/r8/shaking/S2;->a:I

    :cond_1d
    :goto_c
    if-nez v11, :cond_1e

    if-eqz v9, :cond_1e

    .line 101
    const-string v9, "!"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/shaking/s3;->h(Ljava/lang/String;)V

    :cond_1e
    move v9, v11

    goto/16 :goto_a

    .line 102
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v9

    if-nez v9, :cond_21

    .line 104
    iget-object v9, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v11, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_20

    goto :goto_d

    .line 105
    :cond_20
    const-string v1, "Unexpected character \'!\': The negation character can only be used to negate access flags"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 106
    :cond_21
    :goto_d
    const-string v9, "<methods>"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x3b

    if-eqz v9, :cond_23

    .line 107
    sget-object v9, Lcom/android/tools/r8/shaking/U3;->e:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    :cond_22
    :goto_e
    move v10, v4

    goto/16 :goto_1d

    .line 108
    :cond_23
    const-string v9, "<fields>"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 109
    sget-object v9, Lcom/android/tools/r8/shaking/U3;->c:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    goto :goto_e

    .line 110
    :cond_24
    const-string v9, "<init>"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 111
    sget-object v11, Lcom/android/tools/r8/shaking/U3;->g:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v11}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 112
    invoke-static {v9}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v9

    .line 113
    invoke-static {v9}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v9

    iput-object v9, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->k()Ljava/util/ArrayList;

    move-result-object v9

    .line 115
    iput-object v9, v2, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    goto :goto_e

    .line 116
    :cond_25
    const-string v11, "<clinit>"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 117
    sget-object v9, Lcom/android/tools/r8/shaking/U3;->f:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 118
    invoke-static {v11}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v9

    .line 119
    invoke-static {v9}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v9

    iput-object v9, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->k()Ljava/util/ArrayList;

    move-result-object v9

    .line 121
    iput-object v9, v2, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    goto :goto_e

    .line 122
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v12

    const/4 v13, 0x3

    .line 123
    invoke-virtual {v0, v13, v7}, Lcom/android/tools/r8/shaking/s3;->a(IZ)Lcom/android/tools/r8/shaking/r3;

    move-result-object v14

    if-nez v14, :cond_27

    const/4 v14, 0x0

    goto :goto_10

    .line 124
    :cond_27
    sget-boolean v15, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v15, :cond_29

    iget-boolean v15, v14, Lcom/android/tools/r8/shaking/r3;->b:Z

    if-nez v15, :cond_28

    goto :goto_f

    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 125
    :cond_29
    :goto_f
    iget-object v14, v14, Lcom/android/tools/r8/shaking/r3;->a:Lcom/android/tools/r8/shaking/q3$a;

    :goto_10
    if-eqz v14, :cond_22

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 127
    iget-object v15, v14, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 128
    sget-object v3, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    goto/16 :goto_e

    :cond_2a
    const/16 v3, 0x28

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v15

    const-string v6, "Unexpected character \'<\' in method name. The character \'<\' is only allowed in the method name \'<init>\'."

    const-string v8, "Unexpected character \'>\' in method name. The character \'>\' is only allowed in the method name \'<init>\'."

    const-string v10, ">"

    const-string v4, "<"

    const-string v3, "Member rule for <clinit> has no effect."

    if-eqz v15, :cond_2f

    .line 130
    iget-object v9, v14, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 131
    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v6, v3, v8, v12}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_11

    .line 132
    :cond_2b
    iget-object v3, v14, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 133
    iget-object v3, v14, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 134
    :goto_11
    sget-object v3, Lcom/android/tools/r8/shaking/U3;->h:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 135
    invoke-static {v14}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->k()Ljava/util/ArrayList;

    move-result-object v3

    .line 137
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    :cond_2c
    :goto_12
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 138
    :cond_2d
    invoke-virtual {v0, v8, v12}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 139
    :cond_2e
    invoke-virtual {v0, v6, v12}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 140
    :cond_2f
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_31

    .line 141
    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 142
    invoke-static {v14, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    instance-of v4, v3, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v4, :cond_30

    .line 145
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 146
    sget-object v4, Lcom/android/tools/r8/shaking/U3;->g:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 147
    invoke-static {v9}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v4

    .line 148
    invoke-static {v4}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v4

    iput-object v4, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 149
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->k()Ljava/util/ArrayList;

    move-result-object v3

    .line 151
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    goto :goto_12

    .line 152
    :cond_30
    const-string v1, "Expected [access-flag]* void <init>"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 153
    :cond_31
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 154
    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 155
    invoke-static {v14, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    instance-of v4, v3, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v4, :cond_32

    .line 158
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 159
    sget-object v4, Lcom/android/tools/r8/shaking/U3;->f:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 160
    invoke-static {v11}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v4

    .line 161
    invoke-static {v4}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v4

    iput-object v4, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 162
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->k()Ljava/util/ArrayList;

    move-result-object v3

    .line 164
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    goto/16 :goto_12

    .line 165
    :cond_32
    const-string v1, "Expected [access-flag]* void <clinit>"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 166
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v9

    .line 167
    invoke-virtual {v0, v13, v7}, Lcom/android/tools/r8/shaking/s3;->a(IZ)Lcom/android/tools/r8/shaking/r3;

    move-result-object v13

    if-nez v13, :cond_34

    const/4 v13, 0x0

    goto :goto_14

    .line 168
    :cond_34
    sget-boolean v15, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v15, :cond_36

    iget-boolean v15, v13, Lcom/android/tools/r8/shaking/r3;->b:Z

    if-nez v15, :cond_35

    goto :goto_13

    :cond_35
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 169
    :cond_36
    :goto_13
    iget-object v13, v13, Lcom/android/tools/r8/shaking/r3;->a:Lcom/android/tools/r8/shaking/q3$a;

    :goto_14
    if-eqz v13, :cond_4e

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v15, 0x28

    .line 171
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v15

    if-eqz v15, :cond_3c

    .line 172
    invoke-virtual {v13}, Lcom/android/tools/r8/shaking/q3$a;->a()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual {v13}, Lcom/android/tools/r8/shaking/q3$a;->b()Z

    move-result v12

    if-eqz v12, :cond_39

    .line 173
    :cond_37
    iget-object v12, v13, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 174
    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v6, v3, v8, v9}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_15

    .line 175
    :cond_38
    iget-object v3, v13, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 176
    iget-object v3, v13, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 177
    :cond_39
    :goto_15
    sget-object v3, Lcom/android/tools/r8/shaking/U3;->i:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 178
    invoke-static {v13}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 179
    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 180
    invoke-static {v14, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v3

    .line 181
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->k()Ljava/util/ArrayList;

    move-result-object v3

    .line 183
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    goto :goto_16

    .line 184
    :cond_3a
    invoke-virtual {v0, v8, v9}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 185
    :cond_3b
    invoke-virtual {v0, v6, v9}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 186
    :cond_3c
    invoke-virtual {v14}, Lcom/android/tools/r8/shaking/q3$a;->b()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 187
    iget-object v3, v14, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v0, v12, v4, v3}, Lcom/android/tools/r8/shaking/s3;->b(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_3d
    invoke-virtual {v13}, Lcom/android/tools/r8/shaking/q3$a;->b()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 189
    iget-object v3, v13, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    const-string v4, "field name"

    invoke-virtual {v0, v9, v4, v3}, Lcom/android/tools/r8/shaking/s3;->b(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_3e
    sget-object v3, Lcom/android/tools/r8/shaking/U3;->b:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    .line 191
    invoke-static {v13}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 192
    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 193
    invoke-static {v14, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v3

    .line 194
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    .line 195
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v3

    .line 197
    const-string v4, "return"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eqz p2, :cond_4d

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 199
    const-string v3, "true"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 200
    new-instance v3, Lcom/android/tools/r8/shaking/T3;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/tools/r8/shaking/T3;-><init>(Z)V

    .line 201
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    goto/16 :goto_12

    .line 202
    :cond_3f
    const-string v3, "false"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 203
    new-instance v3, Lcom/android/tools/r8/shaking/T3;

    invoke-direct {v3, v7}, Lcom/android/tools/r8/shaking/T3;-><init>(Z)V

    .line 204
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    goto/16 :goto_12

    .line 205
    :cond_40
    const-string v3, "null"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 206
    new-instance v3, Lcom/android/tools/r8/shaking/T3;

    .line 207
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/shaking/T3;-><init>(Lcom/android/tools/r8/internal/p10;)V

    .line 208
    iput-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    goto/16 :goto_12

    .line 209
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 211
    const-string v4, ".."

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->b()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_42

    goto :goto_17

    .line 214
    :cond_42
    const-string v1, "Expected integer value"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    :cond_43
    move-object v4, v3

    .line 215
    :goto_17
    new-instance v6, Lcom/android/tools/r8/shaking/T3;

    new-instance v8, Lcom/android/tools/r8/internal/kU;

    .line 216
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v8, v3, v4}, Lcom/android/tools/r8/internal/kU;-><init>(II)V

    invoke-direct {v6, v8}, Lcom/android/tools/r8/shaking/T3;-><init>(Lcom/android/tools/r8/internal/kU;)V

    .line 217
    iput-object v6, v2, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    goto/16 :goto_12

    .line 218
    :cond_44
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 219
    const-string v4, "_NONNULL_"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 220
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v4, 0x3b

    .line 222
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 223
    new-instance v4, Lcom/android/tools/r8/shaking/T3;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/shaking/T3;-><init>(Lcom/android/tools/r8/internal/p10;)V

    .line 224
    iput-object v4, v2, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    const/4 v10, 0x1

    goto/16 :goto_1f

    .line 225
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 226
    iget v4, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    .line 227
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(I)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_18

    .line 228
    :cond_46
    iget-object v6, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 229
    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 230
    invoke-static {v8}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v8

    if-nez v8, :cond_47

    :goto_18
    const/4 v4, 0x0

    goto :goto_1c

    .line 231
    :cond_47
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v4

    .line 232
    :goto_19
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(I)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 233
    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_4a

    add-int/lit8 v6, v6, 0x1

    .line 234
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(I)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 235
    sget-boolean v8, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v8, :cond_49

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(I)Z

    move-result v8

    if-nez v8, :cond_48

    goto :goto_1a

    :cond_48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 236
    :cond_49
    :goto_1a
    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 237
    invoke-static {v8}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 238
    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    :goto_1b
    add-int/2addr v6, v8

    goto :goto_19

    .line 239
    :cond_4a
    invoke-static {v8}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 240
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    goto :goto_1b

    .line 241
    :cond_4b
    iput v6, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    .line 242
    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v8, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1c
    if-eqz v4, :cond_4c

    .line 243
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 244
    iget-object v8, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v8, v8, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 245
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 246
    invoke-static {v9}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 248
    iget-object v9, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v9, v9, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v10, 0x1

    add-int/2addr v6, v10

    .line 249
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 251
    new-instance v6, Lcom/android/tools/r8/shaking/T3;

    invoke-direct {v6, v8, v4, v3}, Lcom/android/tools/r8/shaking/T3;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/p10;)V

    .line 252
    iput-object v6, v2, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    goto :goto_1d

    .line 253
    :cond_4c
    const-string v1, "Expected qualified field"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 254
    :cond_4d
    const-string v1, "Unexpected value specification"

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 255
    :cond_4e
    const-string v1, "Expected field or method name"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    .line 256
    :goto_1d
    iget-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->d:Lcom/android/tools/r8/shaking/U3;

    if-eqz v3, :cond_4f

    move v4, v10

    goto :goto_1e

    :cond_4f
    move v4, v7

    :goto_1e
    if-eqz v4, :cond_50

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v3, 0x3b

    .line 258
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->b(C)V

    .line 259
    :cond_50
    :goto_1f
    iget-object v3, v2, Lcom/android/tools/r8/shaking/R3$a;->d:Lcom/android/tools/r8/shaking/U3;

    if-eqz v3, :cond_51

    move v4, v10

    goto :goto_20

    :cond_51
    move v4, v7

    :goto_20
    if-eqz v4, :cond_52

    .line 260
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/R3$a;->a()Lcom/android/tools/r8/shaking/R3;

    move-result-object v2

    goto :goto_21

    :cond_52
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_53

    .line 261
    iget-object v3, v1, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    .line 262
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v10

    const/4 v3, 0x2

    const/16 v6, 0x40

    goto/16 :goto_5

    .line 263
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v1, 0x7d

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(C)V

    :cond_54
    return-void

    .line 265
    :cond_55
    const-string v1, "Class name expected"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/zB;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 20
    new-instance v0, Lcom/android/tools/r8/shaking/De;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/De;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_1

    if-ge v3, v1, :cond_0

    .line 7
    invoke-virtual {v0, p1, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_0
    move v4, v1

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_4

    if-eq v4, v2, :cond_4

    if-ge v4, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 9
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 11
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    move v4, v2

    goto :goto_2

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value of system property \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return-object p1

    .line 14
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(C)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    return-void

    .line 19
    :cond_2
    const-string p1, "Missing closing quote"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/position/TextPosition;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextPosition;->getOffsetAsInt()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    return-void
.end method

.method public final c(Lcom/android/tools/r8/shaking/f3$a;Z)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/Ie;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/Ie;-><init>(Lcom/android/tools/r8/shaking/s3;Lcom/android/tools/r8/shaking/f3$a;Z)V

    new-instance p2, Lcom/android/tools/r8/shaking/Je;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/shaking/Je;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;Lcom/android/tools/r8/internal/Sr0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring option: -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final d()C
    .locals 4

    .line 9
    new-instance v0, Lcom/android/tools/r8/shaking/Be;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Be;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public final d(Lcom/android/tools/r8/position/TextPosition;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 3
    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p1

    const-string v3, "Expected [!]interface|@interface|class|enum"

    invoke-direct {v2, v3, v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 6
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final d(C)Z
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v0

    .line 21
    new-instance v1, Lcom/android/tools/r8/shaking/Re;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/Re;-><init>(C)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->c(C)V

    :cond_0
    if-nez v1, :cond_1

    .line 24
    const-string v0, ""

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final e(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lcom/android/tools/r8/position/TextPosition;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/android/tools/r8/shaking/q3;->f:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/Ke;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Ke;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/shaking/q3;->g:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/Le;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Le;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/shaking/q3;->h:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/Ce;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Ce;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    .line 4
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/shaking/q3;->i:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/Me;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Me;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    .line 5
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    const-string v0, "optimizations"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->s()V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 p1, 0x2c

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/shaking/K3;->E()Lcom/android/tools/r8/shaking/K3$a;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V
    :try_end_0
    .catch Lcom/android/tools/r8/shaking/h4; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 18
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/shaking/Oe;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/Oe;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/position/TextPosition;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/shaking/q3;->m:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/shaking/Me;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Me;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/tools/r8/shaking/q3;->l:Lcom/android/tools/r8/internal/Sm0;

    new-instance v1, Lcom/android/tools/r8/shaking/Ce;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Ce;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/tools/r8/shaking/q3;->j:Lcom/android/tools/r8/internal/Sm0;

    new-instance v1, Lcom/android/tools/r8/shaking/Ke;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Ke;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/tools/r8/shaking/q3;->k:Lcom/android/tools/r8/internal/Sm0;

    new-instance v1, Lcom/android/tools/r8/shaking/Le;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Le;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/s3;->c(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/K3;
    .locals 8

    .line 7
    invoke-static {}, Lcom/android/tools/r8/shaking/K3;->E()Lcom/android/tools/r8/shaking/K3$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    .line 9
    iput-object p1, v0, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    .line 10
    const-string v1, "names"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "-"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 11
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->b:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 13
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "class"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    const-string v1, "members"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->c:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    goto :goto_0

    .line 17
    :cond_1
    const-string v1, "eswithmembers"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->d:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    goto :goto_0

    .line 19
    :cond_2
    const-string v1, "membernames"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->c:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 22
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    goto :goto_0

    .line 23
    :cond_3
    const-string v1, "eswithmembernames"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->d:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    .line 25
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 26
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    goto :goto_0

    .line 27
    :cond_4
    const-string p1, "-keepclass"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->h(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object p1

    .line 29
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->f()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_5
    sget-object v1, Lcom/android/tools/r8/shaking/O3;->b:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/L3$a;->a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v1

    const/16 v6, 0x2c

    if-nez v1, :cond_7

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v7, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_7

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v7, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_6

    goto :goto_1

    .line 37
    :cond_6
    const-string p1, "-keep"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->h(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object p1

    .line 39
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->f()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 43
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v1

    .line 46
    const-string v2, "allow"

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 47
    const-string v1, "shrinking"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 48
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 49
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    goto/16 :goto_3

    .line 50
    :cond_8
    const-string v1, "optimization"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 51
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 52
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->f:Z

    goto/16 :goto_3

    .line 53
    :cond_9
    const-string v1, "obfuscation"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 54
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 55
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->g:Z

    .line 56
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    goto :goto_3

    .line 57
    :cond_a
    const-string v1, "accessmodification"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 59
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->a:Z

    goto :goto_3

    .line 60
    :cond_b
    const-string v1, "repackage"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 61
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 62
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    goto :goto_3

    .line 63
    :cond_c
    const-string v1, "permittedsubclassesremoval"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 64
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 65
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->i:Z

    goto :goto_3

    .line 66
    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    .line 67
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/t3;->g:Z

    if-eqz v1, :cond_11

    .line 68
    const-string v1, "annotationremoval"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 69
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 70
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->b:Z

    goto :goto_3

    .line 71
    :cond_e
    const-string v1, "codereplacement"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 72
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 73
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->c:Z

    goto :goto_3

    .line 74
    :cond_f
    const-string v2, "includedescriptorclasses"

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 75
    iget-object v1, v0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 76
    iput-boolean v5, v1, Lcom/android/tools/r8/shaking/M3$a;->h:Z

    goto :goto_3

    .line 77
    :cond_10
    const-string v2, "includecode"

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Lcom/android/tools/r8/position/TextPosition;)V

    .line 79
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    goto/16 :goto_2

    .line 80
    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/K3$a;

    .line 85
    iput-object v1, p1, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/K3$a;->d()Lcom/android/tools/r8/shaking/K3;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/o3$a;->L:Z

    if-nez v1, :cond_14

    .line 89
    iget-boolean v1, v2, Lcom/android/tools/r8/shaking/t3;->a:Z

    if-eqz v1, :cond_13

    goto :goto_4

    :cond_13
    return-object p1

    .line 90
    :cond_14
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/shaking/O3;->d:Lcom/android/tools/r8/shaking/O3;

    if-eq v1, v2, :cond_19

    .line 92
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    .line 93
    sget-boolean v3, Lcom/android/tools/r8/shaking/t3;->h:Z

    if-nez v3, :cond_16

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iget-boolean v3, v1, Lcom/android/tools/r8/shaking/o3$a;->L:Z

    if-nez v3, :cond_17

    .line 96
    iget-boolean v3, v2, Lcom/android/tools/r8/shaking/t3;->a:Z

    if-eqz v3, :cond_15

    goto :goto_5

    .line 97
    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 98
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    :cond_17
    :goto_5
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/o3$a;->L:Z

    if-nez v1, :cond_18

    .line 100
    iget-boolean v1, v2, Lcom/android/tools/r8/shaking/t3;->b:Z

    if-eqz v1, :cond_18

    .line 101
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 102
    invoke-static {p1}, Lcom/android/tools/r8/errors/e;->a(Lcom/android/tools/r8/shaking/K3;)Lcom/android/tools/r8/errors/EmptyMemberRulesToDefaultInitRuleConversionDiagnostic;

    move-result-object p1

    .line 103
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 104
    :cond_18
    invoke-static {}, Lcom/android/tools/r8/shaking/R3;->a()Lcom/android/tools/r8/shaking/R3$a;

    move-result-object p1

    .line 105
    const-string v1, "<init>"

    invoke-static {v1}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-static {v1}, Lcom/android/tools/r8/shaking/Y3;->a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;

    move-result-object v1

    iput-object v1, p1, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    .line 108
    sget-object v1, Lcom/android/tools/r8/shaking/U3;->g:Lcom/android/tools/r8/shaking/U3;

    .line 109
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/R3$a;->a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;

    move-result-object p1

    .line 110
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 111
    iput-object v1, p1, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/R3$a;->a()Lcom/android/tools/r8/shaking/R3;

    move-result-object p1

    filled-new-array {p1}, [Lcom/android/tools/r8/shaking/R3;

    move-result-object p1

    .line 113
    invoke-static {v5}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v1

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/K3$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/K3$a;->d()Lcom/android/tools/r8/shaking/K3;

    move-result-object p1

    :cond_19
    return-object p1
.end method

.method public final g()Z
    .locals 2

    .line 117
    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h()Lcom/android/tools/r8/position/TextPosition;
    .locals 6

    .line 31
    new-instance v0, Lcom/android/tools/r8/position/TextPosition;

    iget v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    int-to-long v2, v1

    iget v4, p0, Lcom/android/tools/r8/shaking/s3;->e:I

    .line 32
    iget v5, p0, Lcom/android/tools/r8/shaking/s3;->f:I

    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    .line 33
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    const/4 v0, 0x0

    .line 29
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 30
    sget-boolean v1, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final h(Lcom/android/tools/r8/position/TextPosition;)Z
    .locals 5

    .line 1
    const-string v0, "maximumremovedandroidloglevel"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5

    .line 5
    sget v2, Lcom/android/tools/r8/shaking/r2;->s:I

    .line 6
    new-instance v2, Lcom/android/tools/r8/shaking/q2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/q2;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8
    iput v4, v2, Lcom/android/tools/r8/shaking/q2;->p:I

    .line 9
    iget-object v4, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 10
    iput-object v4, v2, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    .line 11
    iput-object p1, v2, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/android/tools/r8/shaking/Ee;

    invoke-direct {v1, p0, v2}, Lcom/android/tools/r8/shaking/Ee;-><init>(Lcom/android/tools/r8/shaking/s3;Lcom/android/tools/r8/shaking/q2;)V

    new-instance v4, Lcom/android/tools/r8/shaking/Ge;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/shaking/Ge;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;Lcom/android/tools/r8/internal/Sr0;Ljava/util/function/Consumer;)V

    .line 15
    :goto_0
    iget-object v1, v2, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    .line 18
    iput-object v0, v2, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {p0, v4, p1, v0}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/q2;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/q2;->d()Lcom/android/tools/r8/shaking/r2;

    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto :goto_2

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-boolean v1, Lcom/android/tools/r8/shaking/o3$a;->Q:Z

    if-nez v1, :cond_3

    if-lt v0, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_3
    :goto_1
    iget v1, p1, Lcom/android/tools/r8/shaking/o3$a;->P:I

    if-nez v1, :cond_4

    .line 24
    iput v0, p1, Lcom/android/tools/r8/shaking/o3$a;->P:I

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/tools/r8/shaking/o3$a;->P:I

    :goto_2
    return v3

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object p1

    const-string v0, "Expected integer greater than or equal to 1"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object p1

    throw p1

    :cond_6
    return v1
.end method

.method public final i()Z
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Lcom/android/tools/r8/position/TextPosition;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/shaking/q3;->n:Lcom/android/tools/r8/internal/Sm0;

    new-instance v1, Lcom/android/tools/r8/shaking/Ce;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Ce;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported option: -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p1

    invoke-direct {v2, v0, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextPosition;->getLine()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextPosition;->getColumn()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextPosition;->getLine()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextPosition;->getColumn()I

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# The proguard configuration file for the following section is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3$a;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3$a;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# End of content from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/shaking/o3$a;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v1, 0x28

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->b(C)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v1, 0x29

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 6
    :cond_0
    const-string v2, "..."

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {v2}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    .line 8
    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->l()Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 10
    sget-object v3, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v2, 0x2c

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->l()Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->b(C)V

    return-object v0
.end method

.method public final k(Lcom/android/tools/r8/position/TextPosition;)V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "repackageclasses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " overrides -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "flattenpackagehierarchy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final l()Lcom/android/tools/r8/shaking/q3$a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/shaking/s3;->a(IZ)Lcom/android/tools/r8/shaking/r3;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/tools/r8/shaking/s3;->j:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/r3;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/shaking/r3;->a:Lcom/android/tools/r8/shaking/q3$a;

    return-object v0

    :cond_2
    const-string v0, "Class name expected"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0
.end method

.method public final m()Lcom/android/tools/r8/internal/hC;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->b(C)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Only class file filters are supported in classpath"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0

    :cond_2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    new-instance v1, Lcom/android/tools/r8/shaking/Pe;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Pe;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "file filter expected"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0
.end method

.method public final o()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Fe;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Fe;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v2, v3, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v2, Lcom/android/tools/r8/shaking/s3;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    new-instance v4, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/shaking/s3;-><init>(Lcom/android/tools/r8/shaking/q3;Lcom/android/tools/r8/shaking/w3;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s3;->j()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :goto_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read included file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/shaking/h4;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->j(Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object v0

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/android/tools/r8/shaking/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :goto_1
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Included file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not found"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/shaking/h4;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->j(Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object v0

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/android/tools/r8/shaking/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3
.end method

.method public final p()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->c(C)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->c(C)V

    :cond_1
    if-eqz v3, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    const-string v0, "Expected list element"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "Unexpected attribute"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/t3;->f:Z

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/android/tools/r8/shaking/I3;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-nez v2, :cond_7

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal attempt to keep runtime invisible annotations (origin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/o3$a;

    return-void

    :cond_9
    const-string v0, "Expected attribute pattern list"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0
.end method

.method public final q()Z
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    sub-int/2addr v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-nez v1, :cond_61

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/s3;->b(C)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->e(Lcom/android/tools/r8/position/TextPosition;)Z

    move-result v6

    if-nez v6, :cond_60

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->f(Lcom/android/tools/r8/position/TextPosition;)Z

    move-result v6

    if-nez v6, :cond_60

    const-string v6, "checkenumunboxed"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v3, Lcom/android/tools/r8/shaking/n;->r:I

    new-instance v3, Lcom/android/tools/r8/shaking/m;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/m;-><init>()V

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iput-object v5, v3, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v3, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v2

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    iput-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    new-instance v1, Lcom/android/tools/r8/shaking/n;

    iget-object v6, v3, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v7

    iget-object v8, v3, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v9

    iget-object v10, v3, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v11, v3, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v12, v3, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v13, v3, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v14, v3, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v5, v3, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v3, v3, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    move/from16 v17, v5

    move-object v5, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v5 .. v18}, Lcom/android/tools/r8/shaking/n;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v2, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-boolean v3, v3, Lcom/android/tools/r8/shaking/t3;->c:Z

    if-eqz v3, :cond_60

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_2
    const-string v6, "convertchecknotnull"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget v3, Lcom/android/tools/r8/shaking/w;->r:I

    new-instance v3, Lcom/android/tools/r8/shaking/v;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/v;-><init>()V

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iput-object v5, v3, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v3, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v2

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    iput-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    new-instance v1, Lcom/android/tools/r8/shaking/w;

    iget-object v6, v3, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v7

    iget-object v8, v3, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v9

    iget-object v10, v3, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v11, v3, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v12, v3, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v13, v3, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v14, v3, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v5, v3, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v3, v3, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    move/from16 v17, v5

    move-object v5, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v5 .. v18}, Lcom/android/tools/r8/shaking/w;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v2, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-boolean v3, v3, Lcom/android/tools/r8/shaking/t3;->d:Z

    if-eqz v3, :cond_60

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_3
    iget-object v6, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v6, v6, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-boolean v6, v6, Lcom/android/tools/r8/shaking/t3;->e:Z

    if-eqz v6, :cond_4

    const-string v6, "whyareyounotinlining"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget v3, Lcom/android/tools/r8/shaking/d5;->r:I

    new-instance v3, Lcom/android/tools/r8/shaking/c5;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/c5;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_4
    iget-object v6, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v6, v6, Lcom/android/tools/r8/shaking/q3;->c:Lcom/android/tools/r8/shaking/t3;

    iget-boolean v6, v6, Lcom/android/tools/r8/shaking/t3;->g:Z

    const-string v7, "neverinline"

    if-eqz v6, :cond_1b

    const-string v6, "assumemayhavesideeffects"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v3, Lcom/android/tools/r8/shaking/U2;->r:I

    new-instance v3, Lcom/android/tools/r8/shaking/T2;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/T2;-><init>()V

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iput-object v5, v3, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v3, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v2

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    iput-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    new-instance v1, Lcom/android/tools/r8/shaking/U2;

    iget-object v6, v3, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v7

    iget-object v8, v3, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v9

    iget-object v10, v3, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v11, v3, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v12, v3, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v13, v3, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v14, v3, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    iget-object v2, v3, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v5, v3, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v3, v3, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    move/from16 v17, v5

    move-object v5, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v5 .. v18}, Lcom/android/tools/r8/shaking/U2;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_5
    const-string v6, "keepconstantarguments"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget v2, Lcom/android/tools/r8/shaking/n1;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/m1;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/m1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/n1;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_6
    const-string v6, "keepunusedarguments"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget v2, Lcom/android/tools/r8/shaking/c2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/b2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/b2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/c2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_7
    const-string v6, "keepunusedreturnvalue"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget v2, Lcom/android/tools/r8/shaking/e2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/d2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/d2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/e2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_8
    const-string v6, "alwaysclassinline"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget v2, Lcom/android/tools/r8/shaking/s;->s:I

    new-instance v2, Lcom/android/tools/r8/shaking/q;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/q;-><init>()V

    sget-object v3, Lcom/android/tools/r8/shaking/r;->b:Lcom/android/tools/r8/shaking/r;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/q;->p:Lcom/android/tools/r8/shaking/r;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/s;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_9
    const-string v6, "neverclassinline"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget v2, Lcom/android/tools/r8/shaking/s;->s:I

    new-instance v2, Lcom/android/tools/r8/shaking/q;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/q;-><init>()V

    sget-object v3, Lcom/android/tools/r8/shaking/r;->c:Lcom/android/tools/r8/shaking/r;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/q;->p:Lcom/android/tools/r8/shaking/r;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/s;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget v2, Lcom/android/tools/r8/shaking/Y0;->s:I

    new-instance v2, Lcom/android/tools/r8/shaking/W0;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/W0;-><init>()V

    sget-object v3, Lcom/android/tools/r8/shaking/X0;->c:Lcom/android/tools/r8/shaking/X0;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/W0;->p:Lcom/android/tools/r8/shaking/X0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/Y0;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_b
    const-string v6, "neversinglecallerinline"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget v2, Lcom/android/tools/r8/shaking/Y0;->s:I

    new-instance v2, Lcom/android/tools/r8/shaking/W0;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/W0;-><init>()V

    sget-object v3, Lcom/android/tools/r8/shaking/X0;->d:Lcom/android/tools/r8/shaking/X0;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/W0;->p:Lcom/android/tools/r8/shaking/X0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/Y0;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_c
    const-string v6, "noaccessmodification"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget v2, Lcom/android/tools/r8/shaking/w2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/v2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/v2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/w2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_d
    const-string v6, "nofieldtypestrengthening"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget v2, Lcom/android/tools/r8/shaking/y2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/x2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/x2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/y2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_e
    const-string v6, "nounusedinterfaceremoval"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget v2, Lcom/android/tools/r8/shaking/M2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/L2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/L2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/M2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_f
    const-string v6, "noverticalclassmerging"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget v2, Lcom/android/tools/r8/shaking/Q2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/P2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/P2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/Q2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_10
    const-string v6, "nohorizontalclassmerging"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    sget v2, Lcom/android/tools/r8/shaking/A2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/z2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/z2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/A2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_11
    const-string v6, "nomethodstaticizing"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    sget v2, Lcom/android/tools/r8/shaking/C2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/B2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/B2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/C2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_12
    const-string v6, "noparameterreordering"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget v2, Lcom/android/tools/r8/shaking/E2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/D2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/D2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/E2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_13
    const-string v6, "noparametertypestrengthening"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v2, Lcom/android/tools/r8/shaking/G2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/F2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/F2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/G2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_14
    const-string v6, "noredundantfieldloadelimination"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    sget v2, Lcom/android/tools/r8/shaking/I2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/H2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/H2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/I2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_15
    const-string v6, "noreturntypestrengthening"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    sget v2, Lcom/android/tools/r8/shaking/K2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/J2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/J2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/K2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_16
    const-string v6, "neverpropagatevalue"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    sget v2, Lcom/android/tools/r8/shaking/O2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/N2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/N2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/O2;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_17
    const-string v6, "neverreprocessclassinitializer"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget v5, Lcom/android/tools/r8/shaking/t4;->s:I

    new-instance v5, Lcom/android/tools/r8/shaking/s4;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/s4;-><init>()V

    iput v3, v5, Lcom/android/tools/r8/shaking/s4;->p:I

    invoke-virtual {v0, v1, v5}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_18
    const-string v6, "neverreprocessmethod"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget v5, Lcom/android/tools/r8/shaking/v4;->s:I

    new-instance v5, Lcom/android/tools/r8/shaking/u4;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/u4;-><init>()V

    iput v3, v5, Lcom/android/tools/r8/shaking/u4;->p:I

    invoke-virtual {v0, v1, v5}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_19
    const-string v3, "reprocessclassinitializer"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget v3, Lcom/android/tools/r8/shaking/t4;->s:I

    new-instance v3, Lcom/android/tools/r8/shaking/s4;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/s4;-><init>()V

    iput v4, v3, Lcom/android/tools/r8/shaking/s4;->p:I

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_1a
    const-string v3, "reprocessmethod"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget v3, Lcom/android/tools/r8/shaking/v4;->s:I

    new-instance v3, Lcom/android/tools/r8/shaking/u4;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/u4;-><init>()V

    iput v4, v3, Lcom/android/tools/r8/shaking/u4;->p:I

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_1b
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->i(Lcom/android/tools/r8/position/TextPosition;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto/16 :goto_a

    :cond_1c
    const-string v3, "keepkotlinmetadata"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/shaking/P3;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/q3;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->G3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v1, v5}, Lcom/android/tools/r8/shaking/P3;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v1

    iput-boolean v4, v2, Lcom/android/tools/r8/shaking/v3;->o:Z

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/v3;->o:Z

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/o3$a;

    goto/16 :goto_a

    :cond_1d
    const-string v3, "renamesourcefileattribute"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v6, ""

    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1e
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1f
    const-string v3, "keepattributes"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->p()V

    goto/16 :goto_a

    :cond_20
    const-string v3, "keeppackagenames"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Qe;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Qe;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/Consumer;)V

    goto/16 :goto_a

    :cond_21
    const-string v3, "keepparameternames"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/tools/r8/shaking/o3$a;->Q:Z

    if-nez v5, :cond_23

    if-eqz v3, :cond_22

    goto :goto_1

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_23
    :goto_1
    iput-boolean v4, v2, Lcom/android/tools/r8/shaking/o3$a;->E:Z

    iput-object v3, v2, Lcom/android/tools/r8/shaking/o3$a;->F:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v2, Lcom/android/tools/r8/shaking/o3$a;->G:Lcom/android/tools/r8/position/Position;

    goto/16 :goto_a

    :cond_24
    const-string v3, "checkdiscard"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget v2, Lcom/android/tools/r8/shaking/a3;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/Z2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Z2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/a3;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_25
    const-string v3, "checkenumstringsdiscarded"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    sget v2, Lcom/android/tools/r8/shaking/a3;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/Z2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Z2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    goto/16 :goto_a

    :cond_26
    const-string v3, "keepdirectories"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->K:Lcom/android/tools/r8/shaking/b4;

    iput-boolean v4, v2, Lcom/android/tools/r8/shaking/b4;->a:Z

    new-instance v2, Lcom/android/tools/r8/shaking/We;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/We;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->r()Lcom/android/tools/r8/shaking/g4;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_27
    new-instance v1, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_28
    const-string v3, "keep"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->g(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_29
    const-string v3, "whyareyoukeeping"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget v2, Lcom/android/tools/r8/shaking/q4;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/p4;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/p4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/q4;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_2a
    const-string v3, "dontoptimize"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3$a;->d()Lcom/android/tools/r8/shaking/o3$a;

    goto/16 :goto_a

    :cond_2b
    const-string v3, "optimizationpasses"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    goto/16 :goto_a

    :cond_2c
    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object v1

    const-string v5, "Missing n of \"-optimizationpasses n\""

    invoke-direct {v3, v5, v4, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v2, v9, v3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object v1, v2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1

    :cond_2d
    const-string v3, "dontobfuscate"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3$a;->c()Lcom/android/tools/r8/shaking/o3$a;

    goto/16 :goto_a

    :cond_2e
    const-string v3, "dontshrink"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3$a;->e()Lcom/android/tools/r8/shaking/o3$a;

    goto/16 :goto_a

    :cond_2f
    const-string v3, "printusage"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/o3$a;->n:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->o:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_30
    const-string v3, "shrinkunusedprotofields"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/o3$a;->O:Z

    goto/16 :goto_a

    :cond_31
    const-string v3, "ignorewarnings"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/shaking/o3$a;->a(Z)V

    goto/16 :goto_a

    :cond_32
    const-string v3, "dontwarn"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Xe;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Xe;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/Consumer;)V

    goto/16 :goto_a

    :cond_33
    const-string v3, "dontnote"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Ye;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Ye;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/Consumer;)V

    goto/16 :goto_a

    :cond_34
    const-string v3, "repackageclasses"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    sget-object v3, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v2, v3, :cond_35

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->k(Lcom/android/tools/r8/position/TextPosition;)V

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_2

    :cond_36
    move-object v6, v3

    :goto_2
    sget-object v3, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v6, v2, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->c(C)V

    goto/16 :goto_a

    :cond_37
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v6, v1, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_38
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_3

    :cond_39
    move-object v6, v2

    :goto_3
    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v6, v1, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_3a
    const-string v3, "flattenpackagehierarchy"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    sget-object v3, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v2, v3, :cond_3b

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->k(Lcom/android/tools/r8/position/TextPosition;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    goto :goto_4

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    goto :goto_5

    :cond_3c
    move-object v6, v3

    :goto_5
    sget-object v3, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v6, v2, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->c(C)V

    goto/16 :goto_a

    :cond_3d
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/s3;->d(C)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v6, v1, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_3e
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3f

    goto :goto_6

    :cond_3f
    move-object v6, v2

    :goto_6
    sget-object v2, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v6, v1, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_40
    const-string v3, "allowaccessmodification"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/o3$a;->g:Z

    goto/16 :goto_a

    :cond_41
    const-string v3, "printconfiguration"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/o3$a;->l:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/shaking/o3$a;->Q:Z

    if-nez v3, :cond_43

    iget-boolean v3, v1, Lcom/android/tools/r8/shaking/o3$a;->l:Z

    if-eqz v3, :cond_42

    goto :goto_7

    :cond_42
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_43
    :goto_7
    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->m:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_44
    const-string v3, "printmapping"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/shaking/o3$a;->b(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/o3$a;->a(Ljava/nio/file/Path;)V

    goto/16 :goto_a

    :cond_45
    const-string v3, "applymapping"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/shaking/Ze;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/shaking/Ze;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v5, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v3, Lcom/android/tools/r8/shaking/o3$a;->r:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_46
    const-string v3, "assumenosideeffects"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    sget v2, Lcom/android/tools/r8/shaking/W2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/V2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/V2;-><init>()V

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v2, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    invoke-virtual {v0, v2, v4}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v3

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/V2;->d()Lcom/android/tools/r8/shaking/W2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_47
    const-string v3, "assumevalues"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    sget v2, Lcom/android/tools/r8/shaking/Y2;->r:I

    new-instance v2, Lcom/android/tools/r8/shaking/X2;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/X2;-><init>()V

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v2, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    invoke-virtual {v0, v2, v4}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v3

    iget-object v5, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    new-instance v1, Lcom/android/tools/r8/shaking/Y2;

    iget-object v6, v2, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/f3$a;->b()Lcom/android/tools/r8/position/Position;

    move-result-object v7

    iget-object v8, v2, Lcom/android/tools/r8/shaking/f3$a;->d:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v9

    iget-object v10, v2, Lcom/android/tools/r8/shaking/f3$a;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v11, v2, Lcom/android/tools/r8/shaking/f3$a;->g:Lcom/android/tools/r8/shaking/S2;

    iget-boolean v12, v2, Lcom/android/tools/r8/shaking/f3$a;->h:Z

    iget-object v13, v2, Lcom/android/tools/r8/shaking/f3$a;->i:Lcom/android/tools/r8/shaking/l3;

    iget-object v14, v2, Lcom/android/tools/r8/shaking/f3$a;->j:Lcom/android/tools/r8/shaking/c3;

    iget-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->k:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    iget-object v3, v2, Lcom/android/tools/r8/shaking/f3$a;->l:Lcom/android/tools/r8/shaking/i4;

    iget-boolean v5, v2, Lcom/android/tools/r8/shaking/f3$a;->m:Z

    iget-object v2, v2, Lcom/android/tools/r8/shaking/f3$a;->n:Ljava/util/List;

    move/from16 v17, v5

    move-object v5, v1

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    invoke-direct/range {v5 .. v18}, Lcom/android/tools/r8/shaking/Y2;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_48
    const-string v3, "include"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v3, v0, Lcom/android/tools/r8/shaking/s3;->d:I

    iget v5, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/shaking/o3$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->o()V

    iget v1, v0, Lcom/android/tools/r8/shaking/s3;->c:I

    iput v1, v0, Lcom/android/tools/r8/shaking/s3;->d:I

    goto/16 :goto_a

    :cond_49
    const-string v3, "basedirectory"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/shaking/s3;->g:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_4a
    const-string v3, "injars"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/ve;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/shaking/ve;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v3, v7, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->m()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/shaking/P0;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v8, v6, v7, v9, v5}, Lcom/android/tools/r8/shaking/P0;-><init>(Ljava/nio/file/Path;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    sget-char v6, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v3, v7, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->m()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/shaking/P0;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v8, v6, v7, v9, v5}, Lcom/android/tools/r8/shaking/P0;-><init>(Ljava/nio/file/Path;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_4b
    iget-object v2, v2, Lcom/android/tools/r8/shaking/o3$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    :cond_4c
    const-string v3, "libraryjars"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/we;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/shaking/we;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v3, v7, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->m()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/shaking/P0;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v8, v6, v7, v9, v5}, Lcom/android/tools/r8/shaking/P0;-><init>(Ljava/nio/file/Path;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    sget-char v6, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v3, v7, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->m()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/shaking/P0;

    iget-object v9, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v8, v6, v7, v9, v5}, Lcom/android/tools/r8/shaking/P0;-><init>(Ljava/nio/file/Path;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_4d
    iget-object v2, v2, Lcom/android/tools/r8/shaking/o3$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    :cond_4e
    const-string v3, "printseeds"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/shaking/o3$a;->c(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/shaking/o3$a;->A:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_4f
    const-string v3, "obfuscationdictionary"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/shaking/xe;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/shaking/xe;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v5, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v3, Lcom/android/tools/r8/shaking/o3$a;->B:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_50
    const-string v3, "classobfuscationdictionary"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/shaking/ye;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/shaking/ye;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v5, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v3, Lcom/android/tools/r8/shaking/o3$a;->C:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_51
    const-string v3, "packageobfuscationdictionary"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->e:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/shaking/ze;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/shaking/ze;-><init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Z)Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-interface {v5, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v3, Lcom/android/tools/r8/shaking/o3$a;->D:Ljava/nio/file/Path;

    goto/16 :goto_a

    :cond_52
    const-string v3, "alwaysinline"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    sget v2, Lcom/android/tools/r8/shaking/Y0;->s:I

    new-instance v2, Lcom/android/tools/r8/shaking/W0;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/W0;-><init>()V

    sget-object v3, Lcom/android/tools/r8/shaking/X0;->b:Lcom/android/tools/r8/shaking/X0;

    iput-object v3, v2, Lcom/android/tools/r8/shaking/W0;->p:Lcom/android/tools/r8/shaking/X0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/Y0;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_53
    const-string v3, "adaptclassstrings"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Te;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Te;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/Consumer;)V

    goto/16 :goto_a

    :cond_54
    const-string v3, "adaptresourcefilenames"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Ue;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Ue;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->r()Lcom/android/tools/r8/shaking/g4;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_55
    new-instance v1, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_56
    const-string v3, "adaptresourcefilecontents"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Ve;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Ve;-><init>(Lcom/android/tools/r8/shaking/o3$a;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->i()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->r()Lcom/android/tools/r8/shaking/g4;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_57
    new-instance v1, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_58
    const-string v3, "identifiernamestring"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget v3, Lcom/android/tools/r8/shaking/D3;->r:I

    new-instance v3, Lcom/android/tools/r8/shaking/C3;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/C3;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/shaking/f3$a;)Lcom/android/tools/r8/shaking/v3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto/16 :goto_a

    :cond_59
    const-string v3, "if"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    sget-boolean v5, Lcom/android/tools/r8/shaking/G3;->w:Z

    new-instance v5, Lcom/android/tools/r8/shaking/F3;

    invoke-direct {v5}, Lcom/android/tools/r8/shaking/F3;-><init>()V

    iget-object v6, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    iput-object v6, v5, Lcom/android/tools/r8/shaking/f3$a;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object v1, v5, Lcom/android/tools/r8/shaking/f3$a;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;)Z

    invoke-virtual {v0, v5, v2}, Lcom/android/tools/r8/shaking/s3;->c(Lcom/android/tools/r8/shaking/f3$a;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v2

    const-string v6, "-keep"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->g(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v2

    iput-object v2, v5, Lcom/android/tools/r8/shaking/F3;->r:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->h()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v2

    iget-object v6, v0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/position/TextPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/shaking/f3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/f3$a;

    iput-object v2, v5, Lcom/android/tools/r8/shaking/f3$a;->c:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/F3;->d()Lcom/android/tools/r8/shaking/G3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/v3;->v()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/Iterable;)V

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/shaking/o3$a;->a(Lcom/android/tools/r8/shaking/v3;)V

    goto :goto_a

    :cond_5a
    iget-object v2, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/q3;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/s3;->h:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;)Lcom/android/tools/r8/position/Position;

    move-result-object v1

    const-string v5, "Expecting \'-keep\' option after \'-if\' option."

    invoke-direct {v3, v5, v4, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v2, v9, v3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object v1, v2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v1

    :cond_5b
    const-string v2, "addconfigurationdebugging"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/o3$a;->M:Z

    goto :goto_a

    :cond_5c
    const-string v2, "dontusemixedcaseclassnames"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v1, v0, Lcom/android/tools/r8/shaking/s3;->i:Lcom/android/tools/r8/shaking/q3;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iput-boolean v4, v1, Lcom/android/tools/r8/shaking/o3$a;->N:Z

    goto :goto_a

    :cond_5d
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s3;->h(Lcom/android/tools/r8/position/TextPosition;)Z

    move-result v2

    if-eqz v2, :cond_5e

    return v4

    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/tools/r8/Version;->isDevelopmentVersion()Z

    move-result v3

    if-eqz v3, :cond_5f

    if-eqz v2, :cond_5f

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string v6, ", this option needs to be turned on explicitly if used for tests."

    :cond_5f
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/position/TextPosition;Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_60
    :goto_a
    return v4

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/s3;->o()V

    return v4
.end method

.method public final r()Lcom/android/tools/r8/shaking/g4;
    .locals 6

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    new-instance v3, Lcom/android/tools/r8/shaking/Se;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/Se;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Path filter expected"

    if-eqz v3, :cond_3

    new-instance v5, Lcom/android/tools/r8/shaking/e4;

    invoke-direct {v5, v3, v2}, Lcom/android/tools/r8/shaking/e4;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    :goto_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    new-instance v3, Lcom/android/tools/r8/shaking/Se;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/Se;-><init>(Lcom/android/tools/r8/shaking/s3;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Lcom/android/tools/r8/shaking/e4;

    invoke-direct {v5, v3, v2}, Lcom/android/tools/r8/shaking/e4;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/shaking/f4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/f4;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object v1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    return-object v0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/s3;->b(Ljava/lang/String;)Lcom/android/tools/r8/shaking/h4;

    move-result-object v0

    throw v0
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->d()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    :cond_1
    new-instance v1, Lcom/android/tools/r8/shaking/Ae;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Ae;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/util/function/IntPredicate;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->e(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/s3;->c(C)V

    :cond_2
    return-void
.end method

.method public final t()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/shaking/s3;->e:I

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/shaking/s3;->f:I

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s3;->t()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->b:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/shaking/s3;->c:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v1, v6, :cond_1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x20

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "^"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s3;->a:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s3;->a:Ljava/lang/String;

    return-object v0
.end method
