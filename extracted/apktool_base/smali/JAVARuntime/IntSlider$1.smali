.class LJAVARuntime/IntSlider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/IntSlider;->inspectorController()LP8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$thisClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$thisClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/IntSlider$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "field",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJAVARuntime/IntSlider;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    new-instance p2, LC5/b;

    new-instance v1, LJAVARuntime/IntSlider$1$1;

    invoke-direct {v1, p0, p1}, LJAVARuntime/IntSlider$1$1;-><init>(LJAVARuntime/IntSlider$1;LJAVARuntime/IntSlider;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLIntSlider:LC5/b$a;

    iget p3, p1, LJAVARuntime/IntSlider;->min:I

    int-to-float v4, p3

    iget p1, p1, LJAVARuntime/IntSlider;->max:I

    int-to-float v5, p1

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    return-object p2

    :cond_0
    new-instance p1, LC5/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (null)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-direct {p1, p2, p3}, LC5/b;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "array",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    aget-object p1, p2, p3

    check-cast p1, LJAVARuntime/IntSlider;

    if-eqz p1, :cond_0

    new-instance p2, LC5/b;

    new-instance v1, LJAVARuntime/IntSlider$1$2;

    invoke-direct {v1, p0, p1}, LJAVARuntime/IntSlider$1$2;-><init>(LJAVARuntime/IntSlider$1;LJAVARuntime/IntSlider;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLIntSlider:LC5/b$a;

    iget p3, p1, LJAVARuntime/IntSlider;->min:I

    int-to-float v4, p3

    iget p1, p1, LJAVARuntime/IntSlider;->max:I

    int-to-float v5, p1

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    return-object p2

    :cond_0
    new-instance p1, LC5/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (null)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-direct {p1, p2, p3}, LC5/b;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "list",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    invoke-virtual {p2, p3}, Ld8/h;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJAVARuntime/IntSlider;

    if-eqz p1, :cond_0

    new-instance p2, LC5/b;

    new-instance v1, LJAVARuntime/IntSlider$1$3;

    invoke-direct {v1, p0, p1}, LJAVARuntime/IntSlider$1$3;-><init>(LJAVARuntime/IntSlider$1;LJAVARuntime/IntSlider;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLIntSlider:LC5/b$a;

    iget p3, p1, LJAVARuntime/IntSlider;->min:I

    int-to-float v4, p3

    iget p1, p1, LJAVARuntime/IntSlider;->max:I

    int-to-float v5, p1

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    return-object p2

    :cond_0
    new-instance p1, LC5/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (null)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-direct {p1, p2, p3}, LC5/b;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getSimpleName(LP8/q;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iget-object p1, p0, LJAVARuntime/IntSlider$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public match(Ljava/lang/String;LP8/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "userPointer"
        }
    .end annotation

    iget-object p2, p0, LJAVARuntime/IntSlider$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public newInstance(LP8/q;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    new-instance p1, LJAVARuntime/IntSlider;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v0, v1}, LJAVARuntime/IntSlider;-><init>(III)V

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {p1}, LJAVARuntime/IntSlider;->deserialize(Ljava/lang/String;)LJAVARuntime/IntSlider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation

    check-cast p2, LJAVARuntime/IntSlider;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p2}, LJAVARuntime/IntSlider;->serialize()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string p3, ""

    invoke-direct {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
