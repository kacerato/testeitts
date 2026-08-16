.class public Lx8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "context"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/_EDITOR"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pv.config"

    invoke-static {p0, v1, p1}, LX7/a;->B(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectName",
            "projectVersion",
            "context"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;-><init>()V

    :cond_1
    sget-object v0, LW7/b;->f:LC8/a;

    invoke-virtual {v0, p2}, LC8/a;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionCode:I

    invoke-virtual {v0, p2}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->m()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->lastOpen:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->c()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/_EDITOR"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pv.config"

    invoke-static {p0, p2, p1}, LX7/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    .locals 1

    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;-><init>()V

    iput-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    :cond_0
    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    return-object v0
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "projectName",
            "context"
        }
    .end annotation

    iput-object p1, p0, Lx8/c;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lx8/c;->c(Ljava/lang/String;Landroid/content/Context;)Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    move-result-object p1

    iput-object p1, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lx8/c;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lx8/c;->d(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;-><init>()V

    iput-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    :cond_0
    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    sget-object v1, LW7/b;->f:LC8/a;

    invoke-virtual {v1, p1}, LC8/a;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionCode:I

    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-virtual {v1, p1}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->lastOpen:Ljava/lang/String;

    iget-object v0, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->c()Ljava/lang/String;

    iget-object v0, p0, Lx8/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lx8/c;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-static {v0, v1, p1}, Lx8/c;->e(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;Landroid/content/Context;)V

    return-void
.end method
