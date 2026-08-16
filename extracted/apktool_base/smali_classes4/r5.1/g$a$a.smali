.class public Lr5/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/g$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr5/g$a;


# direct methods
.method public constructor <init>(Lr5/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lr5/g$a$a;->a:Lr5/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq7/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingBar"
        }
    .end annotation

    iget-object v0, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v0, v0, Lr5/g$a;->b:Lr5/g;

    iget-object v0, v0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->buildType:I

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v0, v0, Lr5/g$a;->b:Lr5/g;

    iget-object v0, v0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionCode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v4, v4, Lr5/g$a;->b:Lr5/g;

    iget-object v4, v4, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->e(Z)V

    iget-object v2, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v2, v2, Lr5/g$a;->b:Lr5/g;

    iget-object v2, v2, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->f(Z)V

    iget-object v1, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v1, v1, Lr5/g$a;->b:Lr5/g;

    iget-object v1, v1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionCode:Ljava/lang/String;

    iget-object v0, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v0, v0, Lr5/g$a;->b:Lr5/g;

    iget-object v0, v0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->versionName:Ljava/lang/String;

    iget-object v0, p0, Lr5/g$a$a;->a:Lr5/g$a;

    iget-object v0, v0, Lr5/g$a;->b:Lr5/g;

    iget-object v1, v0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v0, v0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;Landroid/content/Context;)V

    new-instance v0, Lr5/g$a$a$a;

    invoke-direct {v0, p0, p1}, Lr5/g$a$a$a;-><init>(Lr5/g$a$a;Lq7/a;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->j(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method
