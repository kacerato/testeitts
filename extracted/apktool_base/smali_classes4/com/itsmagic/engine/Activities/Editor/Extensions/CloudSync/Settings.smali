.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public enableCloudSync:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sync",
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string p1, "Enable Cloud Sync"

    sget-object p3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p2, v1, p1, p3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    return v0
.end method

.method public c(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableCloudSync"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    return-void
.end method
