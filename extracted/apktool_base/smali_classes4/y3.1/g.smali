.class public Ly3/g;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Ly3/g$a;

    invoke-direct {v0}, Ly3/g$a;-><init>()V

    const-string v1, "io.rt"

    const-string v2, "Reads text from a project file."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "Project-relative file path to read."

    const/4 v1, 0x1

    const-string v2, "path"

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->B(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->JAVA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LUA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LEVEL_EDITION:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->EXPLAIN:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->NORMAL:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->A([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    return-void
.end method
