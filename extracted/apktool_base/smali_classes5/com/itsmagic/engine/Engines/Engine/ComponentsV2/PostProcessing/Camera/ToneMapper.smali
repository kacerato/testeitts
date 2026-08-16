.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$g;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String; = "ToneMapper"

.field public static final J:Ljava/lang/Class;


# instance fields
.field public H:LJAVARuntime/Component;

.field private quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->J:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ToneMapper"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;->Filmic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;->Low:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    return-object p1
.end method

.method public static synthetic access$200(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->runSet(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs applyIfPresent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "name",
            "sig",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method private configChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private float01Entry(Ljava/lang/String;FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$g;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "label",
            "max",
            "acc"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$e;

    invoke-direct {v1, p0, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$g;F)V

    sget-object p2, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method private floatEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$g;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "acc"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$d;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$g;)V

    sget-object p2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method private resetToDefaultValues()V
    .locals 0

    return-void
.end method

.method private rgbEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$h;)LC5/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "acc"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$h;->get()[F

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>([F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$f;

    invoke-direct {v2, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$h;)V

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/i$b;)V

    invoke-static {p1, v1}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method private static runSet(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-static {p0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderPostProcessing()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->a:LRb/a;

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->y(LRb/a;)V

    :cond_2
    return-void
.end method

.method public applyInPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderPostProcessing()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->a:LRb/a;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->configChanged(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    new-instance p2, Lcom/google/android/filament/ColorGrading$a;

    invoke-direct {p2}, Lcom/google/android/filament/ColorGrading$a;-><init>()V

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p3, Lcom/google/android/filament/ToneMapper$e;

    invoke-direct {p3}, Lcom/google/android/filament/ToneMapper$e;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_1
    new-instance p3, Lcom/google/android/filament/ToneMapper$c;

    sget-object p4, Lcom/google/android/filament/ToneMapper$c$a;->GOLDEN:Lcom/google/android/filament/ToneMapper$c$a;

    invoke-direct {p3, p4}, Lcom/google/android/filament/ToneMapper$c;-><init>(Lcom/google/android/filament/ToneMapper$c$a;)V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_2
    new-instance p3, Lcom/google/android/filament/ToneMapper$c;

    sget-object p4, Lcom/google/android/filament/ToneMapper$c$a;->PUNCHY:Lcom/google/android/filament/ToneMapper$c$a;

    invoke-direct {p3, p4}, Lcom/google/android/filament/ToneMapper$c;-><init>(Lcom/google/android/filament/ToneMapper$c$a;)V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_3
    new-instance p3, Lcom/google/android/filament/ToneMapper$c;

    invoke-direct {p3}, Lcom/google/android/filament/ToneMapper$c;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_4
    new-instance p3, Lcom/google/android/filament/ToneMapper$a;

    invoke-direct {p3}, Lcom/google/android/filament/ToneMapper$a;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_5
    new-instance p3, Lcom/google/android/filament/ToneMapper$d;

    invoke-direct {p3}, Lcom/google/android/filament/ToneMapper$d;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_6
    new-instance p3, Lcom/google/android/filament/ToneMapper$g;

    invoke-direct {p3}, Lcom/google/android/filament/ToneMapper$g;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    goto :goto_0

    :pswitch_7
    new-instance p3, Lcom/google/android/filament/ToneMapper$f;

    invoke-direct {p3}, Lcom/google/android/filament/ToneMapper$f;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    :goto_0
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;->b()Lcom/google/android/filament/ColorGrading$c;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/filament/ColorGrading$a;->n(Lcom/google/android/filament/ColorGrading$c;)Lcom/google/android/filament/ColorGrading$a;

    new-instance p3, LRb/a;

    invoke-direct {p3, p2}, LRb/a;-><init>(Lcom/google/android/filament/ColorGrading$a;)V

    iput-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->a:LRb/a;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->d:Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disableFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view"
        }
    .end annotation

    return-void
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ToneMapper"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TONEMAPPER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    invoke-static {v0, v3, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->QUALITY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    invoke-static {v0, v3, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getQuality()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ToneMapper"

    return-object v0
.end method

.method public getTonnemapType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdvancedRendererRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newCacheInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    move-result-object v0

    return-object v0
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->resetToDefaultValues()V

    return-void
.end method

.method public setQuality(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->H:LJAVARuntime/Component;

    return-void
.end method

.method public setTonnemapType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;->AGX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->type:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->H:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ToneMapper;

    invoke-direct {v0, p0}, LJAVARuntime/ToneMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->H:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
