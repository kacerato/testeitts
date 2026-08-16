.class public Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private lastResult:Lorg/eclipse/jdt/internal/core/nd/NdNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private final searchFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private writeCounter:J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->searchFunction:Ljava/util/function/Supplier;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->writeCounter:J

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/util/function/Supplier;Lorg/eclipse/jdt/internal/core/nd/NdNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "Ljava/util/function/Supplier<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    .line 7
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->searchFunction:Ljava/util/function/Supplier;

    .line 8
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->lastResult:Lorg/eclipse/jdt/internal/core/nd/NdNode;

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getWriteNumber()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->writeCounter:J

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->get()Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/eclipse/jdt/internal/core/nd/NdNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getWriteNumber()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->writeCounter:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->lastResult:Lorg/eclipse/jdt/internal/core/nd/NdNode;

    return-object v0

    .line 5
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->searchFunction:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    .line 6
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->writeCounter:J

    .line 7
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->lastResult:Lorg/eclipse/jdt/internal/core/nd/NdNode;

    return-object v2
.end method

.method public getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    return-object v0
.end method

.method public lock()Lorg/eclipse/jdt/internal/core/nd/IReader;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v0

    return-object v0
.end method
