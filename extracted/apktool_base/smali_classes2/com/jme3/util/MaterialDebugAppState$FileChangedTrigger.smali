.class Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/MaterialDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileChangedTrigger"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field fileLastM:Ljava/lang/Long;

.field fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/jme3/util/MaterialDebugAppState;


# direct methods
.method public constructor <init>(Lcom/jme3/util/MaterialDebugAppState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-static {v0}, Lcom/jme3/util/MaterialDebugAppState;->access$000(Lcom/jme3/util/MaterialDebugAppState;)Lcom/jme3/asset/AssetManager;

    move-result-object v0

    new-instance v1, Lcom/jme3/asset/AssetKey;

    iget-object v2, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->locateAsset(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jme3/asset/plugins/UrlAssetInfo;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->fileLastM:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    const-class v1, Lcom/jme3/util/MaterialDebugAppState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public shouldFire()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->fileLastM:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->fileLastM:Ljava/lang/Long;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public triggerHashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
