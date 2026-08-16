.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;
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
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;->value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    :goto_0
    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

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

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;->value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;->a()V

    :cond_0
    return-void
.end method
