.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Bounciness"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "bounciness"

    invoke-virtual {v0, v3, v1, v5, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRICTION:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "friction"

    invoke-virtual {v0, v2, v1, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LAYER:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->a:Landroid/content/Context;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
