.class public final LQa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQa/d$b;,
        LQa/d$c;
    }
.end annotation


# static fields
.field public static final a:Laa/e;

.field public static final b:J = 0xa6L

.field public static final c:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ltc/h;",
            "LQa/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laa/e;

    invoke-direct {v0}, Laa/e;-><init>()V

    sput-object v0, LQa/d;->a:Laa/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa/e;->n(Z)V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, LQa/d;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    sput-object v0, LQa/d;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, LQa/d;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;FLQa/d$b;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "rayDistance",
            "frame",
            "throttled"
        }
    .end annotation

    invoke-virtual {p2}, LQa/d$b;->a()V

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lrc/a;->L()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-static {v2}, Lrc/a;->n(I)Ltc/h;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ltc/h;->q()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p2, LQa/d$b;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v3, p1, p3}, LQa/d;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ltc/h;FZ)Laa/a;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-ne v4, p0, :cond_4

    iget-object v4, p2, LQa/d$b;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ltc/h;FZ)Laa/a;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "touch",
            "maxDistance",
            "throttled"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, LQa/d;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQa/d$c;

    if-nez v2, :cond_1

    new-instance v2, LQa/d$c;

    invoke-direct {v2, v0}, LQa/d$c;-><init>(LQa/d$a;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {v2}, LQa/d;->d(LQa/d$c;)Z

    move-result v1

    iget v3, v2, LQa/d$c;->d:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    iget-boolean p3, v2, LQa/d$c;->e:Z

    if-eqz p3, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    iget-wide v3, v2, LQa/d$c;->c:J

    sub-long v3, v7, v3

    const-wide/16 v5, 0xa6

    cmp-long p3, v3, v5

    if-ltz p3, :cond_5

    goto :goto_1

    :cond_3
    iget-boolean p3, v2, LQa/d$c;->e:Z

    if-eqz p3, :cond_4

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    :goto_1
    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v3 .. v8}, LQa/d;->f(LQa/d$c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ltc/h;FJ)V

    :cond_5
    iget-object p0, v2, LQa/d$c;->a:Laa/a;

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0}, Laa/a;->getDistance()F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_7

    iget-object v0, v2, LQa/d$c;->a:Laa/a;

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static d(LQa/d$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    iget p0, p0, LQa/d$c;->b:I

    invoke-static {}, LK8/a;->k()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;F)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "maxDistance"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {}, Lrc/a;->L()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-static {v3}, Lrc/a;->n(I)Ltc/h;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ltc/h;->q()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    invoke-static {v1, v4, p1, v5}, LQa/d;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ltc/h;FZ)Laa/a;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-ne v4, p0, :cond_4

    return v5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static f(LQa/d$c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ltc/h;FJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cache",
            "camera",
            "touch",
            "maxDistance",
            "now"
        }
    .end annotation

    sget-object v0, LQa/d;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Ltc/h;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {}, LK8/a;->k()I

    move-result p2

    iput p2, p0, LQa/d$c;->b:I

    iput p3, p0, LQa/d$c;->d:F

    iput-wide p4, p0, LQa/d$c;->c:J

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LQa/d$c;->a:Laa/a;

    iput-boolean p2, p0, LQa/d$c;->e:Z

    return-void

    :cond_0
    sget-object p4, LQa/d;->a:Laa/e;

    new-instance p5, Laa/c;

    invoke-direct {p5, p1, p3}, Laa/c;-><init>(Laa/d;F)V

    invoke-virtual {p4, p5}, Laa/e;->y(Laa/c;)Laa/a;

    move-result-object p1

    iput-object p1, p0, LQa/d$c;->a:Laa/a;

    iput-boolean p2, p0, LQa/d$c;->e:Z

    return-void
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;F)LQa/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "maxDistance"
        }
    .end annotation

    new-instance v0, LQa/d$b;

    invoke-direct {v0}, LQa/d$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, LQa/d;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;FLQa/d$b;Z)V

    return-object v0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;F)LQa/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "maxDistance"
        }
    .end annotation

    new-instance v0, LQa/d$b;

    invoke-direct {v0}, LQa/d$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, LQa/d;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;FLQa/d$b;Z)V

    return-object v0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ltc/h;F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "touch",
            "maxDistance"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p1, p2, v0}, LQa/d;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ltc/h;FZ)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method
