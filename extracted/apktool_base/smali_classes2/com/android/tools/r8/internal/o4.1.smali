.class public final Lcom/android/tools/r8/internal/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileConsumer;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/o4;->a:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method

.method public final getHumanReadableArtProfileConsumer()Lcom/android/tools/r8/TextOutputStream;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/Su0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/o4;->a:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Su0;-><init>(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
