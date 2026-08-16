.class public interface abstract Lcom/android/tools/r8/ProgramResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ProgramResource$ByteResource;,
        Lcom/android/tools/r8/ProgramResource$FileResource;,
        Lcom/android/tools/r8/ProgramResource$Kind;
    }
.end annotation


# direct methods
.method public static fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/origin/Origin;",
            "Lcom/android/tools/r8/ProgramResource$Kind;",
            "[B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/ProgramResource;"
        }
    .end annotation

    new-instance v6, Lcom/android/tools/r8/ProgramResource$ByteResource;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ProgramResource$ByteResource;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;Lcom/android/tools/r8/C2;)V

    return-object v6
.end method

.method public static fromFile(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)Lcom/android/tools/r8/ProgramResource;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/ProgramResource$FileResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/ProgramResource$FileResource;-><init>(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;Lcom/android/tools/r8/D2;)V

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

.method public getBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Uo0;->a(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    invoke-interface {p0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getClassDescriptors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKind()Lcom/android/tools/r8/ProgramResource$Kind;
.end method
