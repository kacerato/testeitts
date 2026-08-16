.class public Lr5/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/e$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr5/e$a;


# direct methods
.method public constructor <init>(Lr5/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lr5/e$a$a;->a:Lr5/e$a;

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

    iget-object v0, p0, Lr5/e$a$a;->a:Lr5/e$a;

    iget-object v0, v0, Lr5/e$a;->c:Lr5/e;

    iget-object v0, v0, Lq5/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lr5/e$a$a;->a:Lr5/e$a;

    iget-object v0, v0, Lr5/e$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lr5/e$a$a;->a:Lr5/e$a;

    iget-object v0, v0, Lr5/e$a;->c:Lr5/e;

    iget-object v0, v0, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr5/e$a$a;->a:Lr5/e$a;

    iget-object p1, p1, Lr5/e$a;->c:Lr5/e;

    iget-object p1, p1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr5/e$a$a;->a:Lr5/e$a;

    iget-object p1, p1, Lr5/e$a;->c:Lr5/e;

    iget-object p1, p1, Lq5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
