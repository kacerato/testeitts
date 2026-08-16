.class public Lp5/b$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b$r;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp5/b$r;


# direct methods
.method public constructor <init>(Lp5/b$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$r$a;->a:Lp5/b$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljd/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfile"
        }
    .end annotation

    iget-object v0, p0, Lp5/b$r$a;->a:Lp5/b$r;

    iget-object v0, v0, Lp5/b$r;->c:Lp5/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lp5/b$r$a;->a:Lp5/b$r;

    iget-object v0, v0, Lp5/b$r;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lp5/b$r$a;->a:Lp5/b$r;

    iget-object v0, v0, Lp5/b$r;->c:Lp5/b;

    iget-object v0, v0, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp5/b$r$a;->a:Lp5/b$r;

    iget-object p1, p1, Lp5/b$r;->c:Lp5/b;

    iget-object p1, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lp5/b$r$a;->a:Lp5/b$r;

    iget-object p1, p1, Lp5/b$r;->c:Lp5/b;

    iget-object p1, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lp5/b$r$a;->a:Lp5/b$r;

    iget-object p1, p1, Lp5/b$r;->c:Lp5/b;

    invoke-static {p1}, Lp5/b;->p1(Lp5/b;)V

    :cond_2
    return-void
.end method
