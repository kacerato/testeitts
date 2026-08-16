.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;
    }
.end annotation


# static fields
.field public static final M:Ljava/lang/String; = "AnimationTrigger"

.field public static final N:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public G:F

.field public H:F

.field public I:Z

.field public J:Z

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public L:LJAVARuntime/Component;

.field private animName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private animSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final enterConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;",
            ">;"
        }
    .end annotation
.end field

.field public enterConditionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final exitConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;",
            ">;"
        }
    .end annotation
.end field

.field public exitConditionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private loopOnce:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maskFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maxWeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private onActiveEventName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transitionDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->N:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$d;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "AnimationTrigger"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maxWeight:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->J:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->K:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    return p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maxWeight:F

    return p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maxWeight:F

    return p1
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    return p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    return-object p0
.end method

.method private compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "compare",
            "type",
            "logTriggerType"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 2
    invoke-static {}, LJ4/d;->E1()V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Condition type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] on AnimationTrigger["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be used on trigger type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    return v1

    :cond_0
    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v1, v2

    :cond_7
    return v1

    :cond_8
    cmpl-float p1, p1, p2

    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method private compare(ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "type",
            "logTriggerType"
        }
    .end annotation

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {}, LJ4/d;->E1()V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Condition type ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] on AnimationTrigger["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be used on trigger type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method

.method public static filterTypeByTrigger(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trigger",
            "conditionType"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid trigger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultTypeByTrigger(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid trigger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;->IsOn:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;->BiggerThan:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getForwardFrameDistance()F
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method private getSideFrameDistance()F
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method private solve(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->filterTypeByTrigger(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getDefaultTypeByTrigger(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->P(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;)V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->K:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->K:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->isGrounded()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, LJ4/d;->E1()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trigger type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;->IsGrounded:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs to be attached to a Characterbody object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    return v1

    :pswitch_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getSideFrameDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->B()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getSideFrameDistance()F

    move-result v0

    invoke-static {}, LK8/d;->b()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->B()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_7
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getForwardFrameDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->B()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    :cond_6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getForwardFrameDistance()F

    move-result v0

    invoke-static {}, LK8/d;->b()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    :cond_7
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_9
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->G:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->B()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    :cond_8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_a
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->H:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->B()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    :cond_9
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->u()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->compare(FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$n;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public addEnterCondition(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExitCondition(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->K:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 5

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maskFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maskFile:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    .line 9
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    const/4 v1, 0x0

    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    .line 12
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->t()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    .line 15
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->t()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    const-class p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->findAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->J:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->J:Z

    :cond_1
    return-void
.end method

.method public enterConditionAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    return-object p1
.end method

.method public enterConditionCount()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public exitConditionAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    return-object p1
.end method

.method public exitConditionCount()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAnimName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    return-object v0
.end method

.method public getAnimSpeed()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    return v0
.end method

.method public getAnimSpeedFrom()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    return-object v0
.end method

.method public getInspectorColorV2(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f050094

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 13
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->AnimationPlayer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v4, v2

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    goto :goto_2

    :goto_3
    new-instance v1, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$e;

    invoke-direct {v5, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;Ljava/util/List;)V

    sget-object v8, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v9, "Animation"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v1, LC5/b;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MISSING_ANIMATION_PLAYER:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    const/16 v6, 0xc

    invoke-direct {v1, v4, v6, v5}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$f;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v6, "Transition delay"

    invoke-direct {v1, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v7, "transitionDelay"

    invoke-virtual {v1, v4, p0, v7, v6}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$g;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    const-string v7, "Max weight"

    invoke-direct {v1, v4, v7, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v7, "maxWeight"

    invoke-virtual {v1, v4, p0, v7, v6}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ANIMATION_SPEED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$h;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    const-class v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    invoke-static {v1, v8, v4, v7}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$i;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    const-string v7, "Anim speed"

    invoke-direct {v1, v4, v7, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "animSpeed"

    invoke-virtual {v1, v4, p0, v5, v6}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$j;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    const-string v5, "Loop once"

    sget-object v6, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$k;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    const-string v5, "On active event"

    sget-object v6, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v1, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, LC5/a;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ENTER_CONDITIONS:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v4, v5, v3, v6}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v4}, LC5/b;-><init>(LC5/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v2

    :goto_5
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, " "

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$l;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    invoke-virtual {v5, p1, v3, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->y(Landroid/content/Context;ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;)Ljava/util/List;

    move-result-object v7

    new-instance v8, LC5/b;

    new-instance v9, LC5/a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONDITION:LAc/b;

    invoke-static {v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v9, v6, v3, v5}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v8, v9}, LC5/b;-><init>(LC5/a;)V

    iget-object v5, v1, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v8, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, v1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$a;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    sget-object v7, LC5/b$a;->Button:LC5/b$a;

    const-string v8, "Add condition"

    invoke-direct {v4, v5, v8, v7}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    if-nez v1, :cond_7

    new-instance v1, LC5/b;

    new-instance v4, LC5/a;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXIT_CONDITIONS:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v4, v5, v3, v7}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v4}, LC5/b;-><init>(LC5/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v2

    :goto_6
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$b;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    invoke-virtual {v5, p1, v2, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->y(Landroid/content/Context;ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;)Ljava/util/List;

    move-result-object v7

    new-instance v9, LC5/b;

    new-instance v10, LC5/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONDITION:LAc/b;

    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v10, v11, v3, v5}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v9, v10}, LC5/b;-><init>(LC5/a;)V

    iget-object v5, v1, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v9, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    iget-object p1, v1, LC5/b;->Q:LC5/a;

    iget-object p1, p1, LC5/a;->o:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    sget-object v3, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v2, v8, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public getOnActiveEventName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AnimationTrigger"

    return-object v0
.end method

.method public getTransitionDelay()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    return v0
.end method

.method public isLoopOnce()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    return v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-static {}, Lc8/b;->k()Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->G:F

    invoke-static {}, LK8/d;->b()F

    move-result v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->H:F

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_8

    move p2, v2

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->D()Z

    move-result v3

    if-nez v3, :cond_1

    move p2, v1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_2
    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    iget-boolean v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    if-nez v5, :cond_4

    invoke-direct {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->solve(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->C()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;)V

    :cond_3
    iput-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    :cond_4
    iget-boolean v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    if-eqz v5, :cond_5

    iget v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b:F

    invoke-static {}, LK8/d;->b()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b:F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->v()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iput v0, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b:F

    iput-boolean v2, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->D()Z

    move-result v4

    if-eqz v4, :cond_6

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->D()Z

    move-result v4

    if-nez v4, :cond_6

    move p2, v2

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    :cond_8
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-nez p2, :cond_11

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    if-eqz p2, :cond_11

    move p2, v2

    :goto_5
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_a

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->D()Z

    move-result v4

    if-nez v4, :cond_9

    move p2, v1

    goto :goto_6

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_a
    move p2, v2

    :goto_6
    move v4, v2

    :goto_7
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    iget-boolean v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    if-nez v6, :cond_c

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->solve(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->C()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->w()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;)V

    :cond_b
    iput-boolean v1, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    :cond_c
    iget-boolean v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    if-eqz v6, :cond_e

    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b:F

    invoke-static {}, LK8/d;->b()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b:F

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->v()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    iput v0, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b:F

    iput-boolean v2, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->a:Z

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->E()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz v6, :cond_d

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->findAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->stop()V

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    :cond_d
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->D()Z

    move-result v5

    if-eqz v5, :cond_f

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->D()Z

    move-result v5

    if-nez v5, :cond_f

    move p2, v2

    :cond_f
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_10
    if-eqz p2, :cond_11

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    :cond_11
    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz p2, :cond_19

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->findAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_16

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;)V

    :cond_12
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_14

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    if-eqz p1, :cond_13

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->play()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    goto/16 :goto_9

    :cond_13
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    goto :goto_9

    :cond_14
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    if-eqz p1, :cond_15

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->play()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    goto :goto_9

    :cond_15
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    goto :goto_9

    :cond_16
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->callFunction(Ljava/lang/String;)V

    :cond_17
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    const-wide v4, 0x3fa999999999999aL    # 0.05

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_18

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getWeight()F

    move-result p1

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    div-float/2addr v2, v6

    invoke-static {}, LK8/d;->b()F

    move-result v6

    mul-float/2addr v2, v6

    invoke-static {p1, v0, v2}, LNc/b;->z(FFF)F

    move-result p1

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getWeight()F

    move-result p1

    float-to-double v6, p1

    cmpg-double p1, v6, v4

    if-gtz p1, :cond_19

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n()V

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    goto :goto_9

    :cond_18
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getWeight()F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maxWeight:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    div-float/2addr v2, v6

    invoke-static {}, LK8/d;->b()F

    move-result v6

    mul-float/2addr v2, v6

    invoke-static {p1, v0, v2}, LNc/b;->z(FFF)F

    move-result p1

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getWeight()F

    move-result p1

    float-to-double v6, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->maxWeight:F

    float-to-double v8, p1

    sub-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_19

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    :cond_19
    :goto_9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->K:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_1f

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->findAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1d

    if-eq p2, v1, :cond_1c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1a

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getSideFrameDistance()F

    move-result p2

    invoke-static {}, LK8/d;->b()F

    move-result v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setSpeed(F)V

    goto :goto_a

    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Anim speed from not implemented:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getForwardFrameDistance()F

    move-result p2

    invoke-static {}, LK8/d;->b()F

    move-result v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setSpeed(F)V

    goto :goto_a

    :cond_1c
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->H:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setSpeed(F)V

    goto :goto_a

    :cond_1d
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setSpeed(F)V

    goto :goto_a

    :cond_1e
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->K:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1f
    :goto_a
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->J:Z

    if-eq p1, p2, :cond_20

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->I:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->J:Z

    :cond_20
    return-void
.end method

.method public removeEnterCondition(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->enterConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeExitCondition(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->exitConditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animName"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animName:Ljava/lang/String;

    return-void
.end method

.method public setAnimSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animSpeed"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeed:F

    return-void
.end method

.method public setAnimSpeedFrom(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animSpeedFrom"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->animSpeedFrom:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$m;

    return-void
.end method

.method public setLoopOnce(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loopOnce"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->loopOnce:Z

    return-void
.end method

.method public setOnActiveEventName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onActiveEventName"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->onActiveEventName:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->L:LJAVARuntime/Component;

    return-void
.end method

.method public setTransitionDelay(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transitionDelay"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->transitionDelay:F

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->L:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AnimationTrigger;

    invoke-direct {v0, p0}, LJAVARuntime/AnimationTrigger;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->L:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public varargs willCallFunction(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
