.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->prepareVFXParams(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/util/List;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;Ljava/util/List;)V
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
            "val$config",
            "val$debugIpp",
            "val$outParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LVb/b;

    invoke-direct {v0}, LVb/b;-><init>()V

    iput-object p1, v0, LVb/b;->a:Ljava/lang/String;

    iput-object p2, v0, LVb/b;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->precision:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    iput-object p2, v0, LVb/b;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->defaults:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    iput-object v1, v0, LVb/b;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, LVb/b;->e:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, LVb/b;->b()V

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
