.class public Led/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Led/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "scriptName",
            "context",
            "fastPostListener"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Led/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLandroid/content/Context;Led/b;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLandroid/content/Context;Led/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "scriptName",
            "extraParams",
            "requestUserTokens",
            "context",
            "fastPostListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/content/Context;",
            "Led/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Led/c;

    new-instance v1, Led/a$a;

    invoke-direct {v1, p5}, Led/a$a;-><init>(Led/b;)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance p5, Led/a$b;

    invoke-direct {p5}, Led/a$b;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object p2, LW7/b;->f:LC8/a;

    iget-object p2, p2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->G(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    new-instance p2, Lhd/e;

    sget-object p3, LW7/b;->f:LC8/a;

    iget-object p3, p3, LC8/a;->c:LH8/a;

    invoke-static {p0, p1}, LH8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p5, p4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Led/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "scriptName",
            "requestUserTokens",
            "context",
            "fastPostListener"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Led/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLandroid/content/Context;Led/b;)V

    return-void
.end method
