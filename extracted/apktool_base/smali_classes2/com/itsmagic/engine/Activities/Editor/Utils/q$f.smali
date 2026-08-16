.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$i;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "users/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$b;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "getEmail"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Invalid user id"

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$g;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$h;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "confirmEmail"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$f;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$f;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "users/"

    const-string v4, "sendConfirmEmail"

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$c;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$d;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$d;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, Lhd/e;

    const-string v2, "users/"

    const-string v3, "setEmail"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, p1, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Led/c;->d(Lhd/e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
