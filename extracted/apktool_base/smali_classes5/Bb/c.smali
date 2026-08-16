.class public LBb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBb/c$a;
    }
.end annotation


# instance fields
.field public a:LBb/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LBb/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LBb/c;->a:LBb/c$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Lub/p;)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFile",
            "texture"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lub/g;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    invoke-static {p0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    instance-of p0, p1, Lub/g;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Lub/p;)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFile",
            "texture"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p2, Lub/g;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lub/g;

    invoke-virtual {v1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    invoke-static {p1}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object p2
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, LBb/c;->a:LBb/c$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, LBb/c;->a:LBb/c$a;

    invoke-interface {p1}, LBb/c$a;->a()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_4

    :try_start_1
    invoke-static {p1}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object p2
    :try_end_1
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, LBb/c;->a:LBb/c$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, LBb/c;->a:LBb/c$a;

    invoke-interface {p1}, LBb/c$a;->a()V

    :cond_2
    :goto_0
    move-object p2, v0

    goto :goto_2

    :cond_3
    :goto_1
    instance-of p1, p2, Lub/g;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-object p2
.end method
