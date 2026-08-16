.class public Le6/E$d;
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
.field public final synthetic a:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Le6/E$d;->a:Le6/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Le6/E$d;->a:Le6/E;

    invoke-static {v1}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->inspectorAttributeName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Le6/E$d;->a:Le6/E;

    invoke-static {v1}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->inspectorAttributeName:Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Le6/E$d;->a:Le6/E;

    invoke-static {v0}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->x0(Ljava/lang/String;)V

    return-void
.end method
