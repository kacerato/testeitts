.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/LightManager;

    move-result-object v0

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/LightManager;->L(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/LightManager;->v(I)V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->access$000()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
