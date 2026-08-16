.class public final Lcom/android/tools/r8/internal/wo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/startup/StartupProfileProvider;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/wo0;->a:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wo0;->b:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wo0;->a:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public final getStartupProfile(Lcom/android/tools/r8/startup/StartupProfileBuilder;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/Ru0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wo0;->a:Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ru0;-><init>(Ljava/nio/file/Path;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/wo0;->b:Ljava/util/function/Consumer;

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/startup/StartupProfileBuilder;->addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
