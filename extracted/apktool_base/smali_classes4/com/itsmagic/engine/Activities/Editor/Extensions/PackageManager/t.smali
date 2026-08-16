.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->i(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stage",
            "current",
            "total"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$e;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_PROGRESS_UPLOADING_PROJECT_FILES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_PROGRESS_AUTHENTICATING:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_WARNING_TITLE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$d;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$d;-><init>()V

    invoke-static {v0, p0, v1}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
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
            "projectRootPath",
            "defaultName",
            "initialSelectedPaths",
            "isTemplate",
            "projectVersion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_TOKEN_MISSING:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V

    const/4 p1, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->P1(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectRootPath",
            "defaultName",
            "projectVersion"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectRootPath",
            "defaultName",
            "projectVersion"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_TOKEN_MISSING:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->e()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$a;

    invoke-direct {v0, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$a;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V

    const/4 p2, 0x0

    invoke-static {p2, p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->P1(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_WARNING_TITLE:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_ERROR_GENERIC:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectRootPath",
            "defaultName",
            "initialSelectedPaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "projectRootPath",
            "projectVersion",
            "data"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->githubToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;-><init>()V

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;->a:Ljava/lang/String;

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;->b:Ljava/lang/String;

    iget-object p0, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryUrl:Ljava/lang/String;

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;->e:Ljava/lang/String;

    iget-object p0, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryOwner:Ljava/lang/String;

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;->c:Ljava/lang/String;

    iget-object p0, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryName:Ljava/lang/String;

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;->d:Ljava/lang/String;

    iput-object p2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_PROGRESS_AUTHENTICATING:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;

    invoke-direct {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$u;)V

    invoke-static {p0, p1}, LZ6/g;->s1(Ljava/lang/String;LZ6/g$c;)V

    return-void
.end method
