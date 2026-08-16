.class public Lorg/eclipse/jdt/internal/compiler/util/Util;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;
    }
.end annotation


# static fields
.field public static final COMMA_SEPARATOR:Ljava/lang/String;

.field public static final C_ARRAY:C = '['

.field public static final C_BOOLEAN:C = 'Z'

.field public static final C_BYTE:C = 'B'

.field public static final C_CAPTURE:C = '!'

.field public static final C_CHAR:C = 'C'

.field public static final C_COLON:C = ':'

.field public static final C_DOLLAR:C = '$'

.field public static final C_DOT:C = '.'

.field public static final C_DOUBLE:C = 'D'

.field public static final C_EXCEPTION_START:C = '^'

.field public static final C_EXTENDS:C = '+'

.field public static final C_FLOAT:C = 'F'

.field public static final C_GENERIC_END:C = '>'

.field public static final C_GENERIC_START:C = '<'

.field public static final C_INT:C = 'I'

.field public static final C_LONG:C = 'J'

.field public static final C_NAME_END:C = ';'

.field public static final C_PARAM_END:C = ')'

.field public static final C_PARAM_START:C = '('

.field public static final C_RESOLVED:C = 'L'

.field public static final C_SEMICOLON:C = ';'

.field public static final C_SHORT:C = 'S'

.field public static final C_STAR:C = '*'

.field public static final C_SUPER:C = '-'

.field public static final C_TYPE_VARIABLE:C = 'T'

.field public static final C_UNRESOLVED:C = 'Q'

.field public static final C_VOID:C = 'V'

.field private static final DEFAULT_READING_SIZE:I = 0x2000

.field private static final DEFAULT_WRITING_SIZE:I = 0x400

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_STRING:Ljava/lang/String;

.field public static final JMOD_FILE:I = 0x1

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final ZIP_FILE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->COMMA_SEPARATOR:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->COMMA_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapedChar(Ljava/lang/StringBuffer;CZ)V
    .locals 1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_9

    const/16 v0, 0xd

    if-eq p1, v0, :cond_8

    const/16 v0, 0x22

    if-eq p1, v0, :cond_6

    const/16 v0, 0x27

    if-eq p1, v0, :cond_4

    const/16 p2, 0x5c

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    const/16 p2, 0x20

    if-lt p1, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    const-string p2, "\\u00"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    const-string p2, "\\u000"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const-string p1, "\\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string p1, "\\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string p1, "\\b"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string p1, "\\\\"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    const-string p1, "\\\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const-string p1, "\\\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_8
    const-string p1, "\\r"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_9
    const-string p1, "\\f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final archiveFormat(Ljava/lang/String;)I
    .locals 8

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-le v2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v2, v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    add-int/lit8 v5, v0, -0x2

    :goto_0
    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    sub-int v6, v2, v3

    add-int/2addr v6, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    const-string v7, "java"

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v3, v5, :cond_8

    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-gez v0, :cond_6

    return v1

    :cond_6
    sub-int v4, v2, v3

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    const-string v5, "class"

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_7

    return v6

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    if-ne v3, v4, :cond_b

    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-gez v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    sub-int v1, v2, v3

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const-string v4, "jmod"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v1, v4, :cond_a

    return v6

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_b
    return v6
.end method

