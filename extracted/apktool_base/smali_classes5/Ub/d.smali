.class public LUb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LUb/d$c;,
        LUb/d$b;
    }
.end annotation


# static fields
.field public static A:I = 0x0

.field public static B:I = 0xf

.field public static final C:F = 1.0f

.field public static final j:I = 0x7

.field public static k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static l:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static o:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static r:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static t:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static u:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static v:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static w:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static y:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public static z:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final c:LJAVARuntime/Color;

.field public final d:[F

.field public final e:[F

.field public final f:I

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "LJAVARuntime/GizmoElement;",
            "LUb/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LUb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, LUb/d;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    iput-object v0, p0, LUb/d;->c:LJAVARuntime/Color;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, LUb/d;->d:[F

    new-array v0, v0, [F

    iput-object v0, p0, LUb/d;->e:[F

    const/16 v0, 0x1f4

    iput v0, p0, LUb/d;->f:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, LUb/d;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LUb/d;->h:Ljava/util/HashMap;

    iput-boolean v2, p0, LUb/d;->i:Z

    return-void
.end method

.method public static b(LK5/b$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, LUb/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    const-string v1, "Invalid material"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v2}, LUb/b;->a(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_0

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, LUb/d;->l:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_3

    invoke-static {v2}, LUb/b;->n(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->l:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_2

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v0, LUb/d;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_5

    invoke-static {v2}, LUb/b;->c(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_4

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v0, LUb/d;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_7

    invoke-static {v2}, LUb/b;->o(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_6

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object v0, LUb/d;->o:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_9

    invoke-static {v2}, LUb/b;->f(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->o:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_8

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    sget-object v0, LUb/d;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_b

    invoke-static {v2}, LUb/b;->i(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_a

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    sget-object v0, LUb/d;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_d

    invoke-static {v2}, LUb/b;->g(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_c

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    sget-object v0, LUb/d;->r:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_f

    invoke-static {v2}, LUb/b;->j(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->r:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_e

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    sget-object v0, LUb/d;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_11

    invoke-static {v2}, LUb/b;->b(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_10

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    sget-object v0, LUb/d;->t:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_13

    invoke-static {v2}, LUb/b;->q(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->t:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_12

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    sget-object v0, LUb/d;->u:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_15

    invoke-static {v2}, LUb/b;->d(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->u:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_14

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    sget-object v0, LUb/d;->v:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_17

    invoke-static {v2}, LUb/b;->p(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->v:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_16

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    sget-object v0, LUb/d;->w:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_19

    invoke-static {v2}, LUb/b;->m(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->w:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_18

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    sget-object v0, LUb/d;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_1b

    invoke-static {v2}, LUb/b;->l(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_1a

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    sget-object v0, LUb/d;->y:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_1d

    invoke-static {v2}, LUb/b;->h(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->y:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_1c

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    sget-object v0, LUb/d;->z:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_1f

    invoke-static {v2}, LUb/b;->k(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v0

    sput-object v0, LUb/d;->z:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_1e

    sget v0, LUb/d;->A:I

    sget v1, LUb/d;->B:I

    invoke-interface {p0, v0, v1}, LK5/b$b;->b(II)V

    sget p0, LUb/d;->A:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LUb/d;->A:I

    return-void

    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-interface {p0}, LK5/b$b;->finished()V

    return-void
.end method

.method public static c(LUb/d$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logging"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, LUb/b;->a(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->n(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->c(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->o(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->f(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->i(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->g(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->j(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->b(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->q(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->d(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->p(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->m(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->l(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->h(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    invoke-static {v0}, LUb/b;->k(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-interface {p0}, LUb/d$c;->a()V

    return-void
.end method


# virtual methods
.method public final a(LUb/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iget-boolean v0, p1, LUb/d$b;->l:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, LQb/a;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p1, LUb/d$b;->a:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, LUb/d$b;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    iput-boolean v0, p1, LUb/d$b;->l:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(ZZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isWire",
            "drawInFront",
            "transparent",
            "dualFace"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    sget-object p1, LUb/d;->r:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_0

    :cond_0
    sget-object p1, LUb/d;->z:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_0
    return-object p1

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    sget-object p1, LUb/d;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_1

    :cond_2
    sget-object p1, LUb/d;->v:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_1
    return-object p1

    :cond_3
    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    sget-object p1, LUb/d;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_2

    :cond_4
    sget-object p1, LUb/d;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_2
    return-object p1

    :cond_5
    if-eqz p4, :cond_6

    sget-object p1, LUb/d;->l:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_3

    :cond_6
    sget-object p1, LUb/d;->t:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_3
    return-object p1

    :cond_7
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz p4, :cond_8

    sget-object p1, LUb/d;->q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_4

    :cond_8
    sget-object p1, LUb/d;->y:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_4
    return-object p1

    :cond_9
    if-eqz p2, :cond_b

    if-eqz p4, :cond_a

    sget-object p1, LUb/d;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_5

    :cond_a
    sget-object p1, LUb/d;->u:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_5
    return-object p1

    :cond_b
    if-eqz p3, :cond_d

    if-eqz p4, :cond_c

    sget-object p1, LUb/d;->o:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_6

    :cond_c
    sget-object p1, LUb/d;->w:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_6
    return-object p1

    :cond_d
    if-eqz p4, :cond_e

    sget-object p1, LUb/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto :goto_7

    :cond_e
    sget-object p1, LUb/d;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_7
    return-object p1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/d$b;

    invoke-virtual {p0, v1}, LUb/d;->i(LUb/d$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, LUb/d;->e()V

    return-void
.end method

.method public final g(LJAVARuntime/GizmoElement;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    invoke-virtual {p1}, LJAVARuntime/GizmoElement;->getColor()LJAVARuntime/Color;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LUb/d;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p1

    :cond_0
    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LUb/d;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :goto_0
    return-object p1
.end method

.method public final h(LJAVARuntime/GizmoElement;)LUb/d$b;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "albedo"

    new-instance v3, LUb/d$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, LUb/d$b;-><init>(LUb/d$a;)V

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getVertex()LJAVARuntime/Vertex;

    move-result-object v0

    iget-object v4, v0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-static {v0}, Lub/p;->K(LJAVARuntime/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    goto :goto_0

    :cond_0
    sget-object v0, Lyb/b;->g:Lub/p;

    :goto_0
    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getRenderMode()LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v5

    sget-object v6, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isDrawInFront()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isEnableTransparency()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isDualFaceRender()Z

    move-result v10

    invoke-virtual {v1, v5, v6, v9, v10}, LUb/d;->d(ZZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iput-object v11, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual/range {p0 .. p1}, LUb/d;->g(LJAVARuntime/GizmoElement;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    iget v12, v3, LUb/d$b;->m:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v12

    :goto_2
    move/from16 v18, v12

    goto :goto_3

    :cond_2
    iget v12, v3, LUb/d$b;->m:F

    goto :goto_2

    :goto_3
    iget-object v13, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v15

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v16

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v17

    const-string v14, "baseColor"

    invoke-virtual/range {v13 .. v18}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    if-nez v5, :cond_4

    :try_start_0
    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v5, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    sget-object v0, Lyb/b;->g:Lub/p;

    iget-object v5, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v5, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    sget-object v0, Lyb/b;->g:Lub/p;

    iget-object v5, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v5, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_4
    iget-object v0, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->k()V

    :goto_5
    new-instance v0, LRb/c;

    invoke-direct {v0}, LRb/c;-><init>()V

    iput-object v0, v3, LUb/d$b;->a:LRb/c;

    invoke-virtual/range {p0 .. p1}, LUb/d;->l(LJAVARuntime/GizmoElement;)Lcom/google/android/filament/RenderableManager$b;

    move-result-object v17

    const/4 v0, 0x7

    if-eqz v6, :cond_5

    move v2, v0

    goto :goto_6

    :cond_5
    move v2, v7

    :goto_6
    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v11, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v11, v7}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v11, v8}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->z(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->g(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->h(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/filament/RenderableManager$a;->x(I)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v12

    iget-object v13, v3, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v14, v3, LUb/d$b;->a:LRb/c;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v15

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v16

    const/16 v18, 0x0

    move-object v11, v5

    invoke-direct/range {v11 .. v18}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v5, v3, LUb/d$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v5, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setAllLayersOffExceptFor(I)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v2, v3, LUb/d$b;->a:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v2, v3, LUb/d$b;->a:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, LUb/d;->k(LJAVARuntime/GizmoElement;)[F

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iput-object v4, v3, LUb/d$b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    iput-object v0, v3, LUb/d$b;->e:Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v0

    iput-object v0, v3, LUb/d$b;->f:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getRenderMode()LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, v3, LUb/d$b;->g:I

    iput-boolean v6, v3, LUb/d$b;->h:Z

    iput-boolean v9, v3, LUb/d$b;->i:Z

    iput-boolean v10, v3, LUb/d$b;->j:Z

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isDeepDestroyVertexAfterCacheInvalidation()Z

    move-result v0

    iput-boolean v0, v3, LUb/d$b;->k:Z

    invoke-static {}, LK8/a;->k()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v3, LUb/d$b;->n:J

    invoke-virtual {v1, v3}, LUb/d;->a(LUb/d$b;)V

    return-object v3
.end method

.method public final i(LUb/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LUb/d;->o(LUb/d$b;)V

    iget-object v0, p1, LUb/d$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object v1, p1, LUb/d$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_1
    iget-object v0, p1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    iget-object v0, p1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    iput-object v1, p1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    :cond_2
    iget-object v0, p1, LUb/d$b;->a:LRb/c;

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, LRb/c;->destroyImmediate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    iput-object v1, p1, LUb/d$b;->a:LRb/c;

    :cond_3
    iget-boolean v0, p1, LUb/d$b;->k:Z

    if-eqz v0, :cond_4

    :try_start_4
    iget-object p1, p1, LUb/d$b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_4
    return-void
.end method

.method public final j([F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    mul-float/2addr v1, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v2, v2

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget p1, p1, v3

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final k(LJAVARuntime/GizmoElement;)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    invoke-virtual {p1}, LJAVARuntime/GizmoElement;->getMatrix()[F

    move-result-object v0

    invoke-virtual {p1}, LJAVARuntime/GizmoElement;->isScaleBasedCamera()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/16 v2, 0xc

    aget v2, v0, v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, v0, v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/16 v4, 0xe

    aget v4, v0, v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    sub-float/2addr v4, v1

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v0}, LUb/d;->j([F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, LJAVARuntime/GizmoElement;->getMaxScaleBasedCameraSize()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    cmpl-float v3, v1, p1

    if-lez v3, :cond_3

    move v1, p1

    :cond_3
    cmpg-float p1, v1, v2

    if-gtz p1, :cond_4

    return-object v0

    :cond_4
    iget-object p1, p0, LUb/d;->e:[F

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LUb/d;->e:[F

    aget v0, p1, v3

    mul-float/2addr v0, v1

    aput v0, p1, v3

    const/4 v0, 0x1

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x2

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x4

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x5

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x6

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/16 v0, 0x8

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/16 v0, 0x9

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    const/16 v0, 0xa

    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    return-object p1
.end method

.method public final l(LJAVARuntime/GizmoElement;)Lcom/google/android/filament/RenderableManager$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    invoke-virtual {p1}, LJAVARuntime/GizmoElement;->getRenderMode()LJAVARuntime/GizmoElement$RenderMode;

    move-result-object p1

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/filament/RenderableManager$b;->LINES:Lcom/google/android/filament/RenderableManager$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    :goto_0
    return-object p1
.end method

.method public final m()V
    .locals 1

    iget-boolean v0, p0, LUb/d;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LUb/d;->i:Z

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalGizmos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/GizmoElement;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LUb/a;->e()V

    invoke-virtual {p0}, LUb/d;->m()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gizmos"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJAVARuntime/GizmoElement;

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v3}, LJAVARuntime/GizmoElement;->getVertex()LJAVARuntime/Vertex;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, LJAVARuntime/GizmoElement;->getVertex()LJAVARuntime/Vertex;

    move-result-object v4

    iget-object v4, v4, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, LJAVARuntime/GizmoElement;->getVertex()LJAVARuntime/Vertex;

    move-result-object v4

    iget-object v4, v4, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    iget-object v4, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LUb/d$b;

    if-eqz v4, :cond_5

    iget-object v5, v4, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v5, :cond_5

    iget-object v5, v4, LUb/d$b;->a:LRb/c;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3, v4}, LUb/d;->p(LJAVARuntime/GizmoElement;LUb/d$b;)V

    invoke-virtual {p0, v4}, LUb/d;->a(LUb/d$b;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_5
    :goto_2
    invoke-virtual {p0, v3}, LUb/d;->h(LJAVARuntime/GizmoElement;)LUb/d$b;

    move-result-object v4

    iget-object v5, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {}, LK8/a;->k()I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v4, LUb/d$b;->n:J

    iput v1, v4, LUb/d$b;->o:I

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, LUb/d;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/d$b;

    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_9
    iget-wide v2, v1, LUb/d$b;->n:J

    invoke-static {}, LK8/a;->k()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, LUb/d;->o(LUb/d$b;)V

    iget v2, v1, LUb/d$b;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LUb/d$b;->o:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    invoke-virtual {p0, v1}, LUb/d;->i(LUb/d$b;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :goto_6
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw p1
.end method

.method public final o(LUb/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iget-boolean v0, p1, LUb/d$b;->l:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, LQb/a;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p1, LUb/d$b;->a:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-boolean v0, p1, LUb/d$b;->l:Z

    :cond_0
    return-void
.end method

.method public final p(LJAVARuntime/GizmoElement;LUb/d$b;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "g",
            "c"
        }
    .end annotation

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getVertex()LJAVARuntime/Vertex;

    move-result-object v0

    iget-object v2, v0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getRenderMode()LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getRenderMode()LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v0

    sget-object v6, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v6, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isDrawInFront()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isEnableTransparency()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isDualFaceRender()Z

    move-result v10

    iget-object v11, v1, LUb/d$b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-ne v11, v2, :cond_2

    iget-object v11, v1, LUb/d$b;->e:Ljava/lang/Object;

    if-ne v11, v3, :cond_2

    iget-object v11, v1, LUb/d$b;->f:Ljava/lang/Object;

    if-ne v11, v4, :cond_2

    iget v11, v1, LUb/d$b;->g:I

    if-eq v11, v5, :cond_1

    goto :goto_1

    :cond_1
    move v11, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v7

    :goto_2
    iget-boolean v12, v1, LUb/d$b;->h:Z

    if-eq v12, v6, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    iget-boolean v13, v1, LUb/d$b;->i:Z

    if-eq v13, v9, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    move v13, v8

    :goto_4
    iget-boolean v14, v1, LUb/d$b;->j:Z

    if-eq v14, v10, :cond_5

    move v14, v7

    goto :goto_5

    :cond_5
    move v14, v8

    :goto_5
    iget v15, v1, LUb/d$b;->g:I

    const/16 v16, 0x0

    if-ne v15, v5, :cond_7

    if-nez v12, :cond_7

    if-nez v13, :cond_7

    if-nez v14, :cond_7

    iget-object v13, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v13, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v13, p0

    goto :goto_7

    :cond_7
    :goto_6
    iget-object v13, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v13, :cond_8

    move-object/from16 v16, v13

    :cond_8
    move-object/from16 v13, p0

    invoke-virtual {v13, v0, v6, v9, v10}, LUb/d;->d(ZZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v14

    iput-object v14, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    :goto_7
    invoke-virtual/range {p0 .. p1}, LUb/d;->g(LJAVARuntime/GizmoElement;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v14

    iget v15, v1, LUb/d$b;->m:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v15

    :goto_8
    move/from16 v22, v15

    goto :goto_9

    :cond_9
    iget v15, v1, LUb/d$b;->m:F

    goto :goto_8

    :goto_9
    iget-object v15, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v19

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v20

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v21

    const-string v18, "baseColor"

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v22}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    if-eqz v0, :cond_a

    iget-object v0, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->k()V

    goto :goto_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-static {v0}, Lub/p;->K(LJAVARuntime/Texture;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    goto :goto_a

    :cond_b
    sget-object v0, Lyb/b;->g:Lub/p;

    :goto_a
    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v14

    const-string v15, "albedo"

    if-eqz v14, :cond_c

    :try_start_0
    iget-object v14, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v14, v15}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    sget-object v0, Lyb/b;->g:Lub/p;

    iget-object v14, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v14, v15}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :cond_c
    :try_start_2
    sget-object v0, Lyb/b;->g:Lub/p;

    iget-object v14, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v14, v15}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    if-nez v11, :cond_e

    if-eqz v12, :cond_d

    goto :goto_c

    :cond_d
    if-eqz v16, :cond_11

    iget-object v0, v1, LUb/d$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_11

    iget-object v2, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v8, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    goto :goto_e

    :cond_e
    :goto_c
    invoke-virtual/range {p0 .. p1}, LUb/d;->l(LJAVARuntime/GizmoElement;)Lcom/google/android/filament/RenderableManager$b;

    move-result-object v23

    const/4 v0, 0x7

    if-eqz v6, :cond_f

    move v11, v0

    goto :goto_d

    :cond_f
    move v11, v7

    :goto_d
    iget-object v12, v1, LUb/d$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v12, :cond_10

    :try_start_3
    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_10
    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v14, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v14, v7}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v14, v8}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/google/android/filament/RenderableManager$a;->x(I)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v18

    iget-object v7, v1, LUb/d$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v8, v1, LUb/d$b;->a:LRb/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v21

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v17, v12

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v17 .. v24}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v12, v1, LUb/d$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v12, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setAllLayersOffExceptFor(I)V

    iput-object v2, v1, LUb/d$b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v3, v1, LUb/d$b;->e:Ljava/lang/Object;

    iput-object v4, v1, LUb/d$b;->f:Ljava/lang/Object;

    iput v5, v1, LUb/d$b;->g:I

    :cond_11
    :goto_e
    if-eqz v16, :cond_12

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->destroyImmediate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_12
    iput-boolean v6, v1, LUb/d$b;->h:Z

    iput-boolean v9, v1, LUb/d$b;->i:Z

    iput-boolean v10, v1, LUb/d$b;->j:Z

    invoke-virtual/range {p1 .. p1}, LJAVARuntime/GizmoElement;->isDeepDestroyVertexAfterCacheInvalidation()Z

    move-result v0

    iput-boolean v0, v1, LUb/d$b;->k:Z

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v2, v1, LUb/d$b;->a:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/filament/TransformManager;->o(I)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, LUb/d$b;->a:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    :cond_13
    iget-object v1, v1, LUb/d$b;->a:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, LUb/d;->k(LJAVARuntime/GizmoElement;)[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method
