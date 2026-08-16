.class public final Ln9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lec/i;

.field public static volatile b:Z

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile d:Lec/e;

.field public static volatile e:Lec/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lec/i;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->MASKED:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v3, 0x1

    const v4, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v1, v4, v2, v3}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    sput-object v0, Ln9/c;->a:Lec/i;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ln9/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Ln9/c;->b(Z)Lec/h;

    move-result-object v1

    sget-object v2, Ln9/c;->a:Lec/i;

    const-string v3, "PoolImpostorLit"

    invoke-virtual {v1, v2, v3}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object v1

    sput-object v1, Ln9/c;->d:Lec/e;

    const/4 v1, 0x0

    invoke-static {v1}, Ln9/c;->b(Z)Lec/h;

    move-result-object v3

    const-string v4, "PoolImpostorUnlit"

    invoke-virtual {v3, v2, v4}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object v2

    sput-object v2, Ln9/c;->e:Lec/e;

    sget-object v2, Ln9/c;->d:Lec/e;

    if-eqz v2, :cond_0

    sget-object v2, Ln9/c;->e:Lec/e;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Ln9/c;->b:Z

    return-void
.end method

.method public static b(Z)Lec/h;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveLighting"
        }
    .end annotation

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v0, 0x8

    invoke-direct {v4, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "windEffect"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "captureHalfWidth"

    invoke-direct {v0, v1, v3, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v5, "captureHalfHeight"

    invoke-direct {v0, v1, v3, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v5, "capturePivotYOffset"

    invoke-direct {v0, v1, v3, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v5, "captureSourceScale"

    invoke-direct {v0, v1, v3, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "gsp_windDirection"

    invoke-direct {v0, v3, v2, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v3, "gsp_windIntensity"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v3, "gsp_windVerticality"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    new-instance v1, Lec/g;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v7, "albedo"

    invoke-direct {v1, v2, v3, v6, v7}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    new-instance v0, Lgc/a;

    const-string v2, "isLit"

    invoke-direct {v0, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lgc/e;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v6, "fragment.glsl"

    invoke-static {v6}, Ln9/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v0, v6}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v2, p0}, Lgc/e;->o(Ljava/lang/String;Z)V

    new-instance v7, Lec/h;

    if-eqz p0, :cond_0

    const-string v0, "vertex_lit.glsl"

    goto :goto_0

    :cond_0
    const-string v0, "vertex.glsl"

    :goto_0
    invoke-static {v0}, Ln9/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ln9/c$a;

    invoke-direct {v6, p0}, Ln9/c$a;-><init>(Z)V

    const/4 p0, 0x0

    move-object v0, v7

    move-object v1, v3

    move-object v3, v6

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;Z)V

    return-object v7
.end method

.method public static c(Z)Lec/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveLighting"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Ln9/c;->d:Lec/e;

    goto :goto_0

    :cond_0
    sget-object v0, Ln9/c;->e:Lec/e;

    :goto_0
    if-nez v0, :cond_2

    sget-boolean v1, Ln9/c;->b:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ln9/c;->a()V

    if-eqz p0, :cond_1

    sget-object p0, Ln9/c;->d:Lec/e;

    :goto_1
    move-object v0, p0

    goto :goto_2

    :cond_1
    sget-object p0, Ln9/c;->e:Lec/e;

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shaders/Pool/Impostor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Ln9/c;->b(Z)Lec/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ln9/c;->b(Z)Lec/h;

    move-result-object v3

    sget-object v4, Ln9/c;->a:Lec/i;

    invoke-virtual {v1, v4}, Lec/h;->E(Lec/i;)Z

    invoke-virtual {v3, v4}, Lec/h;->E(Lec/i;)Z

    invoke-virtual {v1, v4}, Lec/h;->t(Lec/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v4}, Lec/h;->t(Lec/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Ln9/c;->b:Z

    return-void
.end method

.method public static f()V
    .locals 6

    sget-boolean v0, Ln9/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ln9/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {v2}, Ln9/c;->b(Z)Lec/h;

    move-result-object v3

    invoke-static {v1}, Ln9/c;->b(Z)Lec/h;

    move-result-object v4

    sget-object v5, Ln9/c;->a:Lec/i;

    invoke-virtual {v3, v5}, Lec/h;->C(Lec/i;)Z

    invoke-virtual {v4, v5}, Lec/h;->C(Lec/i;)Z

    invoke-virtual {v3, v5}, Lec/h;->t(Lec/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v5}, Lec/h;->t(Lec/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_0
    sput-boolean v2, Ln9/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    sget-object v2, Ln9/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
