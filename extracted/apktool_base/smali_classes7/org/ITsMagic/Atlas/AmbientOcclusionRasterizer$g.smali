.class public Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final h:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public i:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    return-void
.end method
