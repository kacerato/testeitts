.class public Lvb/b;
.super Lvb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvb/b$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LBb/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field public f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

.field public h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public volatile i:I

.field public volatile j:Lcom/google/android/filament/Texture$f;

.field public volatile k:Lcom/google/android/filament/Texture$b;

.field public volatile l:I

.field public volatile m:I

.field public volatile n:Z

.field public volatile o:I

.field public volatile p:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
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

    invoke-direct {p0}, Lvb/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lvb/b;->c:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lvb/b;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvb/b;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lvb/b;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lvb/b;->l:I

    iput v0, p0, Lvb/b;->m:I

    iput-boolean v0, p0, Lvb/b;->n:Z

    iput v0, p0, Lvb/b;->o:I

    iput-boolean v0, p0, Lvb/b;->p:Z

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lvb/b;->a:I

    iput p2, p0, Lvb/b;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(Lvb/b;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lvb/b;->E(II)V

    return-void
.end method


# virtual methods
.method public final A(Lvb/b$c;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layer",
            "whiteReferenceConfig"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lvb/b$c;->b(Lvb/b$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lvb/b;->p:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lvb/b;->k(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture file can\'t be found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lvb/b$c;->c(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    move-result-object p2

    invoke-static {p1}, Lvb/b$c;->a(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvb/b;->L(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)I

    move-result v0

    iget-boolean v1, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/a;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)V

    :cond_3
    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->d(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_6

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a:I

    iget v4, p0, Lvb/b;->a:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->b:I

    iget v4, p0, Lvb/b;->b:I

    if-ne v3, v4, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    :cond_6
    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v3, p0, Lvb/b;->a:I

    iget v4, p0, Lvb/b;->b:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    iget v3, p0, Lvb/b;->a:I

    iget v4, p0, Lvb/b;->b:I

    invoke-static {p2, v1, v3, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Array/NativeArrayTextureRGBA8;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;III)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Array/NativeArrayTextureRGBA8;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->p0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w0(I)V

    iget p2, p0, Lvb/b;->a:I

    iget v0, p0, Lvb/b;->b:I

    invoke-static {v1, p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_a

    if-eqz v2, :cond_8

    :try_start_2
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_8
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    return-object p1

    :cond_a
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to load ASTC data from encoded buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_b

    :try_start_4
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_b
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_c
    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    throw p1
.end method

.method public final B([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;Ljava/util/List;ILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "layers",
            "referenceLayerIndex",
            "whiteReferenceConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;",
            "Ljava/util/List<",
            "Lvb/b$c;",
            ">;I",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-ne v0, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvb/b$c;

    invoke-virtual {p0, v1, p4}, Lvb/b;->A(Lvb/b$c;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object v1

    aput-object v1, p1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lvb/b;->l:I

    return-void
.end method

.method public D()V
    .locals 3

    iget-object v0, p0, Lvb/b;->d:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lvb/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lvb/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LBb/e;

    if-eqz v2, :cond_0

    invoke-interface {v2}, LBb/e;->b()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final E(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "layer"
        }
    .end annotation

    iget-object v0, p0, Lvb/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lvb/b;->o:I

    if-eq p1, v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-object p1, p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    :cond_1
    iget-object p1, p0, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    aput-object v1, p1, p2

    :cond_2
    iget-object p1, p0, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    array-length v2, p1

    if-ge p2, v2, :cond_4

    aget-object p1, p1, p2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_3
    iget-object p1, p0, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    aput-object v1, p1, p2

    :cond_4
    iget p1, p0, Lvb/b;->l:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lvb/b;->l:I

    iget p1, p0, Lvb/b;->m:I

    sub-int/2addr p1, p2

    iput p1, p0, Lvb/b;->m:I

    iget p1, p0, Lvb/b;->m:I

    const/4 v2, 0x0

    if-gtz p1, :cond_5

    iput-boolean v2, p0, Lvb/b;->n:Z

    iput v2, p0, Lvb/b;->m:I

    iput-object v1, p0, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    iput-object v1, p0, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    goto :goto_0

    :cond_5
    move p2, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lvb/b;->D()V

    :cond_6
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, v0}, Lvb/b;->G([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method

.method public final G([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_1
    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final H()V
    .locals 1

    iget-object v0, p0, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-virtual {p0, v0}, Lvb/b;->I([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    return-void
.end method

.method public final I([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public J(LBb/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lvb/b;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lvb/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/b;->n()V

    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lvb/b;->C()V

    return-void
.end method

.method public final L(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final M(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;-><init>()V

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->n(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;->ONLY_TEXTURE:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->b(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->n(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)Z

    :goto_0
    return-object v0
.end method

.method public N(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "replaceMissingTexturesWithWhite"
        }
    .end annotation

    iput-boolean p1, p0, Lvb/b;->p:Z

    return-void
.end method

.method public O(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "ipp"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/b;->n()V

    :goto_0
    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvb/b;->C()V

    return-void
.end method

.method public P(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public Q()I
    .locals 1

    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final R([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;I)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "sessionId"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v15, v2

    :goto_0
    array-length v3, v0

    if-ge v15, v3, :cond_1

    aget-object v3, v0, v15

    if-eqz v3, :cond_0

    iget-object v11, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v11, :cond_0

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-eqz v5, :cond_0

    aget-object v4, v4, v2

    :try_start_0
    iget-object v5, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v8, v1, Lvb/b;->a:I

    iget v9, v1, Lvb/b;->b:I

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->c:I

    int-to-long v12, v6

    iget-object v14, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iget v10, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->d:I

    new-instance v7, Lvb/b$a;

    move/from16 v6, p2

    invoke-direct {v7, v1, v6, v15}, Lvb/b$a;-><init>(Lvb/b;II)V

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v3, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v17, v10

    move/from16 v10, v18

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-virtual/range {v3 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->F(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v18, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lvb/b;->o()V

    throw v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lvb/b;->o()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ASTC layer data is missing"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "filamentTexture is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "sessionId"
        }
    .end annotation

    iget-object v0, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v9, p1, v0

    if-eqz v9, :cond_0

    :try_start_0
    iget-object v1, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v6, p0, Lvb/b;->a:I

    iget v7, p0, Lvb/b;->b:I

    new-instance v10, Lvb/b$b;

    invoke-direct {v10, p0, p2, v0}, Lvb/b$b;-><init>(Lvb/b;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move v5, v0

    invoke-virtual/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->K(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lvb/b;->o()V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lvb/b;->o()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RGBA layer data is missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "filamentTexture is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final T([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_7

    array-length v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a:I

    iget v2, p0, Lvb/b;->a:I

    if-ne v1, v2, :cond_5

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->b:I

    iget v2, p0, Lvb/b;->b:I

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    const-string v3, "ASTC layer "

    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    if-eqz v4, :cond_3

    array-length v4, v4

    if-eqz v4, :cond_3

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a:I

    iget v5, p0, Lvb/b;->a:I

    if-ne v4, v5, :cond_2

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->b:I

    iget v5, p0, Lvb/b;->b:I

    if-ne v4, v5, :cond_2

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "All array texture layers must use the same ASTC compressed format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "All array texture layers must use the same ASTC internal format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resolution does not match the array texture resolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ASTC base layer resolution does not match the array texture resolution"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ASTC base layer is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ASTC upload data is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "attributeName"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public d(LBb/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lvb/b;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lvb/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lvb/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    invoke-virtual {p0}, Lvb/b;->n()V

    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvb/b;->C()V

    return-void
.end method

.method public f()V
    .locals 25

    move-object/from16 v1, p0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, v1, Lvb/b;->n:Z

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lvb/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v2, 0x0

    if-gtz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lvb/b;->m()V

    iput v2, v1, Lvb/b;->i:I

    iput v2, v1, Lvb/b;->l:I

    iput v2, v1, Lvb/b;->m:I

    invoke-virtual/range {p0 .. p0}, Lvb/b;->H()V

    invoke-virtual/range {p0 .. p0}, Lvb/b;->F()V

    invoke-virtual/range {p0 .. p0}, Lvb/b;->D()V

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lvb/b;->n:Z

    iput v2, v1, Lvb/b;->l:I

    iput v15, v1, Lvb/b;->m:I

    iget v2, v1, Lvb/b;->o:I

    add-int/lit8 v14, v2, 0x1

    iput v14, v1, Lvb/b;->o:I

    :try_start_0
    invoke-virtual {v1, v0}, Lvb/b;->q(Ljava/util/List;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x0

    const-string v3, "ASTC layer data is missing"

    if-gez v2, :cond_4

    :try_start_1
    iget-boolean v0, v1, Lvb/b;->p:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1, v15}, Lvb/b;->i(I)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v0, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_2

    iget v0, v1, Lvb/b;->i:I

    if-ne v0, v15, :cond_2

    iget-object v0, v1, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    sget-object v2, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v19, v14

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lvb/b;->m()V

    new-instance v9, Lcom/google/android/filament/TextureSampler;

    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v2, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    sget-object v3, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {v9, v0, v2, v3}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v3, v1, Lvb/b;->a:I

    iget v4, v1, Lvb/b;->b:I

    sget-object v5, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v6, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    sget-object v12, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    new-instance v2, Lcom/google/android/filament/Texture$a;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$a;-><init>()V

    invoke-virtual {v2, v12}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/filament/Texture$a;->b(I)Lcom/google/android/filament/Texture$a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lvb/b;->g()Lcom/google/android/filament/Texture$i;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    move-object v2, v0

    move-object v7, v12

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    move v13, v15

    move/from16 v19, v14

    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    iput-object v0, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput v15, v1, Lvb/b;->i:I

    move-object/from16 v0, v18

    iput-object v0, v1, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    const/4 v14, 0x0

    iput-object v14, v1, Lvb/b;->k:Lcom/google/android/filament/Texture$b;

    :goto_1
    iget-object v0, v1, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move/from16 v13, v19

    invoke-virtual {v1, v0, v13}, Lvb/b;->S([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move/from16 v24, v14

    move-object v14, v13

    move/from16 v13, v24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvb/b$c;

    invoke-static {v4}, Lvb/b$c;->a(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lvb/b;->A(Lvb/b$c;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v3

    iget-object v4, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    invoke-static {v3, v4}, Lcom/google/android/filament/Texture;->A(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$f;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v2, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v1, v2}, Lvb/b;->w(Lcom/google/android/filament/Texture$f;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v3, Lcom/google/android/filament/Texture$f;->SRGB8_A8:Lcom/google/android/filament/Texture$f;

    :goto_2
    move-object v12, v3

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lvb/b;->H()V

    invoke-virtual {v1, v15}, Lvb/b;->i(I)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v1, v3, v2, v0}, Lvb/b;->y([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;ZLjava/util/List;)V

    iget-object v0, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_7

    iget v0, v1, Lvb/b;->i:I

    if-ne v0, v15, :cond_7

    iget-object v0, v1, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    if-eq v0, v12, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v21, v13

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lvb/b;->m()V

    new-instance v9, Lcom/google/android/filament/TextureSampler;

    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v2, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    sget-object v3, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {v9, v0, v2, v3}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v3, v1, Lvb/b;->a:I

    iget v4, v1, Lvb/b;->b:I

    sget-object v5, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v6, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v2, Lcom/google/android/filament/Texture$a;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$a;-><init>()V

    invoke-virtual {v2, v12}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/filament/Texture$a;->b(I)Lcom/google/android/filament/Texture$a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lvb/b;->g()Lcom/google/android/filament/Texture$i;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    move-object v2, v0

    move-object v7, v12

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move/from16 v21, v13

    move v13, v15

    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    iput-object v0, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput v15, v1, Lvb/b;->i:I

    move-object/from16 v3, v20

    iput-object v3, v1, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    const/4 v0, 0x0

    iput-object v0, v1, Lvb/b;->k:Lcom/google/android/filament/Texture$b;

    :goto_5
    iget-object v0, v1, Lvb/b;->h:[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move/from16 v14, v21

    invoke-virtual {v1, v0, v14}, Lvb/b;->S([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)V

    return-void

    :cond_8
    move v14, v13

    invoke-virtual {v1, v15}, Lvb/b;->j(I)[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object v3

    iput-object v3, v1, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    aput-object v12, v3, v2

    invoke-virtual {v1, v3, v0, v2, v5}, Lvb/b;->B([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;Ljava/util/List;ILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iget-object v0, v1, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-virtual {v1, v0}, Lvb/b;->T([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    iget-object v0, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_a

    iget v0, v1, Lvb/b;->i:I

    if-ne v0, v15, :cond_a

    iget-object v0, v1, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    iget-object v2, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    if-eq v0, v2, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v23, v14

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lvb/b;->m()V

    new-instance v9, Lcom/google/android/filament/TextureSampler;

    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v2, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    sget-object v3, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {v9, v0, v2, v3}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v3, v1, Lvb/b;->a:I

    iget v4, v1, Lvb/b;->b:I

    sget-object v5, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v6, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    iget-object v7, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    new-instance v2, Lcom/google/android/filament/Texture$a;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$a;-><init>()V

    iget-object v8, v12, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v2, v8}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/filament/Texture$a;->b(I)Lcom/google/android/filament/Texture$a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lvb/b;->g()Lcom/google/android/filament/Texture$i;

    move-result-object v13

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    move-object v2, v0

    move-object/from16 v22, v12

    move-object v12, v13

    move v13, v15

    move/from16 v23, v14

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    iput-object v0, v1, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput v15, v1, Lvb/b;->i:I

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    iput-object v2, v1, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iput-object v0, v1, Lvb/b;->k:Lcom/google/android/filament/Texture$b;

    :goto_7
    iget-object v0, v1, Lvb/b;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move/from16 v2, v23

    invoke-virtual {v1, v0, v2}, Lvb/b;->R([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;I)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lvb/b;->o()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ArrayTexture is already uploading"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lcom/google/android/filament/Texture$i;
    .locals 3

    :try_start_0
    const-string v0, "SAMPLER_2D_ARRAY"

    invoke-static {v0}, Lcom/google/android/filament/Texture$i;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Filament does not support 2D array textures in this runtime"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final h()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvb/b$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lvb/b;->M(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    move-result-object v3

    iget-object v6, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->d:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->q(Ljava/lang/String;Landroid/content/Context;Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v7, Lvb/b$c;

    invoke-direct {v7, v3, v6, v1, v5}, Lvb/b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZLvb/b$a;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    iget-boolean v6, p0, Lvb/b;->p:Z

    if-eqz v6, :cond_2

    instance-of v6, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureFileNotFoundException;

    if-eqz v6, :cond_2

    new-instance v3, Lvb/b$c;

    invoke-direct {v3, v5, v5, v4, v5}, Lvb/b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZLvb/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    throw v3

    :cond_3
    :goto_3
    iget-boolean v3, p0, Lvb/b;->p:Z

    if-eqz v3, :cond_4

    new-instance v3, Lvb/b$c;

    invoke-direct {v3, v5, v5, v4, v5}, Lvb/b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZLvb/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture file can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v0
.end method

.method public final i(I)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureCount"
        }
    .end annotation

    new-array p1, p1, [Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-object p1
.end method

.method public final j(I)[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureCount"
        }
    .end annotation

    new-array p1, p1, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    return-object p1
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "referenceConfig"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v1, p0, Lvb/b;->a:I

    iget v2, p0, Lvb/b;->b:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lvb/b;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->p0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w0(I)V

    iget v2, p0, Lvb/b;->a:I

    iget v3, p0, Lvb/b;->b:I

    invoke-static {v0, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_2
    return-object p1

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to load white ASTC data from encoded buffer"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_4
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_5
    throw p1
.end method

.method public l()V
    .locals 2

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lvb/b;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lvb/b;->m()V

    const/4 v0, -0x1

    iput v0, p0, Lvb/b;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lvb/b;->l:I

    iput v0, p0, Lvb/b;->m:I

    invoke-virtual {p0}, Lvb/b;->H()V

    invoke-virtual {p0}, Lvb/b;->F()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ArrayTexture is uploading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V

    iput-object v1, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    :cond_0
    iput-object v1, p0, Lvb/b;->j:Lcom/google/android/filament/Texture$f;

    iput-object v1, p0, Lvb/b;->k:Lcom/google/android/filament/Texture$b;

    const/4 v0, -0x1

    iput v0, p0, Lvb/b;->i:I

    return-void
.end method

.method public final n()V
    .locals 2

    iget-boolean v0, p0, Lvb/b;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ArrayTexture is uploading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lvb/b;->l:I

    iput v0, p0, Lvb/b;->m:I

    iput-boolean v0, p0, Lvb/b;->n:Z

    iget v0, p0, Lvb/b;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvb/b;->o:I

    const/4 v0, -0x1

    iput v0, p0, Lvb/b;->i:I

    invoke-virtual {p0}, Lvb/b;->H()V

    invoke-virtual {p0}, Lvb/b;->F()V

    :try_start_0
    invoke-virtual {p0}, Lvb/b;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget v0, p0, Lvb/b;->a:I

    iget v1, p0, Lvb/b;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvb/b$c;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvb/b$c;

    invoke-static {v1}, Lvb/b$c;->b(Lvb/b$c;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lvb/b;->b:I

    return v0
.end method

.method public s()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lvb/b;->a:I

    return v0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lvb/b;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvb/b;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lvb/b;->l:I

    iget-object v1, p0, Lvb/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lvb/b;->p:Z

    return v0
.end method

.method public final w(Lcom/google/android/filament/Texture$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    sget-object v0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_4x4:Lcom/google/android/filament/Texture$f;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_6x6:Lcom/google/android/filament/Texture$f;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_8x8:Lcom/google/android/filament/Texture$f;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_10x10:Lcom/google/android/filament/Texture$f;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_12x12:Lcom/google/android/filament/Texture$f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lvb/b;->n:Z

    return v0
.end method

.method public final y([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "srgb",
            "layers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;",
            "Z",
            "Ljava/util/List<",
            "Lvb/b$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvb/b$c;

    invoke-virtual {p0, v1, p2}, Lvb/b;->z(Lvb/b$c;Z)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Lvb/b$c;Z)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layer",
            "srgb"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v1, p0, Lvb/b;->a:I

    iget v2, p0, Lvb/b;->b:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    :try_start_0
    invoke-static {p1}, Lvb/b$c;->b(Lvb/b$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lvb/b;->p:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lvb/b;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Texture file can\'t be found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lvb/b$c;->c(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    move-result-object v1

    invoke-static {p1}, Lvb/b$c;->a(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_2
    iget-boolean v2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-ne v2, p2, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvb/b;->L(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)I

    move-result p1

    iget-boolean p2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-eqz p2, :cond_3

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/a;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)V

    :cond_3
    iget-object p2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    iget v1, p0, Lvb/b;->a:I

    iget v2, p0, Lvb/b;->b:I

    invoke-static {p2, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Array/NativeArrayTextureRGBA8;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;III)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Array/NativeArrayTextureRGBA8;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_4
    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All array texture layers must use the same color space"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_6
    throw p1
.end method
