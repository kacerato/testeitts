.class public Le6/E$G;
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

.field public final synthetic c:I

.field public final synthetic d:Lga/H;

.field public final synthetic e:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;IIILga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inputIndex",
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

    iput-object p1, p0, Le6/E$G;->e:Le6/E;

    iput p2, p0, Le6/E$G;->a:I

    iput p3, p0, Le6/E$G;->b:I

    iput p4, p0, Le6/E$G;->c:I

    iput-object p5, p0, Le6/E$G;->d:Lga/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, Le6/E$G;->e:Le6/E;

    iget v1, p0, Le6/E$G;->a:I

    invoke-static {v0, v1}, Le6/E;->C(Le6/E;I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iget v1, p0, Le6/E$G;->b:I

    const-string v2, ""

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v1

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 6
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
    iget-object v0, p0, Le6/E$G;->e:Le6/E;

    iget v1, p0, Le6/E$G;->a:I

    invoke-static {v0, v1}, Le6/E;->C(Le6/E;I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iget v4, p0, Le6/E$G;->b:I

    if-nez v4, :cond_1

    iget v2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget v3, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_3
    invoke-virtual {v0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    iget-object p1, p0, Le6/E$G;->e:Le6/E;

    invoke-static {p1}, Le6/E;->r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    iget v1, p0, Le6/E$G;->c:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->u(IFFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    iget-object p1, p0, Le6/E$G;->e:Le6/E;

    iget v0, p0, Le6/E$G;->a:I

    iget-object v1, p0, Le6/E$G;->d:Lga/H;

    invoke-static {p1, v0, v1}, Le6/E;->s(Le6/E;ILga/H;)V

    iget-object p1, p0, Le6/E$G;->e:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
