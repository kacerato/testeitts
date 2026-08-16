.class public LN8/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public i:I

.field public j:I

.field public final k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public final r:LN8/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, LN8/f;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v0, -0x3e7

    iput v0, p0, LN8/f;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LN8/f;->m:Z

    iput-boolean v0, p0, LN8/f;->n:Z

    iput-boolean v0, p0, LN8/f;->o:Z

    new-instance v0, LN8/b;

    invoke-direct {v0}, LN8/b;-><init>()V

    iput-object v0, p0, LN8/f;->r:LN8/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LN8/f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iput-object v0, p0, LN8/f;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v0, p0, LN8/f;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, LN8/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v0, p0, LN8/f;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, LN8/f;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, LN8/f;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, LN8/f;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, LN8/f;->i:I

    iput v0, p0, LN8/f;->j:I

    const/16 v1, -0x3e7

    iput v1, p0, LN8/f;->l:I

    iput-boolean v0, p0, LN8/f;->m:Z

    iput-boolean v0, p0, LN8/f;->n:Z

    iput-boolean v0, p0, LN8/f;->o:Z

    return-void
.end method
