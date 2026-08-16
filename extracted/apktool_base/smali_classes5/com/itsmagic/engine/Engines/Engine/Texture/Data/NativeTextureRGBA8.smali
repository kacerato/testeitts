.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;
.super Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
.source "SourceFile"


# static fields
.field public static final t:LM9/c;

.field public static final u:I = 0x4


# instance fields
.field private extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public j:I

.field public k:I

.field private keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public l:J

.field public final m:Z

.field public n:Z

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public p:Z

.field private pbd:Lcom/google/android/filament/Texture$g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

.field private rgba:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxb/d;

    invoke-direct {v0}, Lxb/d;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t:LM9/c;

    const-string v0, "native-texture-rgba8"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "config"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3
    iget-boolean v0, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications",
            "textureConfig"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    .line 7
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    .line 8
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    if-nez p4, :cond_0

    .line 9
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 10
    iput-boolean p3, p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    goto :goto_0

    .line 11
    :cond_0
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 12
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->callTryCreate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->u0(JIIZ)J

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    .line 15
    iget-wide p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    sget-object p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t:LM9/c;

    invoke-static {p0, p2, p3, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "state",
            "textureConfig"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    if-nez p3, :cond_0

    .line 19
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    goto :goto_0

    .line 20
    :cond_0
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    .line 22
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->callTryCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    .line 23
    iget-boolean p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-eqz p3, :cond_1

    .line 24
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/a;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)V

    .line 25
    :cond_1
    iget-boolean p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    const/4 v0, 0x1

    if-nez p3, :cond_3

    if-nez p1, :cond_3

    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 26
    new-instance p1, Ljava/io/File;

    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->d(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    if-eqz p1, :cond_2

    .line 28
    iget p3, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    .line 29
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->b:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    .line 30
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    .line 31
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->s:Ljava/lang/String;

    .line 32
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t:LM9/c;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to decode ASTC from file:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_3
    iget-boolean p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-nez p3, :cond_5

    .line 35
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->E0(JZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 36
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->D0(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    .line 37
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->C0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    .line 38
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->v0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    .line 39
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t:LM9/c;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void

    .line 40
    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load texture on c++ ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "loading assets is not implemented yet!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureConfig"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    goto :goto_0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    .line 47
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->callTryCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    .line 48
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t:LM9/c;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method private B0(J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetPixelsPointer(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private C0(J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalGetWidth(J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetWidth(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private E0(JZLjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "allowModifications",
            "path"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeLoadExternalFile(JZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private F0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeOnUploadFinished(J)V

    return-void
.end method

.method private G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->isNative()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->isNative()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->w()J

    move-result-wide v3

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalPaint(JJIIII)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->w()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativePaint(JJIIII)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Native paint failed!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getHeight()I

    move-result v1

    add-int v2, p4, p2

    add-int v3, p5, p3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    move v5, p2

    :goto_1
    if-ge v5, v2, :cond_4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_3

    int-to-float v7, v5

    int-to-float v8, p2

    sub-float/2addr v7, v8

    add-int/lit8 v8, p4, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    int-to-float v9, p3

    sub-float/2addr v8, v9

    add-int/lit8 v9, p5, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-int v7, v7

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v5, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->H(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method private H0(JIICCC)V
    .locals 1
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
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalSetPixelRGB(JIICCC)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeSetPixelRGB(JIICCC)V

    :goto_0
    return-void
.end method

.method private K0(JIIC)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalSetPixelB(JIIC)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeSetPixelB(JIIC)V

    :goto_0
    return-void
.end method

.method private L0(JIIC)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalSetPixelG(JIIC)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeSetPixelG(JIIC)V

    :goto_0
    return-void
.end method

.method private M0(JIIC)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalSetPixelR(JIIC)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeSetPixelR(JIIC)V

    :goto_0
    return-void
.end method

.method private N0()Z
    .locals 4

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    invoke-static {v0, v1}, Lcom/google/android/filament/Texture;->A(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->s:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->E0(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->D0(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->C0(J)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->v0(J)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASTC is not supported by the current backend and the fallback texture failed to load ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "ASTC is not supported by the current backend and no uncompressed fallback is available"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private O0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_3

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    invoke-static {v2, v3}, Lcom/google/android/filament/Texture;->A(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$f;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    if-eqz v2, :cond_0

    array-length v2, v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->c:I

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    move v12, v3

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v11

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    sget-object v7, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v8, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    new-instance v3, Lcom/google/android/filament/Texture$a;

    invoke-direct {v3}, Lcom/google/android/filament/Texture$a;-><init>()V

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->f:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v3, v1}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v10

    sget-object v14, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    const/4 v15, 0x1

    const/16 v13, 0x8

    const/16 v16, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->M(Lcom/google/android/filament/TextureSampler;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v2, "ASTC internal format is not supported by the current backend"

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v2, "ASTC texture data is not loaded"

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private P0(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levels"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v7

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    sget-object v4, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v1, Lcom/google/android/filament/Texture$a;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$a;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v6, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/google/android/filament/Texture$f;->SRGB8_A8:Lcom/google/android/filament/Texture$f;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    :goto_0
    invoke-virtual {v1, v6}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v6

    const/16 v9, 0x8

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->M(Lcom/google/android/filament/TextureSampler;)V

    :goto_1
    return-void
.end method

.method private static synthetic R0(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->deleteBuffer(J)V

    return-void
.end method

.method public static synthetic T(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->R0(J)V

    return-void
.end method

.method public static synthetic U(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    return p0
.end method

.method public static U0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "applyOGL",
            "config",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;-><init>()V

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->n(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {v1, p0, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->e(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    const-string p3, ".ivo"

    invoke-static {p1, p3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;->ONLY_TEXTURE:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    invoke-virtual {p3, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->b(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object p3

    invoke-static {p0, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lc4/a;->j(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->X0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->e(Ljava/lang/Runnable;)Z

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic V(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    return p1
.end method

.method public static V0(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "applyOGL",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->n(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)Z

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->q(Ljava/lang/String;Landroid/content/Context;Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {v1, p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->e(Ljava/lang/Runnable;)Z

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic W(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    return-wide v0
.end method

.method public static W0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "applyOGL",
            "config",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->o(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Z)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {p1, p0, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->e(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method

.method private X0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/a;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;)V

    :cond_0
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->d(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->b:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->s:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode ASTC from file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->E0(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->D0(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->C0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->v0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    return-void

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load texture on c++ ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "loading assets is not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic Y(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->P0(I)V

    return-void
.end method

.method private Y0()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic Z(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    return p0
.end method

.method public static synthetic a0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    return p0
.end method

.method private a1(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;Ljava/lang/Runnable;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "post"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->O0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    if-eqz v0, :cond_4

    array-length v1, v0

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    array-length v0, v0

    if-le v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    array-length v3, v3

    :cond_1
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->s0(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object p2

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->c:I

    int-to-long v7, v1

    iget-object v9, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->d:I

    const/4 v5, 0x0

    move-object v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->g:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    array-length v1, v0

    if-ge v2, v1, :cond_3

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->c:I

    int-to-long v7, v1

    iget-object v9, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->e:Lcom/google/android/filament/Texture$b;

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;->d:I

    move v5, v2

    move-object v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "ASTC mip data is missing"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private b1(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const-string v0, ")"

    if-ltz p1, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") needs to be >= 0 and < height("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") needs to be >= 0 and < width("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic c0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p0
.end method

.method private callLostOGLContext(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalLostOGLContext(J)F

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeLostOGLContext(J)F

    :goto_0
    return-void
.end method

.method private callTryCreate()J
    .locals 2

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalTryCreate()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeTryCreate()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static synthetic d0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->rgba:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static deleteBuffer(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalDeleteBuffer(J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeDeleteBuffer(J)V

    :goto_0
    return-void
.end method

.method public static synthetic e0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->rgba:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static synthetic f0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic g0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p1
.end method

.method public static synthetic h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic i0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->pbd:Lcom/google/android/filament/Texture$g;

    return-object p1
.end method

.method public static synthetic j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->F0(J)V

    return-void
.end method

.method public static synthetic k0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    return p1
.end method

.method public static synthetic l0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->D0(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    return-object p0
.end method

.method public static synthetic n0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    return p0
.end method

.method public static native nativeAllocBuffer(JIIZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "widht",
            "height",
            "allowModifications"
        }
    .end annotation
.end method

.method public static native nativeCriticalAllocBuffer(JIIZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "widht",
            "height",
            "allowModifications"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalGetHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalGetPixelA(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalGetPixelB(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalGetPixelG(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalGetPixelR(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalGetWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalIsAlphaUsed(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalLostOGLContext(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalPaint(JJIIII)Z
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
            "pointer",
            "otherPointer",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalSetPixelA(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalSetPixelB(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalSetPixelG(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalSetPixelR(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalSetPixelRGB(JIICCC)V
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
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCriticalSetPixelRGBA(JIICCCC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalTryCreate()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetPixelA(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation
.end method

.method private static native nativeGetPixelB(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation
.end method

.method private static native nativeGetPixelG(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation
.end method

.method private static native nativeGetPixelR(JII)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation
.end method

.method private static native nativeGetPixelsPointer(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeIsAlphaUsed(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeLoadExternalFile(JZLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "allowModifications",
            "path"
        }
    .end annotation
.end method

.method private static native nativeLostOGLContext(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeOnUploadFinished(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativePaint(JJIIII)Z
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
            "pointer",
            "otherPointer",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation
.end method

.method private static native nativeSetPixelA(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation
.end method

.method private static native nativeSetPixelB(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation
.end method

.method private static native nativeSetPixelG(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation
.end method

.method private static native nativeSetPixelR(JIIC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation
.end method

.method private static native nativeSetPixelRGB(JIICCC)V
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
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation
.end method

.method private static native nativeSetPixelRGBA(JIICCCC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method public static synthetic o0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Z
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->N0()Z

    move-result p0

    return p0
.end method

.method public static synthetic p0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->a1(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->B0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private s0(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "post",
            "remainingUploads"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$c;

    invoke-direct {v0, p0, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private t0(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$b;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private u0(JIIZ)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "width",
            "height",
            "allowModifications"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalAllocBuffer(JIIZ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeAllocBuffer(JIIZ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private v0(J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalGetHeight(J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetHeight(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private validateAndThrow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer is garbage!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x0(JII)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalGetPixelB(JII)C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetPixelB(JII)C

    move-result p1

    :goto_0
    return p1
.end method

.method private y0(JII)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalGetPixelG(JII)C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetPixelG(JII)C

    move-result p1

    :goto_0
    return p1
.end method

.method private z0(JII)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalGetPixelR(JII)C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetPixelR(JII)C

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public A()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    return v0
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeTexture",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    add-int v0, p4, p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getWidth()I

    move-result v1

    const-string v2, ")"

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    const-string v0, "startX can\'t be < 0"

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativeTexture can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "height + startY ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") can\'t be > this.height ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "width + startX ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") can\'t be > this.width ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(IIFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    invoke-static {p4}, LNc/b;->I(F)F

    move-result p4

    invoke-static {p5}, LNc/b;->I(F)F

    move-result p5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    mul-float/2addr p4, v0

    float-to-int p3, p4

    int-to-char v6, p3

    mul-float/2addr p5, v0

    float-to-int p3, p5

    int-to-char v7, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->H0(JIICCC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final D0(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalIsAlphaUsed(J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeIsAlphaUsed(J)I

    move-result p1

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return p2
.end method

.method public E(IIFFFF)V
    .locals 9
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
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    invoke-static {p4}, LNc/b;->I(F)F

    move-result p4

    invoke-static {p5}, LNc/b;->I(F)F

    move-result p5

    invoke-static {p6}, LNc/b;->I(F)F

    move-result p6

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    mul-float/2addr p4, v0

    float-to-int p3, p4

    int-to-char v6, p3

    mul-float/2addr p5, v0

    float-to-int p3, p5

    int-to-char v7, p3

    mul-float/2addr p6, v0

    float-to-int p3, p6

    int-to-char v8, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->I0(JIICCCC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public F(IIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    const/16 v0, 0xff

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p3, v0}, LNc/b;->F(III)I

    move-result p3

    invoke-static {v1, p4, v0}, LNc/b;->F(III)I

    move-result p4

    invoke-static {v1, p5, v0}, LNc/b;->F(III)I

    move-result p5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    int-to-char v5, p3

    int-to-char v6, p4

    int-to-char v7, p5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->H0(JIICCC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public G(IIIIII)V
    .locals 9
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
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    const/16 v0, 0xff

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p3, v0}, LNc/b;->F(III)I

    move-result p3

    invoke-static {v1, p4, v0}, LNc/b;->F(III)I

    move-result p4

    invoke-static {v1, p5, v0}, LNc/b;->F(III)I

    move-result p5

    invoke-static {v1, p6, v0}, LNc/b;->F(III)I

    move-result p6

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    int-to-char v5, p3

    int-to-char v6, p4

    int-to-char v7, p5

    int-to-char v8, p6

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->I0(JIICCCC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public H(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "color"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p3

    iget-wide v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-char v8, v0

    mul-float/2addr v1, v3

    float-to-int v0, v1

    int-to-char v9, v0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    int-to-char v10, v0

    mul-float/2addr p3, v3

    float-to-int p3, p3

    int-to-char v11, p3

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->I0(JIICCCC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public I(IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->J0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final I0(JIICCCC)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalSetPixelRGBA(JIICCCC)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeSetPixelRGBA(JIICCCC)V

    :goto_0
    return-void
.end method

.method public J(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, LNc/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->J0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final J0(JIIC)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalSetPixelA(JIIC)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeSetPixelA(JIIC)V

    :goto_0
    return-void
.end method

.method public K(IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->K0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public L(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, LNc/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->K0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public M(IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->L0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public N(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, LNc/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->L0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public O(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->M(Lcom/google/android/filament/TextureSampler;)V

    :cond_1
    return-void
.end method

.method public P(IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->M0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Q(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, LNc/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->M0(JIIC)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final Q0()V
    .locals 0

    invoke-static {}, LK8/a;->G()V

    return-void
.end method

.method public S(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ofx",
            "ofy",
            "w",
            "h",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->rgba:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/filament/Texture$g;

    sget-object v2, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v3, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->pbd:Lcom/google/android/filament/Texture$g;

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$e;

    invoke-direct {v2, p0, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->f()Lcom/google/android/filament/RenderTarget;

    move-result-object v4

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->pbd:Lcom/google/android/filament/Texture$g;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/filament/Renderer;->n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "post"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Can not reapply a texture without allow modifications flag"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v8

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    sget-object v4, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v1, Lcom/google/android/filament/Texture$a;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$a;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v6, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/android/filament/Texture$f;->SRGB8_A8:Lcom/google/android/filament/Texture$f;

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    :goto_1
    invoke-virtual {v1, v6}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v6

    const/16 v9, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->M(Lcom/google/android/filament/TextureSampler;)V

    :goto_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->u(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    :goto_3
    return-void
.end method

.method public bytesPerItem()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->a()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Double destroy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/Runnable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/lang/Runnable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture was deleted from memory"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    return v0
.end method

.method public getPointerCritical()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    return v0
.end method

.method public h(Ljava/io/File;ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "quality",
            "exportFormat"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestOpenglEngineThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->B()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez v0, :cond_6

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_3

    move v7, v1

    :goto_3
    if-ge v7, v4, :cond_2

    invoke-virtual {p0, v6, v7, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v8, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$f;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v2, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    goto :goto_4

    :cond_4
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, p1, p2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, p1, p2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_6
    if-eq v0, v2, :cond_7

    :goto_4
    return-void

    :cond_7
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "GPU data extraction is not available yet, its a comming update, now, you will need to use writable textures"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Texture is not writable and and theres no GPU data to be exported"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->z0(JII)C

    move-result v0

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->y0(JII)C

    move-result v1

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->x0(JII)C

    move-result v2

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->w0(JII)C

    move-result p1

    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Y(IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p3
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public l(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->w0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public lostOGLContext()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->callLostOGLContext(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->x0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public n(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->y0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nativeUsedBytes()J
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->nativeUsedBytes()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->getHeight()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->bytesPerItem()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1a

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public o(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->z0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->w0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->x0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r0(Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v0, "Can not reapply a texture without allow modifications flag"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->N0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->a1(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v0, "ASTC upload buffer is no longer available"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->B0(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    iget-boolean v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    if-nez v2, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-gtz v3, :cond_5

    const/4 v3, 0x1

    :cond_5
    :goto_1
    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->P0(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->j:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->k:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->r(JILjava/lang/Runnable;)V

    return-void

    :cond_6
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v0, "apply failed"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->y0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDeleted()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setDeleted()V

    return-void
.end method

.method public u(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->z0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public v()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    return-object v0
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->l:J

    return-wide v0
.end method

.method public final w0(JII)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeCriticalGetPixelA(JII)C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->nativeGetPixelA(JII)C

    move-result p1

    :goto_0
    return p1
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->p:Z

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    return v0
.end method
