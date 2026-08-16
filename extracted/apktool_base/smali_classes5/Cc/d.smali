.class public LCc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LCc/a;

.field public static final b:I

.field public static c:Z

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LCc/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LCc/a;-><init>(I)V

    sput-object v0, LCc/d;->a:LCc/a;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    shl-int v3, v1, v0

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput v2, LCc/d;->b:I

    sput-boolean v1, LCc/d;->c:Z

    const/4 v0, -0x1

    sput v0, LCc/d;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    sget-object v0, LCc/d;->a:LCc/a;

    invoke-virtual {v0}, LCc/a;->d()I

    move-result v1

    if-le v1, p0, :cond_0

    invoke-virtual {v0, p0}, LCc/a;->a(I)I

    move-result p0

    return p0

    :cond_0
    sget p0, LCc/d;->b:I

    return p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LCc/d;->c:Z

    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-boolean v1, LCc/d;->c:Z

    if-nez v1, :cond_2

    sget v1, LCc/d;->d:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->j()I

    move-result v2

    if-eq v1, v2, :cond_6

    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, LCc/d;->c:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->j()I

    move-result v2

    sput v2, LCc/d;->d:I

    sget-object v3, LCc/d;->a:LCc/a;

    invoke-virtual {v3, v2}, LCc/a;->b(I)V

    move v2, v1

    :goto_0
    sget v3, LCc/d;->d:I

    if-ge v2, v3, :cond_6

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v3

    iput v2, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    invoke-static {}, LK8/a;->k()I

    move-result v4

    iput v4, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    move v4, v1

    :goto_1
    sget v5, LCc/d;->d:I

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, LCc/d;->a:LCc/a;

    invoke-virtual {v5, v2, v4, v1}, LCc/a;->c(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sput-boolean v0, LCc/d;->c:Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sput-boolean v0, LCc/d;->c:Z

    :cond_6
    return-void
.end method
