.class public Lr5/c;
.super Lq5/a;
.source "SourceFile"


# instance fields
.field public final g:Lp5/c$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lp5/c$f;->APK:Lp5/c$f;

    invoke-direct {p0, v0}, Lr5/c;-><init>(Lp5/c$f;)V

    return-void
.end method

.method public constructor <init>(Lp5/c$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exportType"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lq5/a;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lp5/c$f;->APK:Lp5/c$f;

    :cond_0
    iput-object p1, p0, Lr5/c;->g:Lp5/c$f;

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lq5/a;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v3, v1, Lr5/c;->g:Lp5/c$f;

    sget-object v4, Lp5/c$f;->AAB:Lp5/c$f;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->buildType:I

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b:Ljava/lang/String;

    :try_start_0
    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionCode:Ljava/lang/String;

    invoke-static {v0, v6}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v3, v0

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v3, v7

    iget-object v7, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->e(Z)V

    iget-object v7, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->f(Z)V

    iget-object v7, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionCode:Ljava/lang/String;

    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionName:Ljava/lang/String;

    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->offlinePackageId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls5/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->offlinePackageId:Ljava/lang/String;

    :cond_2
    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v3, v1, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;Landroid/content/Context;)V

    iget-object v0, v1, Lr5/c;->g:Lp5/c$f;

    if-ne v0, v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lr5/c;->i()Ljava/io/File;

    move-result-object v12

    new-instance v6, Lu8/b;

    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    iget-object v8, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->appName:Ljava/lang/String;

    iget-object v9, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->offlinePackageId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->e()Z

    move-result v10

    iget-object v0, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget v11, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->buildType:I

    iget-object v13, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keystorePassowrd:Ljava/lang/String;

    iget-object v14, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keystoreAlias:Ljava/lang/String;

    iget-object v15, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keystoreAliasPassword:Ljava/lang/String;

    new-instance v0, Lr5/c$a;

    invoke-direct {v0, v1, v5}, Lr5/c$a;-><init>(Lr5/c;Z)V

    move-object/from16 v16, v0

    invoke-direct/range {v6 .. v16}, Lu8/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lq5/a;->f()V

    return-object v2
.end method

.method public final i()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lr5/c;->g:Lp5/c$f;

    sget-object v1, Lp5/c$f;->AAB:Lp5/c$f;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
