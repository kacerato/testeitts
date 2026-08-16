.class public Lp5/b$o;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp5/b;


# direct methods
.method public constructor <init>(Lp5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp5/b$o;->b:Lp5/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lp5/b$o;->b:Lp5/b;

    iget-object p1, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp5/b$o;->b:Lp5/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lp5/b;->q1(Lp5/b;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lp5/b$o;->b:Lp5/b;

    invoke-static {p1}, Lp5/b;->r1(Lp5/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lp5/b$o;->b:Lp5/b;

    iget-object p1, p1, Lp5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b:Ljava/lang/String;

    new-instance p1, Lp5/b$o$a;

    invoke-direct {p1, p0}, Lp5/b$o$a;-><init>(Lp5/b$o;)V

    invoke-static {v0, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Please select the world zero"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
