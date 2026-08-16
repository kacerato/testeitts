.class public LPb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lvb/b;

.field public static b:Z

.field public static final c:LPb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LPb/b;

    invoke-direct {v0}, LPb/b;-><init>()V

    sput-object v0, LPb/a;->c:LPb/b;

    new-instance v0, LPb/a$a;

    invoke-direct {v0}, LPb/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lvb/b;
    .locals 1

    sget-object v0, LPb/a;->a:Lvb/b;

    return-object v0
.end method

.method public static synthetic b()LPb/b;
    .locals 1

    sget-object v0, LPb/a;->c:LPb/b;

    return-object v0
.end method

.method public static c()Lvb/b;
    .locals 1

    sget-object v0, LPb/a;->a:Lvb/b;

    return-object v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LPb/a;->b:Z

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameSettings"
        }
    .end annotation

    sget-boolean v0, LPb/a;->b:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, LPb/a;->b:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    move-result-object p0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->j()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, LPb/a;->a:Lvb/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lvb/b;->t()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v2, Lvb/b;

    invoke-direct {v2, v1, v1}, Lvb/b;-><init>(II)V

    sput-object v2, LPb/a;->a:Lvb/b;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lvb/b;->N(Z)V

    sget-object v1, LPb/a;->a:Lvb/b;

    new-instance v2, LPb/a$b;

    invoke-direct {v2}, LPb/a$b;-><init>()V

    invoke-virtual {v1, v2}, Lvb/b;->d(LBb/e;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->s()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->r(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LPb/a;->a:Lvb/b;

    invoke-virtual {v2, v0, v1}, Lvb/b;->O(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, LPb/a;->a:Lvb/b;

    invoke-virtual {p0}, Lvb/b;->f()V

    sget-object p0, LPb/a;->c:LPb/b;

    sget-object v0, LPb/a;->a:Lvb/b;

    invoke-virtual {p0, v0}, LPb/b;->b(Lvb/a;)V

    invoke-static {p0}, Lda/h;->g(Lda/b;)V

    :cond_3
    return-void
.end method
