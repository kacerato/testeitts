.class public Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;
.super Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceConsumer;
.implements Lcom/android/tools/r8/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/DexFilePerClassFileConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryConsumer"
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final c:Lcom/android/tools/r8/internal/Us;

.field protected final consumeDataResouces:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/Us;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Us;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    .line 6
    iput-boolean p3, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->consumeDataResouces:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->d:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeResources(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/Resource;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/pe;

    sget-object v1, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/ProgramResource;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pe;->close()V

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method


# virtual methods
.method public accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Us;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Us;->a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/ByteDataView;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    invoke-static {p1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/tools/r8/internal/Us;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public internalGetOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    return-object v0
.end method
