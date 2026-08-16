.class public Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Ljava/lang/String;Ljava/util/List;)Ldd/b;
    .locals 0

    invoke-static {p0, p1}, Lg7/a;->b([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;Ljava/util/List;)Ldd/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "folders",
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)",
            "Ldd/b;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-object v3, p0, v2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    move v5, v1

    :goto_1
    iget-object v6, v0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldd/b;

    iget-object v7, v6, Ldd/b;->b:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_2
    if-nez v4, :cond_5

    new-instance v4, Ldd/b;

    sget-object v5, Ldd/b$b;->Folder:Ldd/b$b;

    invoke-direct {v4, v5, v3}, Ldd/b;-><init>(Ldd/b$b;Ljava/lang/String;)V

    iget-object v0, v0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_5

    :cond_2
    move v5, v1

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldd/b;

    iget-object v7, v6, Ldd/b;->b:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v6

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_4
    if-nez v4, :cond_5

    new-instance v0, Ldd/b;

    sget-object v4, Ldd/b$b;->Folder:Ldd/b$b;

    invoke-direct {v0, v4, v3}, Ldd/b;-><init>(Ldd/b$b;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static c(Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "destinationObject"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {p0, v0, p1}, Lg7/a;->d(Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static d(Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "destinationObject"
        }
    .end annotation

    new-instance v0, Lg7/a$a;

    invoke-direct {v0, p2, p0, p1}, Lg7/a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Lr4/a$e;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
