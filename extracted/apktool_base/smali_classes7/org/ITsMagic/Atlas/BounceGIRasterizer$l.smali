.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/BounceGIRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final a:Laa/c;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Laa/c;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v4}, Laa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->a:Laa/c;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 6
    new-instance v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;-><init>()V

    return-void
.end method
