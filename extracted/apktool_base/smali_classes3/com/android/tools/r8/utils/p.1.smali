.class public final Lcom/android/tools/r8/utils/p;
.super Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/android/tools/r8/ClassFileConsumer;

.field public final synthetic e:Lcom/android/tools/r8/utils/r;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/r;Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/ClassFileConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/p;->e:Lcom/android/tools/r8/utils/r;

    iput-object p3, p0, Lcom/android/tools/r8/utils/p;->d:Lcom/android/tools/r8/ClassFileConsumer;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/ClassFileConsumer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/p;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/utils/q;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/utils/p;->e:Lcom/android/tools/r8/utils/r;

    iget-object v0, v0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    iget-object v1, p1, Lcom/android/tools/r8/utils/q;->b:[B

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/utils/q;->a:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/utils/i$a;->a([BLcom/android/tools/r8/origin/Origin;Ljava/util/Set;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method

.method public final accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/ByteDataView;->copyByteData()[B

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/android/tools/r8/utils/p;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/utils/q;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/utils/q;-><init>(Ljava/util/Set;[B)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    invoke-super {p0, p1}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object p1, p0, Lcom/android/tools/r8/utils/p;->e:Lcom/android/tools/r8/utils/r;

    iget-boolean v0, p1, Lcom/android/tools/r8/utils/r;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/tools/r8/utils/r;->b:Z

    iget-object p1, p0, Lcom/android/tools/r8/utils/p;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/utils/F;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/F;-><init>(Lcom/android/tools/r8/utils/p;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/utils/p;->c:Ljava/util/ArrayList;

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/utils/p;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/p;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    :cond_1
    return-void
.end method

.method public final getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/p;->d:Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramConsumer;->getDataResourceConsumer()Lcom/android/tools/r8/DataResourceConsumer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/tools/r8/utils/o;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/utils/o;-><init>(Lcom/android/tools/r8/utils/p;Lcom/android/tools/r8/DataResourceConsumer;)V

    return-object v1
.end method
