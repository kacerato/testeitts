.class Lcom/threed/jpct/SimpleVector$CacheableSimpleVector;
.super Lcom/threed/jpct/SimpleVector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/SimpleVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheableSimpleVector"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->access$0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/threed/jpct/Config;->vectorCacheSize:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->access$0()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->access$0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
