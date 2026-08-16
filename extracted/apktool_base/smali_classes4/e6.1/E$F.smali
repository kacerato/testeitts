.class public Le6/E$F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E;->a1(Landroid/view/View;ILga/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lga/H;

.field public final synthetic d:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;IILga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$actualIndex",
            "val$inputIndex",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/E$F;->d:Le6/E;

    iput p2, p0, Le6/E$F;->a:I

    iput p3, p0, Le6/E$F;->b:I

    iput-object p4, p0, Le6/E$F;->c:Lga/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2

    iget-object v0, p0, Le6/E$F;->d:Le6/E;

    invoke-static {v0}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    iget v1, p0, Le6/E$F;->a:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    iget-object v1, p0, Le6/E$F;->d:Le6/E;

    invoke-static {v1, v0}, Le6/E;->B(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Le6/E$F;->d:Le6/E;

    invoke-static {v0}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object v0

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 1

    const-string v0, " (Object)"

    return-object v0
.end method

.method public getParent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le6/E$F;->d:Le6/E;

    invoke-static {v0, p1}, Le6/E;->A(Le6/E;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le6/E$F;->d:Le6/E;

    invoke-static {v1}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v1

    iget v2, p0, Le6/E$F;->a:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le6/E$F;->d:Le6/E;

    invoke-static {p1}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    iget v0, p0, Le6/E$F;->a:I

    const-string v1, ""

    const-string v2, "owner"

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    :goto_0
    iget-object p1, p0, Le6/E$F;->d:Le6/E;

    iget v0, p0, Le6/E$F;->b:I

    iget-object v1, p0, Le6/E$F;->c:Lga/H;

    invoke-static {p1, v0, v1}, Le6/E;->s(Le6/E;ILga/H;)V

    iget-object p1, p0, Le6/E$F;->d:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
