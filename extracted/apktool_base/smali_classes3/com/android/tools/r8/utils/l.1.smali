.class public final Lcom/android/tools/r8/utils/l;
.super Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public c:Lcom/android/tools/r8/internal/DG;

.field public final synthetic d:Lcom/android/tools/r8/DexIndexedConsumer;

.field public final synthetic e:Lcom/android/tools/r8/utils/r;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/r;Lcom/android/tools/r8/DexIndexedConsumer;Lcom/android/tools/r8/DexIndexedConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/l;->e:Lcom/android/tools/r8/utils/r;

    iput-object p3, p0, Lcom/android/tools/r8/utils/l;->d:Lcom/android/tools/r8/DexIndexedConsumer;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;)V

    new-instance p1, Lcom/android/tools/r8/internal/DG;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/DG;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/l;->c:Lcom/android/tools/r8/internal/DG;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Lcom/android/tools/r8/utils/q;)V
    .locals 3

    iget-object p1, p0, Lcom/android/tools/r8/utils/l;->e:Lcom/android/tools/r8/utils/r;

    iget-object p1, p1, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    iget-object v0, p2, Lcom/android/tools/r8/utils/q;->b:[B

    iget-object p2, p2, Lcom/android/tools/r8/utils/q;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v1, v2, v0, p2}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/tools/r8/ProgramResource;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->accept(ILcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p2

    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lcom/android/tools/r8/utils/l;->c:Lcom/android/tools/r8/internal/DG;

    new-instance v0, Lcom/android/tools/r8/utils/q;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/utils/q;-><init>(Ljava/util/Set;[B)V

    invoke-virtual {p4, p1, v0}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/DexIndexedConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object p1, p0, Lcom/android/tools/r8/utils/l;->e:Lcom/android/tools/r8/utils/r;

    iget-boolean v0, p1, Lcom/android/tools/r8/utils/r;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/tools/r8/utils/r;->b:Z

    iget-object p1, p0, Lcom/android/tools/r8/utils/l;->c:Lcom/android/tools/r8/internal/DG;

    new-instance v0, Lcom/android/tools/r8/utils/D;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/D;-><init>(Lcom/android/tools/r8/utils/l;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/utils/l;->c:Lcom/android/tools/r8/internal/DG;

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/utils/l;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/l;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    :cond_1
    return-void
.end method

.method public final getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/l;->d:Lcom/android/tools/r8/DexIndexedConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/tools/r8/utils/k;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/utils/k;-><init>(Lcom/android/tools/r8/utils/l;Lcom/android/tools/r8/DataResourceConsumer;)V

    return-object v1
.end method
