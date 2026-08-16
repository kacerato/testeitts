.class public final LUb/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUb/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:LRb/c;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:F

.field public n:J

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LUb/d$b;->l:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    iput v0, p0, LUb/d$b;->m:F

    return-void
.end method

.method public synthetic constructor <init>(LUb/d$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, LUb/d$b;-><init>()V

    return-void
.end method
