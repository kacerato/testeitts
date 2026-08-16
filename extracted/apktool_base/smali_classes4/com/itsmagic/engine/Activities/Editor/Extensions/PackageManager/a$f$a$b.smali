.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$progress",
            "val$etaInMilliSeconds",
            "val$downloadedBytesPerSecond"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->b:I

    iput-wide p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->c:J

    iput-wide p5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->b:I

    iget-wide v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->c:J

    iget-wide v7, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f$a$b;->d:J

    invoke-interface/range {v3 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;->c(IJJ)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
