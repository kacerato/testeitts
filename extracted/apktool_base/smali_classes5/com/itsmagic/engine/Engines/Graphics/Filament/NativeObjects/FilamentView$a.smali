.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
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

    invoke-static {p1, p2}, LQb/c;->q(J)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->e()Lge/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lge/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->f()Lge/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lge/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->h()Lge/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lge/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->i()Lge/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lge/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->j()Lge/X;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lge/X;->e(J)Ljava/lang/Object;

    return-void
.end method
