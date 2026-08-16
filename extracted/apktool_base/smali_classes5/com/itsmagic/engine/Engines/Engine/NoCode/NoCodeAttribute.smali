.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;
.source "SourceFile"


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public visible:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;-><init>()V

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    const-string v0, "Attribute"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Attribute"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->r(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->b()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->e()V

    return-object v0
.end method
