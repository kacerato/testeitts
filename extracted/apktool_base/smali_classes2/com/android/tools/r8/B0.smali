.class public final synthetic Lcom/android/tools/r8/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/B0;->a:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final open()Ljava/util/zip/ZipFile;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/B0;->a:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->b(Ljava/nio/file/Path;)Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method
