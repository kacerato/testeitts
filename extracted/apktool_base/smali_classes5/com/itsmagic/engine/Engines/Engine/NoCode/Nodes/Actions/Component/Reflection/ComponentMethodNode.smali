.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lga/F;


# static fields
.field public static final j:Ljava/lang/String; = "ComponentMethod"


# instance fields
.field public componentType:Lga/H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient g:Ljava/lang/reflect/Method;

.field public transient h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public transient i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public methodName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public parameterTypeNames:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public runtimeClassName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->componentType:Lga/H;

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->runtimeClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->methodName:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->parameterTypeNames:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v0, "ComponentMethod"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->H0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    :goto_0
    return-object v0
.end method

.method public G0(Lga/H;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentType",
            "runtimeClassName",
            "methodName",
            "parameterTypeNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/H;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->ANY_COMPONENT:Lga/H;

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->componentType:Lga/H;

    const-string p1, ""

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->runtimeClassName:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    :goto_2
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->methodName:Ljava/lang/String;

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-eqz p4, :cond_3

    invoke-direct {p1, p4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_3
    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :goto_3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->parameterTypeNames:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->I0()V

    return-void
.end method

.method public final H0()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->runtimeClassName:Ljava/lang/String;

    invoke-static {v1}, Lma/a;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, LJAVARuntime/Component;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lma/a;->f(Ljava/lang/Class;)Lga/H;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->componentType:Lga/H;

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->parameterTypeNames:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    new-array v3, v2, [Ljava/lang/Class;

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->parameterTypeNames:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lma/a;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->g:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->J0(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->runtimeClassName:Ljava/lang/String;

    const-string v2, "JAVARuntime."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->componentType:Lga/H;

    invoke-direct {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-nez v1, :cond_5

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    :cond_5
    :goto_2
    return-void
.end method

.method public final I0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->g:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-void
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->H0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    :goto_0
    return-object v0
.end method

.method public final J0(Ljava/lang/reflect/Method;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    invoke-static {p1}, Lma/a;->j(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Component"

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->componentType:Lga/H;

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_COMPONENT:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move v2, v4

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-static {v3}, Lma/a;->f(Ljava/lang/Class;)Lga/H;

    move-result-object v3

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v8, v0, v2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lga/H;->DYNAMIC:Lga/H;

    :goto_1
    invoke-direct {v7, v8, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    aget-object v2, v0, v2

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v5, v6

    move v2, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lma/a;->f(Ljava/lang/Class;)Lga/H;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    invoke-static {p1}, Lma/a;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-static {p1}, Lma/a;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p1

    filled-new-array {p1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-void

    :cond_3
    :goto_2
    new-array p1, v4, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-void
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->runtimeClassName:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->methodName:Ljava/lang/String;

    invoke-static {p1, v0}, Lma/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    const-string v0, "[Pick first]"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object p1, Lga/H;->GAME_OBJECT:Lga/H;

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_1

    invoke-static {p2}, Lga/d;->n(Lga/H;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lga/H;->BOOLEAN:Lga/H;

    if-ne p2, p1, :cond_2

    const-string p1, "false"

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public m0()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "E/^^^"

    const-string v3, "E/Catching exceptions is a heavy process and considerably reduces performance.!"

    const-string v4, "#27997e"

    const-string v5, "Unknown"

    const-string v6, "E/At object "

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->H0()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->g:Ljava/lang/reflect/Method;

    iget-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-array v7, v8, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    :goto_0
    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    new-array v9, v8, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    :goto_1
    if-eqz v0, :cond_e

    array-length v10, v7

    if-nez v10, :cond_2

    goto/16 :goto_b

    :cond_2
    :try_start_0
    iget-object v10, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    aget-object v11, v7, v8

    invoke-static {v1, v10, v11}, Lla/a;->d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)LJAVARuntime/Component;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    move v7, v8

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    new-array v12, v12, [Ljava/lang/Object;

    move v13, v8

    :goto_2
    array-length v14, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v13, v14, :cond_5

    add-int/lit8 v14, v13, 0x1

    :try_start_1
    aget-object v15, v7, v14

    invoke-virtual {v1, v15}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v15

    aget-object v8, v11, v13

    invoke-static {v15, v8}, Lma/a;->o(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v12, v13

    move v13, v14

    const/4 v8, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v0, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    array-length v7, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v7, :cond_6

    const/4 v7, 0x0

    :try_start_2
    aget-object v8, v9, v7

    iget-object v10, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-static {v0, v10}, Lma/a;->e(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    aget-object v0, v9, v7

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_6
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move v7, v8

    goto/16 :goto_6

    :goto_3
    invoke-static {}, LJ4/d;->O1()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v9

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v9

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_7
    move-object v9, v5

    :goto_4
    invoke-static {v9, v4}, LJ4/d;->H1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Target component input for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is undefined, node cannot execute."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, LJ4/d;->W1(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    invoke-static {}, LJ4/d;->E1()V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_6
    invoke-static {}, LJ4/d;->O1()Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v6

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object v5

    :cond_9
    invoke-static {v5, v4}, LJ4/d;->H1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, LJ4/d;->w2(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_c

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    invoke-static {v3}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, LJ4/d;->W1(Ljava/util/List;)V

    goto :goto_9

    :cond_d
    invoke-static {}, LJ4/d;->E1()V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s()V

    :goto_a
    return-void

    :cond_e
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->runtimeClassName:Ljava/lang/String;

    const-string v1, "JAVARuntime."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
