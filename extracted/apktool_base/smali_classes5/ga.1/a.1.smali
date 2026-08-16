.class public final Lga/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/a$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;ZLga/a$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "nestedListItems",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;Z",
            "Lga/a$d;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lga/H;->NUMBER:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->BIG_NUMBER:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->NUMBER01:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->BOOLEAN:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->TEXT:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    const-string v1, "Primitives"

    invoke-direct {v0, v1, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lga/H;->FLOAT2:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->FLOAT3:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->DIRECTION:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->FLOAT4:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->QUATERNION:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->COLOR:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->COLOR_GRADIENT:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    const-string v1, "Vectors"

    invoke-direct {v0, v1, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lga/H;->GAME_OBJECT:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    const-string v1, "World"

    invoke-direct {v0, v1, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, Lga/H;->FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->PROJECT_FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->OBJECT_FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->ANIMATION_FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->ANIMATION_MASK_FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->WORLD_FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->SOUND_FILE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->ANIMATION:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->ANIMATION_MASK:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->TEXTURE:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lga/H;->CUBEMAP:Lga/H;

    invoke-static {v1, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    const-string v2, "Files"

    invoke-direct {v1, v2, v0}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->MATERIAL:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    const-string v1, "Assets"

    invoke-direct {v0, v1, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lga/H;->BLENDING_MODE:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->UV_SOURCE:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    const-string v1, "Enums"

    invoke-direct {v0, v1, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    invoke-static {v0, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lga/d;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lga/d;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lga/H;

    invoke-static {v4, p2}, Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ldd/b;

    invoke-direct {v2, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p2, Ldd/b;

    const-string v0, "Components"

    invoke-direct {p2, v0, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lga/a$d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/a$d;",
            ")",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lga/a;->a(Ljava/util/List;ZLga/a$d;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Lga/a$a;

    invoke-direct {v2, p0}, Lga/a$a;-><init>(Lga/a$d;)V

    const/4 p0, 0x1

    invoke-static {v1, p0, v2}, Lga/a;->a(Ljava/util/List;ZLga/a$d;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ldd/b;

    const-string v2, "List"

    invoke-direct {p0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static c(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lga/H;->MAT3:Lga/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lga/H;->MAT4:Lga/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lga/H;->BRANCH:Lga/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lga/H;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_NUMBER:LAc/b;

    const-string v0, "Number"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lga/d;->i(Lga/H;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lga/a$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANY_COMPONENT:LAc/b;

    const-string v0, "Any Component"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_POPUP_DIALOG_TYPE:LAc/b;

    const-string v0, "Popup Dialog Type"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_INPUT_DIALOG_TYPE:LAc/b;

    const-string v0, "Input Dialog Type"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_UV_SOURCE:LAc/b;

    const-string v0, "UV Source"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_BLENDING_MODE:LAc/b;

    const-string v0, "Blending Mode"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_COLOR_GRADIENT:LAc/b;

    const-string v0, "Color Gradient"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION_MASK:LAc/b;

    const-string v0, "Animation Mask"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION:LAc/b;

    const-string v0, "Animation"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_SOUND_FILE:LAc/b;

    const-string v0, "Sound File"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_WORLD_FILE:LAc/b;

    const-string v0, "World File"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION_MASK_FILE:LAc/b;

    const-string v0, "Animation Mask File"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_ANIMATION_FILE:LAc/b;

    const-string v0, "Animation File"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_OBJECT_FILE:LAc/b;

    const-string v0, "Object File"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    const-string p0, "Input Stream"

    return-object p0

    :pswitch_e
    const-string p0, "Project File"

    return-object p0

    :pswitch_f
    const-string p0, "File"

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_GAME_OBJECT:LAc/b;

    const-string v0, "Object"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_QUATERNION:LAc/b;

    const-string v0, "Quaternion"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_FLOAT4:LAc/b;

    const-string v0, "Number 4"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_FLOAT3:LAc/b;

    const-string v0, "Number 3"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_FLOAT2:LAc/b;

    const-string v0, "Number 2"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_NUMBER01:LAc/b;

    const-string v0, "Number 01"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_BIG_NUMBER:LAc/b;

    const-string v0, "Big Number"

    invoke-static {p0, v0}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lga/H;Lga/H;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "listItemType"
        }
    .end annotation

    sget-object v0, Lga/H;->LIST:Lga/H;

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_TYPE_LIST:LAc/b;

    const-string v1, "List"

    invoke-static {v0, v1}, Lga/a;->k(LAc/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lga/a;->i(Lga/H;)Lga/H;

    move-result-object p1

    invoke-static {p1}, Lga/a;->d(Lga/H;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lga/a;->d(Lga/H;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lga/H;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "allowList"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lga/H;->BRANCH:Lga/H;

    if-eq p0, v1, :cond_4

    sget-object v1, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v1, :cond_4

    sget-object v1, Lga/H;->MAT3:Lga/H;

    if-eq p0, v1, :cond_4

    sget-object v1, Lga/H;->MAT4:Lga/H;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lga/H;->INPUT_STREAM:Lga/H;

    if-ne p0, v1, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Lga/H;->LIST:Lga/H;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static g(Lga/H;Lga/a$d;)Ldd/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "listener"
        }
    .end annotation

    new-instance v0, Ldd/b;

    invoke-static {p0}, Lga/a;->d(Lga/H;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lga/a$b;

    invoke-direct {v2, p1, p0}, Lga/a$b;-><init>(Lga/a$d;Lga/H;)V

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    return-object v0
.end method

.method public static h(Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lga/a;->f(Lga/H;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lga/H;->NUMBER:Lga/H;

    :cond_0
    return-object p0
.end method

.method public static i(Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lga/a;->f(Lga/H;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lga/H;->NUMBER:Lga/H;

    :cond_0
    return-object p0
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static k(LAc/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    invoke-static {}, Lga/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
