.class public LY3/b;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CloudSync"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->A()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->y()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    move-result-object v2

    new-instance v3, LY3/b$a;

    invoke-direct {v3, p0}, LY3/b$a;-><init>(LY3/b;)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method
