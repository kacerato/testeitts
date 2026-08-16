.class public Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;
.super Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ClassFileConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryConsumer"
.end annotation


# instance fields
.field private final c:Lcom/android/tools/r8/internal/Us;

.field protected final consumeDataResouces:Z


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/ClassFileConsumer;)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/Us;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Us;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    .line 6
    iput-boolean p3, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->consumeDataResouces:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;-><init>(Ljava/nio/file/Path;Lcom/android/tools/r8/ClassFileConsumer;Z)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Us;->a(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataDirectoryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Us;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public accept(Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Us;->a(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->consumeDataResouces:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public internalGetOutputPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;->c:Lcom/android/tools/r8/internal/Us;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Us;->a:Ljava/nio/file/Path;

    return-object v0
.end method
