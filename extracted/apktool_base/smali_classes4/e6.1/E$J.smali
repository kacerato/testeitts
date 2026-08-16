.class public Le6/E$J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


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

    iput-object p1, p0, Le6/E$J;->d:Le6/E;

    iput p2, p0, Le6/E$J;->a:I

    iput p3, p0, Le6/E$J;->b:I

    iput-object p4, p0, Le6/E$J;->c:Lga/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, Le6/E$J;->d:Le6/E;

    invoke-static {v0}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    iget v1, p0, Le6/E$J;->a:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Le6/E$J;->d:Le6/E;

    invoke-static {v0}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    iget v1, p0, Le6/E$J;->a:I

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->i(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    iget-object p1, p0, Le6/E$J;->d:Le6/E;

    iget v0, p0, Le6/E$J;->b:I

    iget-object v1, p0, Le6/E$J;->c:Lga/H;

    invoke-static {p1, v0, v1}, Le6/E;->s(Le6/E;ILga/H;)V

    iget-object p1, p0, Le6/E$J;->d:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
