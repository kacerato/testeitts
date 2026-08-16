.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "users/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 6

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$h$a;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$h$a;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$h$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$h$b;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "addUsageTick"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    sget-boolean v5, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v0, v4, v5}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User not logged!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
