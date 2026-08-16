.class public final Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "specialist",
            "toolToChat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;",
            ")",
            "Ljava/util/List<",
            "Lk0/C;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->w(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->l()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

    move-result-object v1

    invoke-static {v1}, Lk0/z;->h(Lk0/o;)Lk0/C;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolToChat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;",
            ")",
            "Ljava/util/List<",
            "Lk0/C;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/f;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;",
            ")",
            "Ljava/util/List<",
            "Lk0/C;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->l()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

    move-result-object v3

    invoke-static {v3}, Lk0/z;->h(Lk0/o;)Lk0/C;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
