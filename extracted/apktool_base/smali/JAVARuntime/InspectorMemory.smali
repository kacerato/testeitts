.class public LJAVARuntime/InspectorMemory;
.super LIc/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Platform"
    }
.end annotation


# instance fields
.field public transient dataBase:Ljava/util/Map;
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LIc/m;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public load(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "json"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LJAVARuntime/InspectorMemory;->dataBase:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
