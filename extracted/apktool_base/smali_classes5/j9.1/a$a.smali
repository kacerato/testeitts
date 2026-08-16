.class public Lj9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public c:F

.field public d:F

.field public e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

.field public f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public i:LJAVARuntime/Collision$Contact;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lj9/a$a;->c:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lj9/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lj9/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput v1, p0, Lj9/a$a;->c:F

    iput v1, p0, Lj9/a$a;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lj9/a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object v0, p0, Lj9/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public b()LJAVARuntime/Collision$Contact;
    .locals 1

    iget-object v0, p0, Lj9/a$a;->i:LJAVARuntime/Collision$Contact;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Collision$Contact;

    invoke-direct {v0, p0}, LJAVARuntime/Collision$Contact;-><init>(Lj9/a$a;)V

    iput-object v0, p0, Lj9/a$a;->i:LJAVARuntime/Collision$Contact;

    :cond_0
    return-object v0
.end method
