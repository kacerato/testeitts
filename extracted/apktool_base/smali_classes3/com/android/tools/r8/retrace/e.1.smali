.class public final Lcom/android/tools/r8/retrace/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/ProguardMapProducer;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/retrace/e;->a:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/e;->a:Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/e;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final isFileBacked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
