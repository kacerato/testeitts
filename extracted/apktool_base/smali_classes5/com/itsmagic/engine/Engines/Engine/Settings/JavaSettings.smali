.class public Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;
    }
.end annotation


# instance fields
.field public module_autoGenerateRBindings:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;
        value = "Auto generate R bindings"
    .end annotation
.end field

.field public module_caseInsensitiveMethods:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;
        value = "Case insensitive methods"
    .end annotation
.end field

.field public module_customOperators:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;
        value = "Custom operators"
    .end annotation
.end field

.field public module_publicMethods:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;
        value = "Auto public methods"
    .end annotation
.end field

.field public module_virtualAttributes:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;
        value = "Virtual attributes"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_customOperators:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_caseInsensitiveMethods:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_publicMethods:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_virtualAttributes:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_autoGenerateRBindings:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-class p1, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    new-instance v4, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$a;

    invoke-direct {v5, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;Ljava/lang/reflect/Field;)V

    invoke-interface {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings$b;->value()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v4, v5, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_autoGenerateRBindings:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_caseInsensitiveMethods:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_customOperators:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_publicMethods:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_virtualAttributes:Z

    return v0
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_autoGenerateRBindings"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_autoGenerateRBindings:Z

    return-void
.end method

.method public h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_caseInsensitiveMethods"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_caseInsensitiveMethods:Z

    return-void
.end method

.method public i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_customOperators"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_customOperators:Z

    return-void
.end method

.method public j(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_publicMethods"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_publicMethods:Z

    return-void
.end method

.method public k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_virtualAttributes"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->module_virtualAttributes:Z

    return-void
.end method
