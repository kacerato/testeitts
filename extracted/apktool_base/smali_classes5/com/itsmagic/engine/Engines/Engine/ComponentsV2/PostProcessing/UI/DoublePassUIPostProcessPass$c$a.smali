.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "o"
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, [F

    if-eqz v0, :cond_4

    check-cast p2, [F

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    aget v7, p2, v2

    aget v8, p2, v1

    aget v9, p2, v3

    aget v10, p2, v4

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    goto/16 :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array inv\u00e1lido em uniform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    aget v2, p2, v2

    aget v1, p2, v1

    aget p2, p2, v3

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    aget v2, p2, v2

    aget p2, p2, v1

    invoke-virtual {v0, p1, v2, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_6

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lub/p;

    if-eqz v0, :cond_8

    check-cast p2, Lub/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    instance-of v0, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :goto_0
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Param type not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tipo:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "s",
            "o"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
