.class public final synthetic Lcom/android/tools/r8/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ArchiveProgramResourceProvider$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ArchiveProgramResourceProvider;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ArchiveProgramResourceProvider;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/z0;->a:Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    iput-object p2, p0, Lcom/android/tools/r8/z0;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/z0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/ArchiveEntryOrigin;Ljava/io/InputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/z0;->a:Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    iget-object v1, p0, Lcom/android/tools/r8/z0;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/z0;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->c(Lcom/android/tools/r8/ArchiveProgramResourceProvider;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/origin/ArchiveEntryOrigin;Ljava/io/InputStream;)V

    return-void
.end method
