.class public Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;
    }
.end annotation


# static fields
.field private static final EMPTY:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

.field public static final NEVER_MODIFIED:J = 0x0L

.field public static final UNKNOWN:J = 0x1L

.field private static final WORST_FILESYSTEM_TIMESTAMP_ACCURACY_MS:J = 0x7d0L


# instance fields
.field private hash:J

.field private size:J

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;-><init>(JJJ)V

    sput-object v7, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->EMPTY:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    iput-wide p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    iput-wide p5, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    return-void
.end method

.method private computeHashCode(Ljava/io/File;JLorg/eclipse/core/runtime/IProgressMonitor;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [C

    const/16 v1, 0x1000

    new-array v2, v1, [B

    const-wide/16 v3, 0x1000

    div-long/2addr p2, v3

    long-to-int p2, p2

    invoke-static {p4, p2}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;-><init>()V

    :try_start_0
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p2, p1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {p0, p4, v2}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->readUntilBufferFull(Ljava/io/InputStream;[B)I

    move-result p1

    if-ge p1, v1, :cond_0

    add-int/lit8 p2, p1, 0x1

    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [C

    invoke-direct {p0, p2, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->copyByteArrayToCharArray([C[BI)V

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->addChunk([C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->computeHash()J

    move-result-wide p1

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-direct {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->copyByteArrayToCharArray([C[BI)V

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/core/nd/StreamHasher;->addChunk([C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private copyByteArrayToCharArray([C[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    rem-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    aget-byte p2, p2, p3

    int-to-char p2, p2

    aput-char p2, p1, v1

    :cond_0
    return-void

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    aget-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p2, v1

    add-int/2addr v2, v1

    int-to-char v1, v2

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final create(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getEmpty()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->test(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object p0

    return-object p0
.end method

.method public static final getEmpty()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->EMPTY:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    return-object v0
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "NEVER_MODIFIED"

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public fileExists()Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->EMPTY:Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHash()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readUntilBufferFull(Ljava/io/InputStream;[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    return v0

    :cond_0
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public test(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/16 v0, 0x64

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/eclipse/core/filesystem/EFS;->getLocalFileSystem()Lorg/eclipse/core/filesystem/IFileSystem;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-interface {v4, v5}, Lorg/eclipse/core/filesystem/IFileSystem;->getStore(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/filesystem/IFileStore;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/filesystem/IFileStore;->fetchInfo()Lorg/eclipse/core/filesystem/IFileInfo;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/filesystem/IFileInfo;->getLastModified()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v8, 0x7d0

    cmp-long v2, v2, v8

    const-wide/16 v8, 0x1

    if-gez v2, :cond_0

    move-wide v11, v8

    goto :goto_0

    :cond_0
    move-wide v11, v6

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v4}, Lorg/eclipse/core/filesystem/IFileInfo;->getLength()J

    move-result-wide v13

    invoke-virtual {v0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    cmp-long v2, v11, v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    cmp-long v2, v11, v6

    if-nez v2, :cond_1

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    cmp-long v2, v13, v6

    if-nez v2, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    invoke-direct {v0, v4, v3, v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;-><init>(ZZLorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;)V

    return-object v0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-nez v2, :cond_2

    move-wide v15, v6

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v2

    const/16 v5, 0x5a

    invoke-virtual {v0, v5}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-direct {v1, v2, v13, v14, v0}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->computeHashCode(Ljava/io/File;JLorg/eclipse/core/runtime/IProgressMonitor;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v15, v5

    :goto_1
    iget-wide v5, v1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    cmp-long v0, v15, v5

    if-nez v0, :cond_3

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    cmp-long v0, v13, v5

    if-nez v0, :cond_3

    move v3, v4

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;-><init>(JJJ)V

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-direct {v2, v3, v4, v0}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;-><init>(ZZLorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/eclipse/core/runtime/CoreException;

    const-string v3, "An error occurred computing a hash code"

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/nd/java/Package;->createStatus(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileFingerprint [time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->time:J

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->hash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
