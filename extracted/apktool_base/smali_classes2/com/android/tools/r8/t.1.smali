.class public final Lcom/android/tools/r8/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataDirectoryResource;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/zip/ZipFile;

.field public final b:Ljava/util/zip/ZipEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/t;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/t;->a:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lcom/android/tools/r8/t;->b:Ljava/util/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/t;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iget-object v1, p0, Lcom/android/tools/r8/t;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v3, p0, Lcom/android/tools/r8/t;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    return-object v0
.end method
