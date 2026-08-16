.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f0(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$n",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->textureFile:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;->I0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;->a()V

    :cond_0
    return-void
.end method
