.class public Lx4/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public c:LAc/b;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lx4/a$e;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx4/a$e;->f:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lx4/a$e;->g:F

    return-void
.end method

.method public static synthetic a(Lx4/a$e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx4/a$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lx4/a$e;)Z
    .locals 0

    iget-boolean p0, p0, Lx4/a$e;->f:Z

    return p0
.end method

.method public static synthetic c(Lx4/a$e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx4/a$e;->f:Z

    return p1
.end method

.method public static synthetic d(Lx4/a$e;)Z
    .locals 0

    iget-boolean p0, p0, Lx4/a$e;->e:Z

    return p0
.end method

.method public static synthetic e(Lx4/a$e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx4/a$e;->e:Z

    return p1
.end method

.method public static synthetic f(Lx4/a$e;)LAc/b;
    .locals 0

    iget-object p0, p0, Lx4/a$e;->c:LAc/b;

    return-object p0
.end method

.method public static synthetic g(Lx4/a$e;)F
    .locals 0

    iget p0, p0, Lx4/a$e;->g:F

    return p0
.end method

.method public static synthetic h(Lx4/a$e;F)F
    .locals 0

    iput p1, p0, Lx4/a$e;->g:F

    return p1
.end method

.method public static synthetic i(Lx4/a$e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lx4/a$e;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lx4/a$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lx4/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Z)Lx4/a$e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "animationMask",
            "editable"
        }
    .end annotation

    new-instance v0, Lx4/a$e;

    invoke-direct {v0}, Lx4/a$e;-><init>()V

    iput-object p0, v0, Lx4/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p0, :cond_0

    new-instance v1, LAc/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LAc/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lx4/a$e;->c:LAc/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "Object"

    :goto_1
    iput-object p0, v0, Lx4/a$e;->d:Ljava/lang/String;

    iput-boolean p2, v0, Lx4/a$e;->e:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, v0, Lx4/a$e;->c:LAc/b;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->f(LAc/b;)F

    move-result p0

    iput p0, v0, Lx4/a$e;->g:F

    :cond_2
    return-object v0
.end method

.method public static l(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Lx4/a$e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "animationMask"
        }
    .end annotation

    new-instance v0, Lx4/a$e;

    invoke-direct {v0}, Lx4/a$e;-><init>()V

    iput-object p0, v0, Lx4/a$e;->c:LAc/b;

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lx4/a$e;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx4/a$e;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->f(LAc/b;)F

    move-result p0

    iput p0, v0, Lx4/a$e;->g:F

    :cond_0
    return-object v0
.end method
