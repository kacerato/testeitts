.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient a:Ljava/lang/Object;

.field public booleanValue:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public listItemType:Lga/H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public listItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;",
            ">;"
        }
    .end annotation
.end field

.field public number:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public referenceJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lga/H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lga/H;->NUMBER:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    return-void
.end method

.method public static d()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    return-object v0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a(Lga/H;Lga/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newType",
            "newListItemType",
            "owner",
            "ownerComponent"
        }
    .end annotation

    invoke-virtual {p0, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->i(Lga/H;Lga/H;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    sget-object p2, Lga/H;->LIST:Lga/H;

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lga/m;->c(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;-><init>()V

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
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->i(Lga/H;Lga/H;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->b()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    move-result-object p1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->r(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {v0}, Lga/a;->h(Lga/H;)Lga/H;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    sget-object v1, Lga/H;->LIST:Lga/H;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    invoke-static {v0}, Lga/a;->i(Lga/H;)Lga/H;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    goto :goto_0

    :cond_4
    sget-object v0, Lga/H;->NUMBER:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "owner",
            "ownerComponent"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    sget-object v2, Lga/H;->LIST:Lga/H;

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lga/m;->a0(Ljava/lang/Object;)Lga/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lga/l;->d()Lga/H;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    :goto_0
    invoke-static {v0}, Lga/a;->i(Lga/H;)Lga/H;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lga/l;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;-><init>()V

    sget-object v3, Lga/H;->NUMBER:Lga/H;

    invoke-virtual {v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->i(Lga/H;Lga/H;)V

    invoke-virtual {v2, v1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    const-string v1, ""

    packed-switch p3, :pswitch_data_0

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {p3}, Lga/d;->n(Lga/H;)Z

    move-result p3

    if-eqz p3, :cond_4

    instance-of p3, p1, LJAVARuntime/Component;

    if-eqz p3, :cond_3

    move-object v0, p1

    check-cast v0, LJAVARuntime/Component;

    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->t(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :cond_4
    invoke-static {p1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    return-void

    :pswitch_0
    invoke-static {p1}, Lga/m;->d0(Ljava/lang/Object;)Lga/G;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_1
    invoke-static {p1}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_2
    invoke-static {p1}, Lga/m;->k0(Ljava/lang/Object;)Lcc/e;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_3
    invoke-static {p1}, Lga/m;->N(Ljava/lang/Object;)Lec/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-static {p1, p2}, Lga/m;->X(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-void

    :pswitch_5
    invoke-static {p1}, Lga/m;->T(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->p()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->p()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    return-void

    :pswitch_6
    invoke-static {p1}, Lga/m;->j0(Ljava/lang/Object;)Lub/p;

    move-result-object p1

    instance-of p2, p1, Lub/g;

    if-eqz p2, :cond_6

    check-cast p1, Lub/g;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    :goto_2
    return-void

    :pswitch_7
    invoke-static {p1}, Lga/m;->h0(Ljava/lang/Object;)LJAVARuntime/SoundFile;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    return-void

    :pswitch_8
    invoke-static {p1}, Lga/m;->r0(Ljava/lang/Object;)LJAVARuntime/WorldFile;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_8
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    return-void

    :pswitch_9
    invoke-static {p1}, Lga/m;->c0(Ljava/lang/Object;)LJAVARuntime/ObjectFile;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    return-void

    :pswitch_a
    invoke-static {p1}, Lga/m;->e0(Ljava/lang/Object;)LJAVARuntime/ProjectFile;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    return-void

    :pswitch_b
    invoke-static {p1}, Lga/m;->U(Ljava/lang/Object;)LJAVARuntime/File;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    return-void

    :pswitch_c
    invoke-static {p1}, Lga/m;->b0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v1

    :cond_c
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_d
    invoke-static {p1}, Lga/d;->A(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :pswitch_e
    invoke-static {p1}, Lga/m;->i0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_f
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p1, p2}, Lga/m;->R(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void

    :pswitch_10
    invoke-static {p1}, Lga/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p1

    invoke-virtual {p2, p3, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->j(FFFF)V

    return-void

    :pswitch_11
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {p1, p2}, Lga/m;->q0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void

    :pswitch_12
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1, p2}, Lga/m;->o0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :pswitch_13
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p1, p2}, Lga/m;->m0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void

    :pswitch_14
    invoke-static {p1}, Lga/m;->O(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    return-void

    :pswitch_15
    invoke-static {p1}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p1

    invoke-virtual {p1}, Lga/b;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-void

    :pswitch_16
    invoke-static {p1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Lga/H;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    invoke-static {v0}, Lga/a;->i(Lga/H;)Lga/H;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->g()Lga/H;

    move-result-object v1

    sget-object v2, Lga/H;->NUMBER:Lga/H;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->i(Lga/H;Lga/H;)V

    return-object v0
.end method

.method public i(Lga/H;Lga/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newType",
            "newListItemType"
        }
    .end annotation

    invoke-static {p1}, Lga/a;->h(Lga/H;)Lga/H;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    sget-object v0, Lga/H;->LIST:Lga/H;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lga/a;->i(Lga/H;)Lga/H;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItemType:Lga/H;

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->v0(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->i(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->W()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    const-string p1, ""

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-void
.end method

.method public final j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v1, v0, LJAVARuntime/Component;

    if-eqz v1, :cond_0

    check-cast v0, LJAVARuntime/Component;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {v1, v0}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    invoke-static {v0, p1}, Lga/d;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {v0, p1}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    invoke-static {p1}, Lga/d;->p(LJAVARuntime/Component;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-static {v1}, Lwb/c;->m(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    :cond_2
    return-object v0
.end method

.method public final l()LJAVARuntime/File;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {v0}, Lga/m;->U(Ljava/lang/Object;)LJAVARuntime/File;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v3, v2, LJAVARuntime/File;

    if-eqz v3, :cond_4

    check-cast v2, LJAVARuntime/File;

    invoke-virtual {v2}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v2

    :cond_4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final m(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "owner"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    const-class v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    :cond_2
    return-object p1
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Lga/l;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "ownerComponent"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->g()Lga/H;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-virtual {v3, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lga/m;->m(Lga/H;Ljava/util/List;)Lga/l;

    move-result-object p1

    return-object p1
.end method

.method public final o()LJAVARuntime/ObjectFile;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v2, v1, LJAVARuntime/ObjectFile;

    if-eqz v2, :cond_2

    check-cast v1, LJAVARuntime/ObjectFile;

    invoke-virtual {v1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1, v0}, LJAVARuntime/ObjectFile;->setFilePath(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, LJAVARuntime/ObjectFile;

    invoke-direct {v1, v0}, LJAVARuntime/ObjectFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-object v1
.end method

.method public final p()LJAVARuntime/ProjectFile;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v3, v2, LJAVARuntime/ProjectFile;

    if-eqz v3, :cond_3

    check-cast v2, LJAVARuntime/ProjectFile;

    invoke-virtual {v2}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    invoke-static {v0}, Lga/m;->e0(Ljava/lang/Object;)LJAVARuntime/ProjectFile;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final q()LJAVARuntime/SoundFile;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v2, v1, LJAVARuntime/SoundFile;

    if-eqz v2, :cond_2

    check-cast v1, LJAVARuntime/SoundFile;

    invoke-virtual {v1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1, v0}, Ljb/a;->setFilePath(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, LJAVARuntime/SoundFile;

    invoke-direct {v1, v0}, LJAVARuntime/SoundFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-object v1
.end method

.method public final r()Lub/p;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v1, v0, Lub/p;

    if-eqz v1, :cond_0

    check-cast v0, Lub/p;

    instance-of v1, v0, Lub/g;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lub/g;

    invoke-virtual {v1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-static {v1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v2, v1, Lub/p;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lub/p;

    :cond_2
    return-object v0
.end method

.method public final s()LJAVARuntime/WorldFile;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    instance-of v2, v1, LJAVARuntime/WorldFile;

    if-eqz v2, :cond_2

    check-cast v1, LJAVARuntime/WorldFile;

    invoke-virtual {v1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1, v0}, Ljb/a;->setFilePath(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, LJAVARuntime/WorldFile;

    invoke-direct {v1, v0}, LJAVARuntime/WorldFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-object v1
.end method

.method public final t(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "owner"
        }
    .end annotation

    invoke-static {p1, p2}, Lga/d;->d(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    invoke-static {p1}, Lga/d;->p(LJAVARuntime/Component;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-void
.end method

.method public final u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "owner"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    const-string p1, "Owner"

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->r()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->referenceJson:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a:Ljava/lang/Object;

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "ownerComponent"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue$a;->a:[I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {p2}, Lga/d;->n(Lga/H;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {p2, p1}, Lga/m;->f(Lga/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Lga/l;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p1}, Lga/m;->d0(Ljava/lang/Object;)Lga/G;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p1}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p1}, Lga/m;->k0(Ljava/lang/Object;)Lcc/e;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p1}, Lga/m;->N(Ljava/lang/Object;)Lec/a;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->r()Lub/p;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->q()LJAVARuntime/SoundFile;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->s()LJAVARuntime/WorldFile;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->o()LJAVARuntime/ObjectFile;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->p()LJAVARuntime/ProjectFile;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->l()LJAVARuntime/File;

    move-result-object p1

    return-object p1

    :pswitch_d
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p1}, Lga/m;->b0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->m(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1

    :pswitch_10
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :goto_1
    return-object p1

    :pswitch_12
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v2

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    goto :goto_2

    :cond_3
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    :goto_2
    return-object p2

    :pswitch_13
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1

    :pswitch_14
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1

    :pswitch_15
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->booleanValue:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_16
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p1}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p1

    return-object p1

    :pswitch_17
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->number:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
