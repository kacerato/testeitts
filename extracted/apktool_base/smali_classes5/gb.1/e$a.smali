.class public Lgb/e$a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e;->M(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Lr4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$o",
            "val$activity",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p2, p0, Lgb/e$a;->c:Landroid/app/Activity;

    iput-object p3, p0, Lgb/e$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p2, Ldd/b;

    new-instance p3, Lgb/e$a$a;

    invoke-direct {p3, p0}, Lgb/e$a$a;-><init>(Lgb/e$a;)V

    new-instance v0, Lgb/e$a$f;

    invoke-direct {v0, p0}, Lgb/e$a$f;-><init>(Lgb/e$a;)V

    invoke-direct {p2, p3, v0}, Ldd/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EMPTY:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lgb/e$a$g;

    invoke-direct {v0, p0}, Lgb/e$a$g;-><init>(Lgb/e$a;)V

    const v1, 0x7f070116

    invoke-direct {p2, v1, p3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_CREATE_CHILD_OBJECT:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ld7/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-direct {p2, v1, p3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    invoke-direct {p2}, Ldd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_CHANGE_PARENT:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lgb/e$a$h;

    invoke-direct {v0, p0}, Lgb/e$a$h;-><init>(Lgb/e$a;)V

    const v1, 0x7f070154

    invoke-direct {p2, v1, p3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ldd/b;

    invoke-direct {p2}, Ldd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    new-instance p3, Lgb/e$a$i;

    invoke-direct {p3, p0}, Lgb/e$a$i;-><init>(Lgb/e$a;)V

    const v0, 0x7f0700dd

    const-string v1, "Export object"

    invoke-direct {p2, v0, v1, p3}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    new-instance p3, Lgb/e$a$j;

    invoke-direct {p3, p0}, Lgb/e$a$j;-><init>(Lgb/e$a;)V

    const v0, 0x7f07012b

    const-string v1, "Create prefab"

    invoke-direct {p2, v0, v1, p3}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Armature:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    const-string p3, "Create mask from skeleton"

    const v0, 0x7f070262

    if-eqz p2, :cond_0

    new-instance p2, Ldd/b;

    new-instance v1, Lgb/e$a$k;

    invoke-direct {v1, p0}, Lgb/e$a$k;-><init>(Lgb/e$a;)V

    invoke-direct {p2, v0, p3, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinnedModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Ldd/b;

    new-instance v1, Lgb/e$a$l;

    invoke-direct {v1, p0}, Lgb/e$a$l;-><init>(Lgb/e$a;)V

    invoke-direct {p2, v0, p3, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ldd/b;

    invoke-direct {p2}, Ldd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    new-instance p3, Lgb/e$a$m;

    invoke-direct {p3, p0}, Lgb/e$a$m;-><init>(Lgb/e$a;)V

    const-string v0, "Bake"

    invoke-direct {p2, v0, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Ldd/b;

    invoke-direct {p2}, Ldd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinJoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-static {p1, p2}, Lgb/e;->C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_ADD_CHILD_BONE:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lgb/e$a$b;

    invoke-direct {p3, p0}, Lgb/e$a$b;-><init>(Lgb/e$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_ADD_SKELETON:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lgb/e$a$c;

    invoke-direct {p3, p0}, Lgb/e$a$c;-><init>(Lgb/e$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    invoke-direct {p1}, Ldd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_BATCH:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lgb/e$a$d;

    invoke-direct {p3, p0}, Lgb/e$a$d;-><init>(Lgb/e$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    invoke-direct {p1}, Ldd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Lgb/e$a$e;

    invoke-direct {p2, p0}, Lgb/e$a$e;-><init>(Lgb/e$a;)V

    const-string p3, "Dev tools"

    invoke-direct {p1, p3, p2}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
