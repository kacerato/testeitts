.class public Lgb/e$a$d;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a;
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
.field public final synthetic b:Lgb/e$a;


# direct methods
.method public constructor <init>(Lgb/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d;->b:Lgb/e$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_SET_ALL_STATIC:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/e$a$d$e;

    invoke-direct {v2, p0}, Lgb/e$a$d$e;-><init>(Lgb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_SET_ALL_DYNAMIC:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/e$a$d$f;

    invoke-direct {v2, p0}, Lgb/e$a$d$f;-><init>(Lgb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    invoke-direct {v0}, Ldd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Lgb/e$a$d$g;

    invoke-direct {v1, p0}, Lgb/e$a$d$g;-><init>(Lgb/e$a$d;)V

    const-string v2, "Shader"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_CHANGE_ALL_MATERIALS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/e$a$d$h;

    invoke-direct {v2, p0}, Lgb/e$a$d$h;-><init>(Lgb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    invoke-direct {v0}, Ldd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Lgb/e$a$d$i;

    invoke-direct {v1, p0}, Lgb/e$a$d$i;-><init>(Lgb/e$a$d;)V

    const-string v2, "Add model collider to all child objects"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Lgb/e$a$d$j;

    invoke-direct {v1, p0}, Lgb/e$a$d$j;-><init>(Lgb/e$a$d;)V

    const-string v2, "Add convex collider to all child objects"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Lgb/e$a$d$k;

    invoke-direct {v1, p0}, Lgb/e$a$d$k;-><init>(Lgb/e$a$d;)V

    const-string v2, "Remove all colliders from all child objects"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    invoke-direct {v0}, Ldd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_RANDOMIZE_CHILD_ROTATION_Y:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/e$a$d$l;

    invoke-direct {v2, p0}, Lgb/e$a$d$l;-><init>(Lgb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_DELETE_ALL_CHILDREN:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/e$a$d$m;

    invoke-direct {v2, p0}, Lgb/e$a$d$m;-><init>(Lgb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_DETACH_CHILDREN:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgb/e$a$d$a;

    invoke-direct {v2, p0}, Lgb/e$a$d$a;-><init>(Lgb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Lgb/e$a$d$b;

    invoke-direct {v1, p0}, Lgb/e$a$d$b;-><init>(Lgb/e$a$d;)V

    const-string v2, "Delete child by prefix"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Lgb/e$a$d$c;

    invoke-direct {v1, p0}, Lgb/e$a$d$c;-><init>(Lgb/e$a$d;)V

    const-string v2, "Delete child by contains"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_COLLAPSE_CHILDREN_COMPONENTS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lgb/e$a$d$d;

    invoke-direct {v1, p0}, Lgb/e$a$d$d;-><init>(Lgb/e$a$d;)V

    invoke-direct {p1, v0, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
