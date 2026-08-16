.class public Ly3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/a$b;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Ly3/a;->k:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ly3/a$a;

    invoke-direct {v0}, Ly3/a$a;-><init>()V

    const-string v1, "io.cp"

    const-string v2, "Copies a project file or folder to a new project path."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "src"

    const-string v1, "Project-relative source file or folder path."

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "dst"

    const-string v1, "Project-relative destination file or folder path."

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

    sget-object v0, Ly3/a;->k:Lcom/google/gson/Gson;

    return-object v0
.end method
