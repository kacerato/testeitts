.class public Ly3/i;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/i$b;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Ly3/i;->k:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ly3/i$a;

    invoke-direct {v0}, Ly3/i$a;-><init>()V

    const-string v1, "io.wt"

    const-string v2, "Writes text to a project file."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "path"

    const-string v1, "Project-relative file path to write."

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "text"

    const-string v1, "Text content to write to the file."

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->JAVA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LUA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LEVEL_EDITION:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->A([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    return-void
.end method

.method public static synthetic C()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Ly3/i;->k:Lcom/google/gson/Gson;

    return-object v0
.end method
