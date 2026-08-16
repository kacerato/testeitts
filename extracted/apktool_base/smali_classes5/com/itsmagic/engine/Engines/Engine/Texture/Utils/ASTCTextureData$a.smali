.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lcom/google/android/filament/Texture$b;

.field public final f:Lcom/google/android/filament/Texture$f;

.field public final g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

.field public h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;


# direct methods
.method public constructor <init>(IIIZLcom/google/android/filament/Texture$b;Lcom/google/android/filament/Texture$f;[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "levelCount",
            "packedMipChain",
            "compressedFormat",
            "internalFormat",
            "mipLevels",
            "storage"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->c:I

    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->d:Z

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method
