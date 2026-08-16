.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;
    }
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "KeyboardAxisMapper"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Input/Axis;

.field public F:Z

.field public G:LJAVARuntime/Component;

.field private axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private negativeKeyboardKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outputAxis:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private positiveKeyboardKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "KeyboardAxisMapper"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const-string v0, "a"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    const-string v0, "d"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;->HORIZONTAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    const-string v0, "axisName"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->F:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    return-object p1
.end method

.method private isNegativePressed()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lrc/a;->t:Lrc/a$f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrc/a$f;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPositivePressed()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lrc/a;->t:Lrc/a$f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrc/a$f;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private releaseAxis()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    :cond_0
    return-void
.end method

.method private setAxisValue(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;->VERTICAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    invoke-virtual {p1, p0, v0}, Lcom/itsmagic/engine/Engines/Input/Axis;->a(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getAxisType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    return-object v0
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)V

    const-string v1, "Negative key"

    invoke-static {v1, v0}, LF5/c;->k(Ljava/lang/String;LF5/d;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)V

    const-string v1, "Positive key"

    invoke-static {v1, v0}, LF5/c;->k(Ljava/lang/String;LF5/d;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)V

    const-string v2, "Axis type"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)V

    const-string v2, "Output axis"

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getNegativeKeyboardKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputAxis()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveKeyboardKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyboardAxisMapper"

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->releaseAxis()V

    return-void
.end method

.method public parallelDisabledUpdate()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelDisabledUpdate()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->F:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->releaseAxis()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->F:Z

    :cond_0
    return-void
.end method

.method public parallelUpdate()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->releaseAxis()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Input/Axis;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->releaseAxis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->releaseAxis()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->releaseAxis()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->isNegativePressed()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->isPositivePressed()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    :cond_6
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->setAxisValue(F)V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->F:Z

    return-void
.end method

.method public setAxisType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisType"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->axisType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    return-void
.end method

.method public setNegativeKeyboardKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "negativeKeyboardKey"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->negativeKeyboardKey:Ljava/lang/String;

    return-void
.end method

.method public setOutputAxis(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputAxis"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->outputAxis:Ljava/lang/String;

    return-void
.end method

.method public setPositiveKeyboardKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positiveKeyboardKey"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->positiveKeyboardKey:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->G:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->G:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/KeyboardAxisMapper;

    invoke-direct {v0, p0}, LJAVARuntime/KeyboardAxisMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->G:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
