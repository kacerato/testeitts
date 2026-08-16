.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "nfckhj32@#35923irv#$#2#%&6C@3!357ccfk90c2fic&%46"


# instance fields
.field public masterParentDuplicableID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public masterParentUniqueID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public objectDuplicableID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public objectUniqueID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public objectsDuplicableIDs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->uid:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectsDuplicableIDs:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->masterParentUniqueID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectUniqueID:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->masterParentDuplicableID:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectDuplicableID:Ljava/lang/String;

    .line 8
    const-string v0, "nfckhj32@#35923irv#$#2#%&6C@3!357ccfk90c2fic&%46"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->uid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectsDuplicableIDs",
            "masterParentUniqueID",
            "objectUniqueID",
            "masterParentDuplicableID",
            "objectDuplicableID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->uid:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectsDuplicableIDs:Ljava/util/List;

    .line 13
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->masterParentUniqueID:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectUniqueID:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->masterParentDuplicableID:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectDuplicableID:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->uid:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "nfckhj32@#35923irv#$#2#%&6C@3!357ccfk90c2fic&%46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
