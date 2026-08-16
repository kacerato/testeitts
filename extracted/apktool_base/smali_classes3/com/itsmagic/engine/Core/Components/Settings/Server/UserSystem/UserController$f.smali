.class public Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$f;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->G(Landroid/content/Context;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$f;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$f;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->j(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, LW7/b;->f:LC8/a;

    invoke-virtual {p1, p2}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appversion"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
