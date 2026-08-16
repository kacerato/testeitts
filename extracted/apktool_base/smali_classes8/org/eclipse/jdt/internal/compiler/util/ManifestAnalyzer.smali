.class public Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASSPATH_HEADER_TOKEN:[C

.field private static final CONTINUING:I = 0x5

.field private static final IN_CLASSPATH_HEADER:I = 0x1

.field private static final PAST_CLASSPATH_HEADER:I = 0x2

.field private static final READING_JAR:I = 0x4

.field private static final SKIPPING_WHITESPACE:I = 0x3

.field private static final SKIP_LINE:I = 0x6

.field private static final START:I


# instance fields
.field private calledFilesNames:Ljava/util/ArrayList;

.field private classpathSectionsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Class-Path:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->CLASSPATH_HEADER_TOKEN:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public analyzeManifestContents(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->analyzeManifestContents([C)Z

    move-result p1

    return p1
.end method

.method public analyzeManifestContents([C)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->classpathSectionsCount:I

    const/4 v4, 0x0

    .line 5
    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    .line 6
    array-length v4, v1

    move v5, v3

    move v6, v5

    :goto_0
    move v7, v6

    :cond_0
    :goto_1
    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-lt v5, v4, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v12, :cond_5

    if-eq v6, v8, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v11, :cond_1

    return v13

    .line 7
    :cond_1
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->classpathSectionsCount:I

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    return v3

    :cond_2
    return v13

    .line 9
    :cond_3
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    return v13

    :cond_4
    return v3

    .line 10
    :cond_5
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    return v13

    :cond_6
    return v3

    :cond_7
    add-int/lit8 v14, v5, 0x1

    .line 11
    aget-char v15, v1, v5

    const/16 v8, 0xd

    if-ne v15, v8, :cond_8

    if-ge v14, v4, :cond_8

    add-int/lit8 v5, v5, 0x2

    .line 12
    aget-char v15, v1, v14

    goto :goto_2

    :cond_8
    move v5, v14

    :goto_2
    const/16 v8, 0x20

    const/16 v14, 0xa

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne v15, v14, :cond_0

    :goto_3
    move v6, v3

    goto :goto_1

    :pswitch_1
    if-ne v15, v14, :cond_9

    .line 13
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    goto :goto_3

    :cond_9
    if-ne v15, v8, :cond_a

    :goto_4
    move v6, v12

    goto :goto_1

    .line 14
    :cond_a
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->CLASSPATH_HEADER_TOKEN:[C

    aget-char v6, v6, v3

    if-ne v15, v6, :cond_b

    .line 15
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    :goto_5
    move v6, v13

    goto :goto_0

    .line 16
    :cond_b
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    if-nez v6, :cond_c

    .line 17
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    goto :goto_3

    .line 18
    :cond_c
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    :cond_d
    move v6, v11

    goto :goto_1

    :pswitch_2
    if-ne v15, v14, :cond_e

    :goto_6
    move v6, v9

    goto :goto_1

    :cond_e
    if-ne v15, v8, :cond_f

    .line 19
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    goto :goto_4

    :cond_f
    int-to-char v8, v15

    .line 20
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    if-ne v15, v14, :cond_10

    goto :goto_6

    :cond_10
    if-eq v15, v8, :cond_11

    int-to-char v6, v15

    .line 21
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x4

    goto :goto_1

    .line 22
    :cond_11
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->addCurrentTokenJarWhenNecessary(Ljava/lang/StringBuffer;)Z

    goto/16 :goto_1

    :pswitch_4
    if-ne v15, v8, :cond_12

    .line 23
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->classpathSectionsCount:I

    add-int/2addr v6, v13

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->classpathSectionsCount:I

    goto :goto_4

    :cond_12
    return v3

    :pswitch_5
    if-ne v15, v14, :cond_13

    goto :goto_3

    .line 24
    :cond_13
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->CLASSPATH_HEADER_TOKEN:[C

    add-int/lit8 v13, v7, 0x1

    aget-char v7, v8, v7

    if-eq v15, v7, :cond_15

    move v6, v11

    :cond_14
    :goto_7
    move v7, v13

    goto/16 :goto_1

    .line 25
    :cond_15
    array-length v7, v8

    if-ne v13, v7, :cond_14

    move v6, v10

    goto :goto_7

    .line 26
    :pswitch_6
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->CLASSPATH_HEADER_TOKEN:[C

    aget-char v6, v6, v3

    if-ne v15, v6, :cond_d

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCalledFileNames()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->calledFilesNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClasspathSectionsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->classpathSectionsCount:I

    return v0
.end method
