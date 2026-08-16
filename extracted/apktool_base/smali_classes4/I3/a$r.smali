.class public LI3/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI3/a;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LI3/a$r;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "NEW_OBJECT_SUN_LIGHT"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    invoke-static {}, LI3/a;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide v1, 0x3fe9604189374bc7L    # 0.793

    const-wide v3, 0x3fe37ced916872b0L    # 0.609

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(DDDD)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;-><init>()V

    const-string v1, "Sun light"

    invoke-static {v1, p1, v9, v0}, LG3/b;->k(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, LI3/a$r;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, LI3/a$r;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    :cond_0
    return-void
.end method
