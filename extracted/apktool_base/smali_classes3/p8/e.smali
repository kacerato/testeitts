.class public Lp8/e;
.super Lg6/e;
.source "SourceFile"


# instance fields
.field public final a:LJAVARuntime/ObjectsPanelMenu;


# direct methods
.method public constructor <init>(LJAVARuntime/ObjectsPanelMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    invoke-direct {p0}, Lg6/e;-><init>()V

    iput-object p1, p0, Lp8/e;->a:LJAVARuntime/ObjectsPanelMenu;

    return-void
.end method

.method public static synthetic b(Lp8/e;)LJAVARuntime/ObjectsPanelMenu;
    .locals 0

    iget-object p0, p0, Lp8/e;->a:LJAVARuntime/ObjectsPanelMenu;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ldd/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p0, Lp8/e;->a:LJAVARuntime/ObjectsPanelMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LJAVARuntime/ObjectsPanelMenu;->getMenu()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    aget-object v5, v0, v2

    if-nez v4, :cond_0

    new-instance v4, Ldd/b;

    new-instance v6, Lp8/e$a;

    invoke-direct {v6, p0, p1}, Lp8/e$a;-><init>(Lp8/e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {v4, v5, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    goto :goto_1

    :cond_0
    sget-object v6, Ldd/b$b;->Folder:Ldd/b$b;

    iput-object v6, v4, Ldd/b;->a:Ldd/b$b;

    iput-object v1, v4, Ldd/b;->d:Ldd/d;

    iput-object v1, v4, Ldd/b;->e:Ldd/c;

    new-instance v6, Ldd/b;

    new-instance v7, Lp8/e$b;

    invoke-direct {v7, p0, p1}, Lp8/e$b;-><init>(Lp8/e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {v6, v5, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    iget-object v5, v4, Ldd/b;->c:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v4, Ldd/b;->c:Ljava/util/List;

    :cond_1
    iget-object v4, v4, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    :goto_1
    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    return-object v1
.end method
