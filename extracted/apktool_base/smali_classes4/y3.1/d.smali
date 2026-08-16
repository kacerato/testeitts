.class public Ly3/d;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/d$b;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Ly3/d;->k:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Ly3/d$a;

    invoke-direct {v0}, Ly3/d$a;-><init>()V

    const-string v1, "io.find"

    const-string v2, "Searches files by name inside the loaded project and returns their full paths. Supports wildcard patterns in name, like *.java."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "File name to search for. Supports wildcard patterns like *.java and extension-only searches like .java."

    const/4 v1, 0x1

    const-string v2, "name"

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "matchMode"

    const-string v1, "Search mode: equals or contains. Defaults to equals."

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "caseInsensitive"

    const-string v1, "true or false. Defaults to true."

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

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

.method public static synthetic C(Ljava/lang/String;)Ly3/d$b;
    .locals 0

    invoke-static {p0}, Ly3/d;->D(Ljava/lang/String;)Ly3/d$b;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;)Ly3/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ly3/d$b;

    invoke-direct {v1, v0}, Ly3/d$b;-><init>(Ly3/d$a;)V

    iput-object p0, v1, Ly3/d$b;->a:Ljava/lang/String;

    return-object v1

    :cond_1
    sget-object v1, Ly3/d;->k:Lcom/google/gson/Gson;

    const-class v2, Ly3/d$b;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly3/d$b;

    if-nez p0, :cond_2

    new-instance p0, Ly3/d$b;

    invoke-direct {p0, v0}, Ly3/d$b;-><init>(Ly3/d$a;)V

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Ly3/d$b;

    invoke-direct {p0, v0}, Ly3/d$b;-><init>(Ly3/d$a;)V

    return-object p0
.end method
