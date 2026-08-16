.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;->a()V

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
