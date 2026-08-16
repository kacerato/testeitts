.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/filament/Texture$b;

.field public final f:Lcom/google/android/filament/Texture$f;


# direct methods
.method public constructor <init>([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;IIILcom/google/android/filament/Texture$b;Lcom/google/android/filament/Texture$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "faces",
            "firstLevel",
            "baseResolution",
            "levelCount",
            "compressedFormat",
            "internalFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->c:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->d:I

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->e:Lcom/google/android/filament/Texture$b;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->f:Lcom/google/android/filament/Texture$f;

    return-void
.end method
