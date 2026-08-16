.class public final Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy:[I = null

.field static final synthetic $assertionsDisabled:Z = false

.field public static final NONNULL:C = '1'

.field public static final NO_ANNOTATION:C = '@'

.field public static final NULLABLE:C = '0'

.field private static final POSITION_FULL_SIGNATURE:I = -0x2

.field private static final POSITION_RETURN_TYPE:I = -0x1


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->$SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->values()[Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->ADD_ANNOTATIONS:Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->OVERWRITE_ANNOTATIONS:Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->REPLACE_SIGNATURE:Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->$SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static annotateMember(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0xa

    if-nez v0, :cond_0

    .line 3
    sget-object p6, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->REPLACE_SIGNATURE:Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    invoke-static {p3, p4, p5, p6}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateSignature(Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;

    move-result-object p4

    .line 4
    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    const-string p6, "class "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p7}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->createNewFile(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto/16 :goto_2

    .line 11
    :cond_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getContents()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_4

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    if-gez v4, :cond_6

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    if-nez v4, :cond_1

    .line 21
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v3, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-static {p3, p4, p5, p6}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateSignature(Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;

    move-result-object p3

    move-object p2, v0

    move-object p4, v3

    move-object p5, p0

    move-object p6, p7

    .line 28
    invoke-static/range {p1 .. p6}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->writeFile(Lorg/eclipse/core/resources/IFile;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedReader;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :goto_2
    return-void

    .line 30
    :cond_8
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-gez v5, :cond_9

    goto/16 :goto_0

    :cond_9
    if-nez v5, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    const-string p3, " "

    if-eqz p2, :cond_b

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    move-object v3, p2

    goto :goto_4

    :cond_b
    :goto_3
    move-object v1, p2

    .line 33
    :goto_4
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 34
    invoke-static {}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->$SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy()[I

    move-result-object p2

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_d

    const/4 p3, 0x2

    if-eq p2, p3, :cond_c

    const/4 p3, 0x3

    if-eq p2, p3, :cond_c

    .line 35
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getJavaCore()Lorg/eclipse/jdt/core/JavaCore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/JavaCore;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object p2

    new-instance p3, Lorg/eclipse/core/runtime/Status;

    const-string p5, "org.eclipse.jdt.core"

    .line 36
    const-string p6, "Unexpected value for enum MergeStrategy"

    const/4 v2, 0x4

    invoke-direct {p3, v2, p5, p6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {p2, p3}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    goto :goto_5

    .line 38
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4, p5, p6}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateSignature(Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;

    move-result-object p4

    :cond_d
    :goto_5
    move-object p3, p4

    move-object p2, v0

    move-object p4, v1

    move-object p5, p0

    move-object p6, p7

    .line 39
    invoke-static/range {p1 .. p6}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->writeFile(Lorg/eclipse/core/resources/IFile;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedReader;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-void

    :goto_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 41
    throw p1
.end method

.method public static annotateMember(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->annotateMember(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static annotateMethodParameterType(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->annotateMember(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static annotateMethodReturnType(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->annotateMember(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static annotateParameterType(Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([CZZ)V

    const/16 v2, 0x28

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-lt v4, p2, :cond_0

    iget p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v1, v3

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v2, p2, p1, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z

    const/4 p1, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static annotateReturnType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v3, p0, p1, p2}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z

    const/4 p0, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    const-string p1, ""

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static annotateType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    filled-new-array {p2, p0, p1, p2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createNewFile(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->ensureExists(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1, p2}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance p2, Lorg/eclipse/core/runtime/Status;

    const-string v0, "org.eclipse.jdt.core"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p2, v2, v0, v1, p0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p1, p2}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
.end method

.method private static ensureExists(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/core/resources/IContainer;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lorg/eclipse/core/resources/IFolder;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/eclipse/core/resources/IContainer;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IFolder;

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->ensureExists(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    check-cast p0, Lorg/eclipse/core/resources/IFolder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, p1}, Lorg/eclipse/core/resources/IFolder;->create(ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_2
    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    invoke-direct {v0, v1, v2, p0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
.end method

.method public static extractGenericSignature(Lorg/eclipse/jdt/core/dom/IMethodBinding;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractGenericTypeSignature(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotatedSignature(Ljava/lang/String;Lorg/eclipse/core/resources/IFile;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getContents()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->assertClassHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->extractSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->extractSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    move-object p0, p1

    :cond_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static getAnnotationFile(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/dom/ITypeBinding;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getErasure()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/IJavaProject;->findType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/16 p2, 0x24

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-interface {p0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    const-string p2, "eea"

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->addFileExtension(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    return-object p0
.end method

.method private static insertAt(Ljava/lang/String;ICLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x30

    if-eq p2, v1, :cond_0

    const/16 v1, 0x31

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->ADD_ANNOTATIONS:Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    if-ne p3, p2, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static insertParameterAnnotation(Ljava/lang/String;ICLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    const/4 v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_2

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x54

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Paramter type is not a reference type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/2addr p1, v1

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->insertAt(Ljava/lang/String;ICLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static insertReturnAnnotation(Ljava/lang/String;CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-gt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Return type is not a reference type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, p1, p2}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->insertAt(Ljava/lang/String;ICLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed method signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v3, v3, v4

    if-ne v3, p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v0, v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr p0, v2

    iput p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr p0, v2

    iput p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    return v2

    :cond_2
    if-nez p4, :cond_3

    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Expected char "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " not found in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Mismatching type structures "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static mergeAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)V
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v1, v1, v2

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->$SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy()[I

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x2

    const/16 v3, 0x31

    const/16 v4, 0x30

    if-eq p3, v2, :cond_5

    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_2

    :cond_2
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected merge strategy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_9

    const/16 p3, 0x40

    if-eq v1, p3, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    goto :goto_3

    :cond_6
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    iget p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_8

    goto :goto_3

    :cond_8
    iget p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    goto :goto_3

    :cond_9
    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    goto :goto_3

    :cond_a
    iget p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :goto_3
    return-void
.end method

.method private static updateSignature(Ljava/lang/String;Ljava/lang/String;ILorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([CZZ)V

    const/16 v2, 0x28

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v2, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    move v2, v3

    :goto_0
    if-lt v2, p2, :cond_0

    iget p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v1

    invoke-virtual {v0, p0, v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    add-int/2addr v1, v4

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object p0, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v0, p0, v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;->REPLACE_SIGNATURE:Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([CZZ)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {v3, p2, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([CZZ)V

    const/16 v4, 0x4c

    invoke-static {p0, v0, v3, v4, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x54

    invoke-static {p0, v0, v3, v4, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x5b

    invoke-static {p0, v0, v3, v4, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, v0, v3, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->mergeAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->tail()[C

    move-result-object v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->tail()[C

    move-result-object v2

    invoke-static {p0, v0, v2, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    const/16 p3, 0x2a

    invoke-static {p0, v0, v3, p3, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result p3

    if-nez p3, :cond_4

    const/16 p3, 0x2b

    invoke-static {p0, v0, v3, p3, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result p3

    if-nez p3, :cond_4

    const/16 p3, 0x2d

    invoke-static {p0, v0, v3, p3, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    invoke-static {p0, v0, v3, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->mergeAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextName()[C

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextName()[C

    const/16 v4, 0x3c

    invoke-static {p0, v0, v3, v4, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->getFrom(I)[C

    move-result-object v4

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->getFrom(I)[C

    move-result-object v5

    invoke-static {p0, v4, v5, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->updateType(Ljava/lang/StringBuffer;[C[CLorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0, v0, v3, p3}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->mergeAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil$MergeStrategy;)V

    :cond_7
    const/16 v4, 0x3e

    invoke-static {p0, v0, v3, v4, v1}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_8
    const/16 p3, 0x3b

    invoke-static {p0, v0, v3, p3, v2}, Lorg/eclipse/jdt/core/util/ExternalAnnotationUtil;->match(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;CZ)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v1

    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Structural mismatch between "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static writeFile(Lorg/eclipse/core/resources/IFile;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedReader;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    invoke-virtual {p4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UTF-8"

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x2

    invoke-interface {p0, p2, p1, p5}, Lorg/eclipse/core/resources/IFile;->setContents(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
