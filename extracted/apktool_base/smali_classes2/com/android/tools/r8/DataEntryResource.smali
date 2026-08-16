.class public interface abstract Lcom/android/tools/r8/DataEntryResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/DataEntryResource$a;
    }
.end annotation


# direct methods
.method public static fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/DataEntryResource$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/DataEntryResource$a;-><init>([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    return-object v0
.end method

.method public static fromFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Lcom/android/tools/r8/DataEntryResource;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/u;

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/u;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public static varargs fromString(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;[Ljava/lang/String;)Lcom/android/tools/r8/DataEntryResource;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/tools/r8/DataEntryResource$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lcom/android/tools/r8/DataEntryResource$a;-><init>([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    return-object p2
.end method

.method public static fromZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/android/tools/r8/DataEntryResource;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/w;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/w;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method


# virtual methods
.method public abstract getByteStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method

.method public withName(Ljava/lang/String;)Lcom/android/tools/r8/DataEntryResource;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/v;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/v;-><init>(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;)V

    return-object v0
.end method
