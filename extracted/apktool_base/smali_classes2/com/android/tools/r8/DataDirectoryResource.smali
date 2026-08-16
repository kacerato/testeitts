.class public interface abstract Lcom/android/tools/r8/DataDirectoryResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResource;


# direct methods
.method public static fromFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Lcom/android/tools/r8/DataDirectoryResource;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/r;

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

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/r;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataDirectoryResource;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/s;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/s;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    return-object v0
.end method

.method public static fromZip(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lcom/android/tools/r8/DataDirectoryResource;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/t;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/t;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method
