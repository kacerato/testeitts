.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LC5/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$rectScaVector",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->a:LC5/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESET:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ldd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_KEYFRAME:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ldd/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;)V

    const-string v3, "Open editor"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unlock"

    goto :goto_0

    :cond_1
    const-string v2, "Lock"

    :goto_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;)V

    invoke-direct {v1, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
