.class public final LJAVARuntime/IntSlider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Inspector"
    }
.end annotation


# instance fields
.field public transient max:I

.field public transient min:I

.field public transient value:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "min",
            "max"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    iput p1, p0, LJAVARuntime/IntSlider;->value:I

    iput p2, p0, LJAVARuntime/IntSlider;->min:I

    iput p3, p0, LJAVARuntime/IntSlider;->max:I

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)LJAVARuntime/IntSlider;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Deserializes a string to create a IntSlider instance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Desserializa uma string para criar uma inst\u00e2ncia de IntSlider."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, LJAVARuntime/IntSlider;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-static {p0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, LJAVARuntime/IntSlider;-><init>(III)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/IntSlider$1;

    const-class v2, LJAVARuntime/IntSlider;

    invoke-direct {v1, v2}, LJAVARuntime/IntSlider$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum allowed value of the slider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor m\u00e1ximo permitido do controle deslizante."
    .end annotation

    iget v0, p0, LJAVARuntime/IntSlider;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the minimum allowed value of the slider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor m\u00ednimo permitido do controle deslizante."
    .end annotation

    iget v0, p0, LJAVARuntime/IntSlider;->min:I

    return v0
.end method

.method public getValue()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current value of the slider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor atual do controle deslizante."
    .end annotation

    iget v0, p0, LJAVARuntime/IntSlider;->value:I

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Serializes the IntSlider into a string in the format \'[value;min;max;step]\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Serializa o InttSlider em uma string no formato \'[value;min;max;step]\'."
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LJAVARuntime/IntSlider;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LJAVARuntime/IntSlider;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LJAVARuntime/IntSlider;->max:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMax(I)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the maximum allowed value of the slider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor m\u00e1ximo permitido do controle deslizante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/IntSlider;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the minimum allowed value of the slider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor m\u00ednimo permitido do controle deslizante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/IntSlider;->min:I

    return-void
.end method

.method public setValue(I)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the value of the slider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor do controle deslizante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/IntSlider;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a string representation of the IntSlider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em string do IntSlider."
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LJAVARuntime/IntSlider;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")x( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LJAVARuntime/IntSlider;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LJAVARuntime/IntSlider;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
