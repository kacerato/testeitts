.class public Lq5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

.field public e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

.field public f:Lq5/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lq5/a;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lq5/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->c(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    move-result-object v0

    iput-object v0, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;-><init>()V

    iput-object v0, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    :cond_0
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override this method at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v1, p0, Lq5/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lq5/a;->a()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lq5/a;->f:Lq5/a$a;

    invoke-interface {v0}, Lq5/a$a;->b()V

    return-void
.end method

.method public g(Lq5/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    iput-object p1, p0, Lq5/a;->f:Lq5/a$a;

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
