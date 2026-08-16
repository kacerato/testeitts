.class public Le6/E$H;
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

.field public final synthetic b:Lga/H;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lga/H;

.field public final synthetic f:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;ILga/H;IILga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inputIndex",
            "val$editorType",
            "val$compIndex",
            "val$actualIndex",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/E$H;->f:Le6/E;

    iput p2, p0, Le6/E$H;->a:I

    iput-object p3, p0, Le6/E$H;->b:Lga/H;

    iput p4, p0, Le6/E$H;->c:I

    iput p5, p0, Le6/E$H;->d:I

    iput-object p6, p0, Le6/E$H;->e:Lga/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, Le6/E$H;->f:Le6/E;

    iget v1, p0, Le6/E$H;->a:I

    iget-object v2, p0, Le6/E$H;->b:Lga/H;

    invoke-static {v0, v1, v2}, Le6/E;->t(Le6/E;ILga/H;)[F

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Le6/E$H;->c:I

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 8
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
    iget-object v0, p0, Le6/E$H;->f:Le6/E;

    iget v1, p0, Le6/E$H;->a:I

    iget-object v2, p0, Le6/E$H;->b:Lga/H;

    invoke-static {v0, v1, v2}, Le6/E;->t(Le6/E;ILga/H;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v0, v0, v6

    iget v7, p0, Le6/E$H;->c:I

    if-nez v7, :cond_1

    iget v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_1
    if-ne v7, v2, :cond_2

    iget v3, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_2
    if-ne v7, v4, :cond_3

    iget v5, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_3
    if-ne v7, v6, :cond_4

    iget v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_4
    iget-object p1, p0, Le6/E$H;->b:Lga/H;

    sget-object v2, Lga/H;->FLOAT2:Lga/H;

    if-ne p1, v2, :cond_5

    iget p1, p0, Le6/E$H;->d:I

    invoke-static {p1, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->m(IFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    if-ne p1, v2, :cond_6

    iget p1, p0, Le6/E$H;->d:I

    invoke-static {p1, v1, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->n(IFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget p1, p0, Le6/E$H;->d:I

    invoke-static {p1, v1, v3, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->o(IFFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Le6/E$H;->f:Le6/E;

    invoke-static {v0}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    iget-object p1, p0, Le6/E$H;->f:Le6/E;

    iget v0, p0, Le6/E$H;->a:I

    iget-object v1, p0, Le6/E$H;->e:Lga/H;

    invoke-static {p1, v0, v1}, Le6/E;->s(Le6/E;ILga/H;)V

    iget-object p1, p0, Le6/E$H;->f:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
