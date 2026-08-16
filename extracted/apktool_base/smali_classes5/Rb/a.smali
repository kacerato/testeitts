.class public LRb/a;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final d:LM9/c;


# instance fields
.field public final b:Lcom/google/android/filament/ColorGrading;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRb/a$a;

    invoke-direct {v0}, LRb/a$a;-><init>()V

    sput-object v0, LRb/a;->d:LM9/c;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/ColorGrading$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/ColorGrading$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;

    move-result-object p1

    iput-object p1, p0, LRb/a;->b:Lcom/google/android/filament/ColorGrading;

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->x()J

    move-result-wide v0

    sget-object p1, LRb/a;->d:LM9/c;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method


# virtual methods
.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    iget-boolean v0, p0, LRb/a;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->q(LRb/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LRb/a;->c:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "ColorGrading still bound to a view"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public e()Lcom/google/android/filament/ColorGrading;
    .locals 1

    iget-object v0, p0, LRb/a;->b:Lcom/google/android/filament/ColorGrading;

    return-object v0
.end method
