.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/BounceGIRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final j:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final l:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public m:I


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

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    return-void
.end method
