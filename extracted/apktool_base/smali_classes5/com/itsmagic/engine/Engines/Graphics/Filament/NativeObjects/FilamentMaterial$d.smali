.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "texture"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-void
.end method
