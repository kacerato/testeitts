.class public final Lcom/android/tools/r8/utils/n;
.super Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public c:Ljava/util/TreeMap;

.field public final synthetic d:Lcom/android/tools/r8/DexFilePerClassFileConsumer;

.field public final synthetic e:Lcom/android/tools/r8/utils/r;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/r;Lcom/android/tools/r8/DexFilePerClassFileConsumer;Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/n;->e:Lcom/android/tools/r8/utils/r;

    iput-object p3, p0, Lcom/android/tools/r8/utils/n;->d:Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/DexFilePerClassFileConsumer;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/n;->c:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/utils/q;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/utils/n;->e:Lcom/android/tools/r8/utils/r;

    iget-object v0, v0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    iget-object v1, p2, Lcom/android/tools/r8/utils/q;->b:[B

    iget-object p2, p2, Lcom/android/tools/r8/utils/q;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v2, v3, v1, p2}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p2

    iget-object v1, v0, Lcom/android/tools/r8/utils/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/tools/r8/utils/i$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;Ljava/util/Set;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p2

    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lcom/android/tools/r8/utils/n;->c:Ljava/util/TreeMap;

    new-instance v0, Lcom/android/tools/r8/utils/q;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/utils/q;-><init>(Ljava/util/Set;[B)V

    invoke-virtual {p4, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-super {p0, p1}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object p1, p0, Lcom/android/tools/r8/utils/n;->e:Lcom/android/tools/r8/utils/r;

    iget-boolean v0, p1, Lcom/android/tools/r8/utils/r;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/tools/r8/utils/r;->b:Z

    iget-object p1, p0, Lcom/android/tools/r8/utils/n;->c:Ljava/util/TreeMap;

    new-instance v0, Lcom/android/tools/r8/utils/E;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/E;-><init>(Lcom/android/tools/r8/utils/n;)V

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/utils/n;->c:Ljava/util/TreeMap;

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/utils/n;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/n;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    :cond_1
    return-void
.end method

.method public final getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/n;->d:Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/tools/r8/utils/m;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/utils/m;-><init>(Lcom/android/tools/r8/utils/n;Lcom/android/tools/r8/DataResourceConsumer;)V

    return-object v1
.end method
