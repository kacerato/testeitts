.class public abstract LOb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOb/a$b;,
        LOb/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lhc/a;->a()V

    invoke-static {}, LOb/a$b;->a()V

    return-void
.end method

.method public static c(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-static {p0, p1}, Lfc/a;->g(II)V

    return-void
.end method

.method public static d()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;-><init>()V

    sput-object v0, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-static {}, Lyb/b;->q()V

    invoke-static {}, Lyb/b;->a()V

    invoke-static {}, Lfc/a;->c()V

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "VFX Update"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {}, Loc/a;->u()V

    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Gizmo preparation"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    :cond_1
    sget-object p0, LOb/a$b;->b:LUb/d;

    invoke-static {}, LUb/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, LUb/d;->n(Ljava/util/List;)V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, LUb/a;->b()V

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->a0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lhc/a;->c(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    :cond_0
    return-void
.end method
