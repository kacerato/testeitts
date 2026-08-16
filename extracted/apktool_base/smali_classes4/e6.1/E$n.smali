.class public Le6/E$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;

.field public final synthetic b:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/E$n;->b:Le6/E;

    iput-object p2, p0, Le6/E$n;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Le6/E$n;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;->animationFile:Ljava/lang/String;

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

    iget-object v0, p0, Le6/E$n;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Le6/E$n;->b:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    :cond_0
    return-void
.end method
