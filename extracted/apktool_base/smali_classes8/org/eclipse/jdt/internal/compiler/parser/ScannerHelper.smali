.class public Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Bits:[J

.field public static final C_DIGIT:I = 0x4

.field public static final C_IDENT_PART:I = 0x8

.field public static final C_IDENT_START:I = 0x40

.field public static final C_JLS_SPACE:I = 0x100

.field public static final C_LOWER_LETTER:I = 0x10

.field public static final C_SEPARATOR:I = 0x2

.field public static final C_SPACE:I = 0x1

.field public static final C_SPECIAL:I = 0x80

.field public static final C_UPPER_LETTER:I = 0x20

.field public static final MAX_OBVIOUS:I = 0x80

.field public static final OBVIOUS_IDENT_CHAR_NATURES:[I

.field private static final PART_INDEX:I = 0x1

.field private static final START_INDEX:I

.field private static Tables:[[[J

.field private static Tables11:[[[J

.field private static Tables12:[[[J

.field private static Tables7:[[[J

.field private static Tables8:[[[J

.field private static Tables9:[[[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Bits:[J

    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v4, 0x3

    aput v2, v0, v4

    const/4 v4, 0x4

    aput v2, v0, v4

    const/4 v4, 0x5

    aput v2, v0, v4

    const/4 v4, 0x6

    aput v2, v0, v4

    const/4 v4, 0x7

    aput v2, v0, v4

    aput v2, v0, v2

    const/16 v4, 0xe

    aput v2, v0, v4

    const/16 v4, 0xf

    aput v2, v0, v4

    const/16 v4, 0x10

    aput v2, v0, v4

    const/16 v4, 0x11

    aput v2, v0, v4

    const/16 v4, 0x12

    aput v2, v0, v4

    const/16 v4, 0x13

    aput v2, v0, v4

    const/16 v4, 0x14

    aput v2, v0, v4

    const/16 v4, 0x15

    aput v2, v0, v4

    const/16 v4, 0x16

    aput v2, v0, v4

    const/16 v4, 0x17

    aput v2, v0, v4

    const/16 v4, 0x18

    aput v2, v0, v4

    const/16 v4, 0x19

    aput v2, v0, v4

    const/16 v4, 0x1a

    aput v2, v0, v4

    const/16 v4, 0x1b

    aput v2, v0, v4

    const/16 v4, 0x7f

    aput v2, v0, v4

    const/16 v0, 0x30

    :goto_0
    const/16 v2, 0x39

    const/16 v4, 0xc

    if-le v0, v2, :cond_2

    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-le v0, v2, :cond_1

    const/16 v0, 0x41

    :goto_2
    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    const/16 v2, 0x5f

    const/16 v5, 0xc8

    aput v5, v0, v2

    const/16 v2, 0x24

    aput v5, v0, v2

    const/16 v2, 0x9

    const/16 v5, 0x101

    aput v5, v0, v2

    const/16 v2, 0xa

    aput v5, v0, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    aput v5, v0, v4

    const/16 v2, 0xd

    aput v5, v0, v2

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x20

    aput v5, v0, v1

    const/16 v1, 0x2e

    aput v3, v0, v1

    const/16 v1, 0x3a

    aput v3, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x5b

    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x7d

    aput v3, v0, v1

    const/16 v1, 0x2b

    aput v3, v0, v1

    const/16 v1, 0x2d

    aput v3, v0, v1

    const/16 v1, 0x2a

    aput v3, v0, v1

    const/16 v1, 0x2f

    aput v3, v0, v1

    const/16 v1, 0x3d

    aput v3, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x7c

    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

    const/16 v1, 0x3c

    aput v3, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x25

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x7e

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    const/16 v5, 0x68

    aput v5, v2, v0

    add-int/2addr v0, v1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    const/16 v5, 0x58

    aput v5, v2, v0

    add-int/2addr v0, v1

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aput v4, v2, v0

    add-int/2addr v0, v1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 8
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digit(CI)I
    .locals 5

    const/16 v0, 0x80

    if-ge p0, v0, :cond_8

    const/16 v0, 0x8

    const/16 v1, 0x37

    const/4 v2, -0x1

    const/16 v3, 0x30

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    const/16 v4, 0x39

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p0, v3, :cond_1

    if-gt p0, v4, :cond_1

    sub-int/2addr p0, v3

    return p0

    :cond_1
    const/16 p1, 0x41

    if-lt p0, p1, :cond_2

    const/16 p1, 0x46

    if-gt p0, p1, :cond_2

    sub-int/2addr p0, v1

    return p0

    :cond_2
    const/16 p1, 0x61

    if-lt p0, p1, :cond_3

    const/16 p1, 0x66

    if-gt p0, p1, :cond_3

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_3
    return v2

    :cond_4
    if-lt p0, v3, :cond_5

    if-gt p0, v4, :cond_5

    sub-int/2addr p0, v3

    return p0

    :cond_5
    return v2

    :cond_6
    if-lt p0, v3, :cond_7

    if-gt p0, v1, :cond_7

    sub-int/2addr p0, v3

    return p0

    :cond_7
    return v2

    :cond_8
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    return p0
.end method

.method public static getHexadecimalValue(C)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_c
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_e
    const/4 p0, 0x1

    return p0

    :pswitch_f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNumericValue(C)I
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x30

    return p0

    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p0

    return p0
.end method

.method public static initializeTable()V
    .locals 1

    const-string v0, "unicode"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTables(Ljava/lang/String;)[[[J

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables:[[[J

    return-void
.end method

.method public static initializeTable17()V
    .locals 1

    const-string v0, "unicode6"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTables(Ljava/lang/String;)[[[J

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables7:[[[J

    return-void
.end method

.method public static initializeTable18()V
    .locals 1

    const-string v0, "unicode6_2"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTables(Ljava/lang/String;)[[[J

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables8:[[[J

    return-void
.end method

.method public static initializeTable19()V
    .locals 1

    const-string v0, "unicode8"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTables(Ljava/lang/String;)[[[J

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables9:[[[J

    return-void
.end method

.method public static initializeTableJava11()V
    .locals 1

    const-string v0, "unicode10"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTables(Ljava/lang/String;)[[[J

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables11:[[[J

    return-void
.end method

.method public static initializeTableJava12()V
    .locals 1

    const-string v0, "unicode11"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTables(Ljava/lang/String;)[[[J

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables12:[[[J

    return-void
.end method

.method public static initializeTables(Ljava/lang/String;)[[[J
    .locals 14

    const-class v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;

    const/4 v1, 0x3

    new-array v2, v1, [[J

    const/4 v3, 0x4

    new-array v3, v3, [[J

    filled-new-array {v2, v3}, [[[J

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x400

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/start0.rsc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array v7, v4, [J

    move v8, v3

    :goto_0
    if-lt v8, v4, :cond_0

    aget-object v8, v2, v3

    aput-object v7, v8, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v6

    move-object v7, v5

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    aput-wide v9, v7, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v6

    :goto_2
    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_1

    :try_start_5
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_5

    :cond_1
    :goto_3
    move-object v6, v7

    :cond_2
    throw v6
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    const/4 v6, 0x1

    :try_start_6
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/start1.rsc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-array v8, v4, [J

    move v9, v3

    :goto_7
    if-lt v9, v4, :cond_3

    aget-object v9, v2, v3

    aput-object v8, v9, v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v7

    move-object v8, v5

    goto :goto_9

    :catchall_4
    move-exception v8

    goto :goto_8

    :cond_3
    :try_start_9
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    aput-wide v10, v8, v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :goto_8
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v7

    :goto_9
    if-eqz v8, :cond_5

    if-eq v8, v7, :cond_4

    :try_start_b
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_2
    move-exception v7

    goto :goto_b

    :catch_3
    move-exception v7

    goto :goto_c

    :cond_4
    :goto_a
    move-object v7, v8

    :cond_5
    throw v7
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :goto_c
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    const/4 v7, 0x2

    :try_start_c
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/start2.rsc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    new-array v9, v4, [J

    move v10, v3

    :goto_e
    if-lt v10, v4, :cond_6

    aget-object v10, v2, v3

    aput-object v9, v10, v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_14

    :catchall_6
    move-exception v8

    move-object v9, v5

    goto :goto_10

    :catchall_7
    move-exception v9

    goto :goto_f

    :cond_6
    :try_start_f
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :goto_f
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v8

    :goto_10
    if-eqz v9, :cond_8

    if-eq v9, v8, :cond_7

    :try_start_11
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_4
    move-exception v8

    goto :goto_12

    :catch_5
    move-exception v8

    goto :goto_13

    :cond_7
    :goto_11
    move-object v8, v9

    :cond_8
    throw v8
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    :goto_12
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :goto_13
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    :try_start_12
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/part0.rsc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    new-array v9, v4, [J

    move v10, v3

    :goto_15
    if-lt v10, v4, :cond_9

    aget-object v10, v2, v6

    aput-object v9, v10, v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :try_start_14
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_1b

    :catchall_9
    move-exception v8

    move-object v9, v5

    goto :goto_17

    :catchall_a
    move-exception v9

    goto :goto_16

    :cond_9
    :try_start_15
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :goto_16
    :try_start_16
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :catchall_b
    move-exception v8

    :goto_17
    if-eqz v9, :cond_b

    if-eq v9, v8, :cond_a

    :try_start_17
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_18

    :catch_6
    move-exception v8

    goto :goto_19

    :catch_7
    move-exception v8

    goto :goto_1a

    :cond_a
    :goto_18
    move-object v8, v9

    :cond_b
    throw v8
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6

    :goto_19
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b

    :goto_1a
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    :try_start_18
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/part1.rsc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :try_start_19
    new-array v9, v4, [J

    move v10, v3

    :goto_1c
    if-lt v10, v4, :cond_c

    aget-object v10, v2, v6

    aput-object v9, v10, v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    goto :goto_22

    :catchall_c
    move-exception v8

    move-object v9, v5

    goto :goto_1e

    :catchall_d
    move-exception v9

    goto :goto_1d

    :cond_c
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :goto_1d
    :try_start_1c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :catchall_e
    move-exception v8

    :goto_1e
    if-eqz v9, :cond_e

    if-eq v9, v8, :cond_d

    :try_start_1d
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_8
    move-exception v8

    goto :goto_20

    :catch_9
    move-exception v8

    goto :goto_21

    :cond_d
    :goto_1f
    move-object v8, v9

    :cond_e
    throw v8
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_9
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_8

    :goto_20
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22

    :goto_21
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_22
    :try_start_1e
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/part2.rsc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    :try_start_1f
    new-array v9, v4, [J

    move v10, v3

    :goto_23
    if-lt v10, v4, :cond_f

    aget-object v10, v2, v6

    aput-object v9, v10, v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    :try_start_20
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    goto :goto_29

    :catchall_f
    move-exception v7

    move-object v8, v5

    goto :goto_25

    :catchall_10
    move-exception v7

    goto :goto_24

    :cond_f
    :try_start_21
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :goto_24
    :try_start_22
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    :catchall_11
    move-exception v8

    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    :goto_25
    if-eqz v8, :cond_11

    if-eq v8, v7, :cond_10

    :try_start_23
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_26

    :catch_a
    move-exception v7

    goto :goto_27

    :catch_b
    move-exception v7

    goto :goto_28

    :cond_10
    :goto_26
    move-object v7, v8

    :cond_11
    throw v7
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_a

    :goto_27
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    :goto_28
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_29
    :try_start_24
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v9, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "/part14.rsc"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v8, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    :try_start_25
    new-array p0, v4, [J

    :goto_2a
    if-lt v3, v4, :cond_12

    aget-object v0, v2, v6

    aput-object p0, v0, v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    :try_start_26
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    goto :goto_30

    :catchall_12
    move-exception p0

    goto :goto_2c

    :catchall_13
    move-exception p0

    move-object v5, p0

    goto :goto_2b

    :cond_12
    :try_start_27
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    aput-wide v8, p0, v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :goto_2b
    :try_start_28
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    :goto_2c
    if-eqz v5, :cond_14

    if-eq v5, p0, :cond_13

    :try_start_29
    invoke-virtual {v5, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2d

    :catch_c
    move-exception p0

    goto :goto_2e

    :catch_d
    move-exception p0

    goto :goto_2f

    :cond_13
    :goto_2d
    move-object p0, v5

    :cond_14
    throw p0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_c

    :goto_2e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_30
    return-object v2
.end method

.method private static final isBitSet([JI)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    div-int/lit8 v1, p1, 0x40

    aget-wide v1, p0, v1

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Bits:[J

    rem-int/lit8 p1, p1, 0x40

    aget-wide v3, p0, p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-long p0, v1, v3

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isDigit(C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    new-instance p0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v0, "Invalid_Digit"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isJavaIdentifierPart(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierPart(JC)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p2, v0, :cond_1

    .line 3
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, p0, p2

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JI)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierPart(JCC)Z
    .locals 0

    .line 23
    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toCodePoint(CC)I

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JI)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierPart(JI)Z
    .locals 2

    const-wide/32 v0, 0x320000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 5
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables:[[[J

    if-nez p0, :cond_0

    .line 6
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable()V

    .line 7
    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart0(I[[[J)Z

    move-result p0

    return p0

    :cond_1
    const-wide/32 v0, 0x330000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 8
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables7:[[[J

    if-nez p0, :cond_2

    .line 9
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable17()V

    .line 10
    :cond_2
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables7:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart0(I[[[J)Z

    move-result p0

    return p0

    :cond_3
    const-wide/32 v0, 0x340000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 11
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables8:[[[J

    if-nez p0, :cond_4

    .line 12
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable18()V

    .line 13
    :cond_4
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables8:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart0(I[[[J)Z

    move-result p0

    return p0

    :cond_5
    const-wide/32 v0, 0x360000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    .line 14
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables9:[[[J

    if-nez p0, :cond_6

    .line 15
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable19()V

    .line 16
    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables9:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart0(I[[[J)Z

    move-result p0

    return p0

    :cond_7
    const-wide/32 v0, 0x370000

    cmp-long p0, p0, v0

    if-gtz p0, :cond_9

    .line 17
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables11:[[[J

    if-nez p0, :cond_8

    .line 18
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTableJava11()V

    .line 19
    :cond_8
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables11:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart0(I[[[J)Z

    move-result p0

    return p0

    .line 20
    :cond_9
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables12:[[[J

    if-nez p0, :cond_a

    .line 21
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTableJava12()V

    .line 22
    :cond_a
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables12:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart0(I[[[J)Z

    move-result p0

    return p0
.end method

.method private static isJavaIdentifierPart0(I[[[J)Z
    .locals 5

    const/high16 v0, 0x1f0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const v2, 0xffff

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/16 v4, 0xe

    if-eq v0, v4, :cond_0

    return v1

    :cond_0
    aget-object p1, p1, v3

    const/4 v0, 0x3

    aget-object p1, p1, v0

    and-int/2addr p0, v2

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0

    :cond_1
    aget-object p1, p1, v3

    aget-object p1, p1, v4

    and-int/2addr p0, v2

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0

    :cond_2
    aget-object p1, p1, v3

    aget-object p1, p1, v3

    and-int/2addr p0, v2

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0

    :cond_3
    aget-object p1, p1, v3

    aget-object p1, p1, v1

    and-int/2addr p0, v2

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierStart(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierStart(JC)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p2, v0, :cond_1

    .line 3
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, p0, p2

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JI)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierStart(JCC)Z
    .locals 0

    .line 5
    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toCodePoint(CC)I

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JI)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierStart(JI)Z
    .locals 2

    const-wide/32 v0, 0x320000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 6
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables:[[[J

    if-nez p0, :cond_0

    .line 7
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable()V

    .line 8
    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart0(I[[[J)Z

    move-result p0

    return p0

    :cond_1
    const-wide/32 v0, 0x330000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 9
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables7:[[[J

    if-nez p0, :cond_2

    .line 10
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable17()V

    .line 11
    :cond_2
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables7:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart0(I[[[J)Z

    move-result p0

    return p0

    :cond_3
    const-wide/32 v0, 0x340000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 12
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables8:[[[J

    if-nez p0, :cond_4

    .line 13
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable18()V

    .line 14
    :cond_4
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables8:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart0(I[[[J)Z

    move-result p0

    return p0

    :cond_5
    const-wide/32 v0, 0x360000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    .line 15
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables9:[[[J

    if-nez p0, :cond_6

    .line 16
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTable19()V

    .line 17
    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables9:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart0(I[[[J)Z

    move-result p0

    return p0

    :cond_7
    const-wide/32 v0, 0x370000

    cmp-long p0, p0, v0

    if-gtz p0, :cond_9

    .line 18
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables11:[[[J

    if-nez p0, :cond_8

    .line 19
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTableJava11()V

    .line 20
    :cond_8
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables11:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart0(I[[[J)Z

    move-result p0

    return p0

    .line 21
    :cond_9
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables12:[[[J

    if-nez p0, :cond_a

    .line 22
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->initializeTableJava12()V

    .line 23
    :cond_a
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->Tables12:[[[J

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart0(I[[[J)Z

    move-result p0

    return p0
.end method

.method private static isJavaIdentifierStart0(I[[[J)Z
    .locals 4

    const/high16 v0, 0x1f0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    aget-object p1, p1, v2

    aget-object p1, p1, v3

    and-int/2addr p0, v1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0

    :cond_1
    aget-object p1, p1, v2

    aget-object p1, p1, v3

    and-int/2addr p0, v1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0

    :cond_2
    aget-object p1, p1, v2

    aget-object p1, p1, v2

    and-int/2addr p0, v1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isBitSet([JI)Z

    move-result p0

    return p0
.end method

.method public static isLetter(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x30

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    return p0
.end method

.method public static isLetterOrDigit(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x34

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    return p0
.end method

.method public static isLowerCase(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p0

    return p0
.end method

.method public static isUpperCase(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    return p0
.end method

.method private static toCodePoint(CC)I
    .locals 1

    const v0, 0xd800

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x400

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method

.method public static toLowerCase(C)C
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v0, p0

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    return p0

    :cond_0
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    return p0
.end method

.method public static toUpperCase(C)C
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v0, p0

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    return p0

    :cond_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    return p0
.end method
