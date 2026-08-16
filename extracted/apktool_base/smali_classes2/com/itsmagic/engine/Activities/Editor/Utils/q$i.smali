.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$M;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$L;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$I;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "users/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "friendID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$p;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$p;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$q;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$q;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "approveUserFriend"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static b(ILcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "friendID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$t;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$t;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$u;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$u;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "blockUserFriend"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$B;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$B;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$C;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$C;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "claimDailyReward"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;
    .locals 3

    sget-object v0, LW7/b;->f:LC8/a;

    if-eqz v0, :cond_0

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->D(Landroid/content/Context;)Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;-><init>()V

    iget-object v2, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;->a:Ljava/lang/String;

    iget-object v2, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->T()Z

    move-result v2

    iput-boolean v2, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;->b:Z

    iget-object v2, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->K()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;->c:Ljava/lang/String;

    iget-object v2, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;->d:I

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->H()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;->e:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$M;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$v;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$v;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$M;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$A;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$A;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "getLoginDays"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static f()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$k;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$k;-><init>()V

    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$I;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "username",
            "password",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$i;

    invoke-direct {v2, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$I;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$j;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "users/"

    const-string v2, "hasActiveLogin"

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static h(ILcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "friendID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$n;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$n;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$o;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$o;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "inviteUserFriend"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static i(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$D;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$E;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$E;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "isApkLimitReached"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static j(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$F;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$K;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$G;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$G;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "isExportingAPK"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static k()Z
    .locals 1

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static l(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$L;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$L;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$h;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$h;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "isTokenActive"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "username",
            "password",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;

    invoke-direct {v2, p0, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$a;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$b;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "users/"

    const-string v2, "login"

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idToken",
            "displayName",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$c;

    invoke-direct {v2, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$c;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$d;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "users/"

    const-string v2, "loginFromGoogle"

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static o(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "email",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$l;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$m;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$m;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "recoveryPassword"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static p(ILcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "friendID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$r;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$r;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$s;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$s;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "recuseFriendRequest"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static q(ILcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "friendID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$w;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$w;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$x;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$x;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "reportUserFriend"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idToken",
            "displayName",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;

    invoke-direct {v2, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$f;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string p1, "users/"

    const-string v2, "syncWithGoogle"

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static s(ILcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "friendID",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$y;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$y;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->d()Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$O;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$z;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$z;-><init>(I)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "unfriendUser"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void
.end method
