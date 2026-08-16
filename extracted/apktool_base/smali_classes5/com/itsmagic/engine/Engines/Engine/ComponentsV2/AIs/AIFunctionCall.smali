.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;
    }
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field private argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private booleanValue:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private floatValue:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private functionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private intValue:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private stringValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Method"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "floatValue"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "Method"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    .line 14
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    .line 16
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 17
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    .line 19
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "intValue"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "Method"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    .line 25
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 28
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    .line 30
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Int:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "stringValue"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "Method"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    .line 47
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 50
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->String:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "booleanValue"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Method"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Float:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    .line 36
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 39
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    .line 41
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;->Boolean:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-object p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    return p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    return p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    return p0
.end method


# virtual methods
.method public g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "context",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1, p1, v2, v3}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object p1, v0, LC5/b;->Q:LC5/a;

    const v1, 0x7f0500b2

    iput v1, p1, LC5/a;->p:I

    iget-object p1, p1, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->l(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public l(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$a;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Landroid/content/Context;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NAME:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ARGUMENT_TYPE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)V

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-static {v1, v5, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p2, 0x2

    if-eq v1, p2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VALUE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p2, v1, p1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$e;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VALUE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$d;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VALUE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, p1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    const-string v2, "intValue"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p2, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$c;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VALUE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, p1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    const-string v2, "floatValue"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p2, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    return v0
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argumentType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->argumentType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-void
.end method

.method public q(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "booleanValue"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->booleanValue:Z

    return-void
.end method

.method public r(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatValue"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->floatValue:F

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->functionName:Ljava/lang/String;

    return-void
.end method

.method public t(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intValue"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->intValue:I

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringValue"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->stringValue:Ljava/lang/String;

    return-void
.end method