.method public static buildAllDirectoriesInto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-char v0, Ljava/io/File;->separatorChar:C

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/io/IOException;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->output_isFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->output_notValidAll:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/io/IOException;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->output_isFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p1, Ljava/io/IOException;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->output_notValid:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_5
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method public static bytesToChar([BLjava/lang/String;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method public static collectFilesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->collectPlatformLibraries(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collectPlatformLibraries(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1.1.8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getJavaHome()Ljava/io/File;

    move-result-object p0

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getJrtClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    const-string v0, "sun.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    const-string v0, "vm.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const-string v0, "org.apache.harmony.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/util/StringTokenizer;

    sget-object p0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v3, v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-nez p0, :cond_9

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getJavaHome()Ljava/io/File;

    move-result-object p0

    :cond_9
    if-eqz p0, :cond_e

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    new-array v0, v4, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "../Classes"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v0, v3

    goto :goto_2

    :cond_a
    new-array v0, v4, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "lib"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v0, v3

    :goto_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->getLibrariesFiles([Ljava/io/File;)[[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_e

    array-length v0, p0

    move v4, v3

    :goto_3
    if-lt v4, v0, :cond_b

    goto :goto_6

    :cond_b
    aget-object v5, p0, v4

    if-eqz v5, :cond_d

    array-length v6, v5

    move v7, v3

    :goto_4
    if-lt v7, v6, :cond_c

    goto :goto_5

    :cond_c
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    :goto_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-object p0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1, v1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static collectRunningVMBootclasspath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->collectVMBootclasspath(Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public static collectVMBootclasspath(Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->collectPlatformLibraries(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static computeOuterMostVisibility(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)I
    .locals 2

    :goto_0
    if-nez p0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    if-eq p1, v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0
.end method

.method public static effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, p0

    :goto_0
    if-nez p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    array-length v3, p1

    :goto_1
    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    if-nez v2, :cond_4

    return v0

    :cond_4
    move v2, v1

    :goto_2
    array-length v3, p0

    if-lt v2, v3, :cond_5

    return v0

    :cond_5
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getExceptionSummary(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v3, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_3

    const/16 v7, 0xa

    const/16 v8, 0x20

    if-eq v6, v7, :cond_1

    const/16 v7, 0xd

    if-eq v6, v7, :cond_1

    if-eq v6, v8, :cond_3

    if-lez v5, :cond_3

    move v5, v2

    move v4, v3

    goto :goto_2

    :cond_1
    if-lez v4, :cond_2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getFileByteContent(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    throw p0
.end method

.method public static getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    throw p0
.end method

.method private static getFileOutputStream(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->buildAllDirectoriesInto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p0

    :cond_0
    sget-char p0, Ljava/io/File;->separatorChar:C

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method public static getInputStreamAsByteArray(Ljava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    new-array p1, v0, [B

    move v2, v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    const/16 v4, 0x2000

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, v2, v3

    array-length v5, p1

    if-le v4, v5, :cond_1

    new-array v4, v4, [B

    invoke-static {p1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    :cond_1
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    :cond_2
    if-ne v3, v1, :cond_0

    array-length p0, p1

    if-ge v2, p0, :cond_6

    new-array p0, v2, [B

    invoke-static {p1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p0

    goto :goto_2

    :cond_3
    new-array v2, p1, [B

    move v3, v0

    :goto_0
    if-eq v0, v1, :cond_5

    if-ne v3, p1, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v3, v0

    sub-int v0, p1, v3

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    :cond_5
    :goto_1
    move-object p1, v2

    :cond_6
    :goto_2
    return-object p1
.end method

.method public static getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_1
    new-array v1, p1, [C

    goto :goto_1

    :goto_2
    if-ge v3, p1, :cond_2

    sub-int v4, p1, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v4

    if-gez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    const/16 v6, 0x2000

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    add-int v7, v6, v5

    array-length v8, v1

    if-le v7, v8, :cond_4

    new-array v7, v7, [C

    invoke-static {v1, v2, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v7

    :cond_4
    int-to-char v4, v4

    aput-char v4, v1, v3

    move v4, v5

    move v3, v6

    :goto_3
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-gez v4, :cond_7

    :goto_4
    if-lez v3, :cond_5

    const-string p0, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    aget-char p0, v1, v2

    const p1, 0xfeff

    if-ne p0, p1, :cond_5

    add-int/lit8 v3, v3, -0x1

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    move p0, v2

    :goto_5
    array-length p1, v1

    if-ge v3, p1, :cond_6

    new-array p1, v3, [C

    invoke-static {v1, p0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_6
    return-object v1

    :cond_7
    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public static getJDKLevel(Ljava/io/File;)J
    .locals 2

    const-string p0, "java.version"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getJavaHome()Ljava/io/File;
    .locals 2

    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLineNumber(I[III)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    return v0

    :cond_1
    move v1, p3

    move p3, p2

    :goto_0
    if-le p2, v1, :cond_3

    aget p1, p1, p3

    if-ge p0, p1, :cond_2

    add-int/2addr p3, v0

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_3
    sub-int p3, v1, p2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    aget v2, p1, p3

    if-ge p0, v2, :cond_4

    add-int/lit8 v1, p3, -0x1

    goto :goto_0

    :cond_4
    if-le p0, v2, :cond_5

    add-int/lit8 p2, p3, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr p3, v0

    return p3
.end method

.method public static getParameterCount([C)I
    .locals 4

    const/16 v0, 0x28

    :try_start_0
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    aget-char v2, p0, v0

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid zip entry name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    throw p0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    const/16 v3, 0x1f

    mul-int/2addr v3, v1

    aget-object v1, p0, v2

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final isClassFileName(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6
    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    move v3, v0

    :goto_1
    const/4 v4, 0x1

    if-lt v3, v2, :cond_2

    return v4

    :cond_2
    sub-int v5, v1, v3

    sub-int/2addr v5, v4

    .line 7
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int v6, v2, v3

    sub-int/2addr v6, v4

    .line 8
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    aget-char v4, v4, v6

    if-eq v5, v4, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    aget-char v4, v4, v6

    if-eq v5, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static final isClassFileName([C)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p0

    .line 2
    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    sub-int/2addr v1, v2

    move v3, v0

    :goto_1
    if-lt v3, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int v4, v1, v3

    .line 3
    aget-char v4, p0, v4

    .line 4
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static final isExcluded([C[[C[[CZ)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2a

    const/16 v3, 0x2f

    if-eqz p1, :cond_5

    array-length v4, p1

    move v5, v1

    :goto_0
    if-lt v5, v4, :cond_1

    return v0

    :cond_1
    aget-object v6, p1, v5

    if-eqz p3, :cond_3

    invoke-static {v3, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    array-length v9, v6

    sub-int/2addr v9, v0

    if-eq v7, v9, :cond_3

    invoke-static {v2, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v9

    if-eq v9, v8, :cond_2

    array-length v8, v6

    sub-int/2addr v8, v0

    if-ge v9, v8, :cond_2

    add-int/2addr v9, v0

    aget-char v8, v6, v9

    if-eq v8, v2, :cond_3

    :cond_2
    invoke-static {v6, v1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    :cond_3
    invoke-static {v6, p0, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->pathMatch([C[CZC)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v5, v0

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    new-array p1, v0, [C

    aput-char v2, p1, v1

    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    :cond_6
    if-eqz p2, :cond_9

    array-length p1, p2

    move p3, v1

    :goto_2
    if-lt p3, p1, :cond_7

    goto :goto_3

    :cond_7
    aget-object v2, p2, p3

    invoke-static {v2, p0, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->pathMatch([C[CZC)Z

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    add-int/2addr p3, v0

    goto :goto_2

    :cond_9
    :goto_3
    return v1
.end method

.method public static final isJavaFileName(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6
    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_JAVA:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    move v3, v0

    :goto_1
    const/4 v4, 0x1

    if-lt v3, v2, :cond_2

    return v4

    :cond_2
    sub-int v5, v1, v3

    sub-int/2addr v5, v4

    .line 7
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int v6, v2, v3

    sub-int/2addr v6, v4

    .line 8
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_java:[C

    aget-char v4, v4, v6

    if-eq v5, v4, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_JAVA:[C

    aget-char v4, v4, v6

    if-eq v5, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static final isJavaFileName([C)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p0

    .line 2
    :goto_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_JAVA:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    sub-int/2addr v1, v2

    move v3, v0

    :goto_1
    if-lt v3, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int v4, v1, v3

    .line 3
    aget-char v4, p0, v4

    .line 4
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_java:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_JAVA:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static final isJrt(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "jrt-fs.jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isPotentialZipArchive(Ljava/lang/String;)Z
    .locals 7

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-le v1, v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    add-int/lit8 v4, v0, -0x2

    :goto_0
    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    sub-int v5, v1, v3

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    const-string v6, "java"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v3, v4, :cond_8

    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-gez v0, :cond_6

    return v2

    :cond_6
    sub-int v4, v1, v3

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    const-string v6, "class"

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_7

    return v5

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    return v5
.end method

.method public static recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->visitedTypes:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->visitedTypes:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->visitedTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x800

    if-eqz v0, :cond_a

    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_a

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_12

    array-length v0, p1

    move v6, v1

    :goto_1
    if-lt v6, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    aget-object v7, p1, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v8

    if-eqz v8, :cond_8

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v8, :cond_4

    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v4

    cmp-long v9, v9, v2

    if-eqz v9, :cond_4

    invoke-static {p0, v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v4

    cmp-long v9, v9, v2

    if-eqz v9, :cond_5

    invoke-static {p0, v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-eqz v7, :cond_9

    array-length v8, v7

    move v9, v1

    :goto_2
    if-lt v9, v8, :cond_6

    goto :goto_3

    :cond_6
    aget-object v10, v7, v9

    iget-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v11, v4

    cmp-long v11, v11, v2

    if-eqz v11, :cond_7

    invoke-static {p0, v10}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    iget-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_9

    invoke-static {p0, v7}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_e

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v6, v6, v2

    if-eqz v6, :cond_b

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->otherUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_12

    array-length v0, p1

    :goto_4
    if-lt v1, v0, :cond_c

    goto :goto_6

    :cond_c
    aget-object v6, p1, v1

    iget-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v4

    cmp-long v7, v7, v2

    if-eqz v7, :cond_d

    invoke-static {p0, v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p1

    :cond_f
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_5
    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V

    :cond_12
    :goto_6
    return-void
.end method

.method public static reverseQuickSort([[CII)V
    .locals 5

    sub-int v0, p2, p1

    .line 1
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    .line 2
    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-static {v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result v3

    if-gtz v3, :cond_5

    .line 3
    :goto_1
    aget-object v3, p0, v2

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result v3

    if-gtz v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 4
    aget-object v3, p0, v1

    .line 5
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 6
    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 7
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 8
    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverseQuickSort([[CII[I)V
    .locals 5

    sub-int v0, p2, p1

    .line 9
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    .line 10
    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-static {v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result v3

    if-gtz v3, :cond_5

    .line 11
    :goto_1
    aget-object v3, p0, v2

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result v3

    if-gtz v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 12
    aget-object v3, p0, v1

    .line 13
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 14
    aput-object v3, p0, v2

    .line 15
    aget v3, p3, v1

    .line 16
    aget v4, p3, v2

    aput v4, p3, v1

    .line 17
    aput v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 18
    invoke-static {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII[I)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 19
    invoke-static {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII[I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static scanArrayTypeSignature([CI)I
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    aget-char v1, p0, p1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    aget-char v1, p0, p1

    :goto_0
    if-eq v1, v2, :cond_0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result p0

    return p0

    :cond_0
    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    aget-char v1, p0, p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanBaseTypeSignature([CI)I
    .locals 1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-char p0, p0, p1

    const-string v0, "BCDFIJSVZ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanCaptureTypeSignature([CI)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    aget-char v0, p0, p1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeBoundSignature([CI)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanClassTypeSignature([CI)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_5

    aget-char v0, p0, p1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ge p1, v0, :cond_4

    aget-char v0, p0, p1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeArgumentSignatures([CI)I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanIdentifier([CI)I

    move-result p1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanIdentifier([CI)I
    .locals 2

    array-length v0, p0

    if-ge p1, v0, :cond_3

    :goto_0
    aget-char v0, p0, p1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanTypeArgumentSignature([CI)I
    .locals 2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-char v0, p0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeBoundSignature([CI)I

    move-result p0

    return p0

    :cond_1
    return p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanTypeArgumentSignatures([CI)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    aget-char v0, p0, p1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-char v0, p0, p1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeArgumentSignature([CI)I

    move-result p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanTypeBoundSignature([CI)I
    .locals 5

    array-length v0, p0

    if-ge p1, v0, :cond_c

    aget-char v0, p0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_b

    const/16 v2, 0x2d

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    aget-char v0, p0, p1

    if-eq v0, v1, :cond_3

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    const/16 v4, 0x21

    if-eq v0, v4, :cond_a

    if-eq v0, v2, :cond_9

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_8

    const/16 v2, 0x51

    if-eq v0, v2, :cond_8

    const/16 v2, 0x54

    if-eq v0, v2, :cond_7

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    return p1

    :cond_6
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanArrayTypeSignature([CI)I

    move-result p0

    return p0

    :cond_7
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeVariableSignature([CI)I

    move-result p0

    return p0

    :cond_8
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result p0

    return p0

    :cond_9
    :goto_2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeBoundSignature([CI)I

    move-result p0

    return p0

    :cond_a
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanCaptureTypeSignature([CI)I

    move-result p0

    return p0

    :cond_b
    return p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static scanTypeSignature([CI)I
    .locals 2

    array-length v0, p0

    if-ge p1, v0, :cond_6

    aget-char v0, p0, p1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x46

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x51

    if-eq v0, v1, :cond_2

    const/16 v1, 0x56

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanArrayTypeSignature([CI)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeVariableSignature([CI)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result p0

    return p0

    :cond_3
    :pswitch_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanBaseTypeSignature([CI)I

    move-result p0

    return p0

    :cond_4
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeBoundSignature([CI)I

    move-result p0

    return p0

    :cond_5
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanCaptureTypeSignature([CI)I

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static scanTypeVariableSignature([CI)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_2

    aget-char v0, p0, p1

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanIdentifier([CI)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final searchColumnNumber([III)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    sub-int/2addr p1, v1

    array-length v1, p0

    if-lt p1, v1, :cond_0

    sub-int/2addr v1, v0

    aget p0, p0, v1

    :goto_0
    sub-int/2addr p2, p0

    return p2

    :cond_0
    aget p0, p0, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    aget p0, p0, p1

    goto :goto_0

    :cond_2
    add-int/2addr p2, v0

    return p2
.end method

.method public static toBoolean(Z)Ljava/lang/Boolean;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/Util$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util$1;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 3
    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v1, :cond_2

    .line 7
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_2
    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;->displayString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static writeToDisk(ZLjava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileOutputStream(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedOutputStream;

    const/16 p2, 0x400

    invoke-direct {p1, p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget-object p0, p3, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    iget p2, p3, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object p0, p3, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p3, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p1, p0, v0, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p0
.end method
