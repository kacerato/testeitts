.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getSizeEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->k(I)V

    :cond_0
    return-void
.end method
