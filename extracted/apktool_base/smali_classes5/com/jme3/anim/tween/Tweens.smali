.class public Lcom/jme3/anim/tween/Tweens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/anim/tween/Tweens$Sequence;,
        Lcom/jme3/anim/tween/Tweens$Parallel;,
        Lcom/jme3/anim/tween/Tweens$Delay;,
        Lcom/jme3/anim/tween/Tweens$Stretch;,
        Lcom/jme3/anim/tween/Tweens$Curve;,
        Lcom/jme3/anim/tween/Tweens$CurveFunction;,
        Lcom/jme3/anim/tween/Tweens$CallMethod;,
        Lcom/jme3/anim/tween/Tweens$CallTweenMethod;,
        Lcom/jme3/anim/tween/Tweens$Loop;,
        Lcom/jme3/anim/tween/Tweens$Invert;,
        Lcom/jme3/anim/tween/Tweens$SmoothStep;,
        Lcom/jme3/anim/tween/Tweens$Sine;
    }
.end annotation


# static fields
.field private static final SINE:Lcom/jme3/anim/tween/Tweens$CurveFunction;

.field private static final SMOOTH:Lcom/jme3/anim/tween/Tweens$CurveFunction;

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/anim/tween/Tweens;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/anim/tween/Tweens;->log:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/anim/tween/Tweens$SmoothStep;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/anim/tween/Tweens$SmoothStep;-><init>(Lcom/jme3/anim/tween/Tweens$1;)V

    sput-object v0, Lcom/jme3/anim/tween/Tweens;->SMOOTH:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Sine;

    invoke-direct {v0, v1}, Lcom/jme3/anim/tween/Tweens$Sine;-><init>(Lcom/jme3/anim/tween/Tweens$1;)V

    sput-object v0, Lcom/jme3/anim/tween/Tweens;->SINE:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/jme3/anim/tween/Tweens;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lcom/jme3/anim/tween/Tween;
    .locals 1

    new-instance v0, Lcom/jme3/anim/tween/Tweens$CallMethod;

    invoke-direct {v0, p0, p1, p2}, Lcom/jme3/anim/tween/Tweens$CallMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs callTweenMethod(DLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lcom/jme3/anim/tween/Tween;
    .locals 7

    new-instance v6, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;-><init>(DLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public static cycle(Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 3

    invoke-static {p0}, Lcom/jme3/anim/tween/Tweens;->invert(Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/jme3/anim/tween/Tween;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    invoke-static {v1}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p0

    return-object p0
.end method

.method public static delay(D)Lcom/jme3/anim/tween/Tween;
    .locals 1

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Delay;

    invoke-direct {v0, p0, p1}, Lcom/jme3/anim/tween/Tweens$Delay;-><init>(D)V

    return-object v0
.end method

.method public static invert(Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 1

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Invert;

    invoke-direct {v0, p0}, Lcom/jme3/anim/tween/Tweens$Invert;-><init>(Lcom/jme3/anim/tween/Tween;)V

    return-object v0
.end method

.method public static varargs loopCount(I[Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Loop;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1, p0}, Lcom/jme3/anim/tween/Tweens$Loop;-><init>(Lcom/jme3/anim/tween/Tween;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/anim/tween/Tweens$Loop;

    invoke-static {p1}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/jme3/anim/tween/Tweens$Loop;-><init>(Lcom/jme3/anim/tween/Tween;I)V

    return-object v0
.end method

.method public static varargs loopDuration(D[Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 2

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Loop;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-direct {v0, p2, p0, p1}, Lcom/jme3/anim/tween/Tweens$Loop;-><init>(Lcom/jme3/anim/tween/Tween;D)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/anim/tween/Tweens$Loop;

    invoke-static {p2}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lcom/jme3/anim/tween/Tweens$Loop;-><init>(Lcom/jme3/anim/tween/Tween;D)V

    return-object v0
.end method

.method public static varargs parallel([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 1

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Parallel;

    invoke-direct {v0, p0}, Lcom/jme3/anim/tween/Tweens$Parallel;-><init>([Lcom/jme3/anim/tween/Tween;)V

    return-object v0
.end method

.method public static varargs sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 1

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Sequence;

    invoke-direct {v0, p0}, Lcom/jme3/anim/tween/Tweens$Sequence;-><init>([Lcom/jme3/anim/tween/Tween;)V

    return-object v0
.end method

.method public static varargs sineStep([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Curve;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    sget-object v1, Lcom/jme3/anim/tween/Tweens;->SINE:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    invoke-direct {v0, p0, v1}, Lcom/jme3/anim/tween/Tweens$Curve;-><init>(Lcom/jme3/anim/tween/Tween;Lcom/jme3/anim/tween/Tweens$CurveFunction;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/anim/tween/Tweens$Curve;

    invoke-static {p0}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p0

    sget-object v1, Lcom/jme3/anim/tween/Tweens;->SINE:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    invoke-direct {v0, p0, v1}, Lcom/jme3/anim/tween/Tweens$Curve;-><init>(Lcom/jme3/anim/tween/Tween;Lcom/jme3/anim/tween/Tweens$CurveFunction;)V

    return-object v0
.end method

.method public static varargs smoothStep([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Curve;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    sget-object v1, Lcom/jme3/anim/tween/Tweens;->SMOOTH:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    invoke-direct {v0, p0, v1}, Lcom/jme3/anim/tween/Tweens$Curve;-><init>(Lcom/jme3/anim/tween/Tween;Lcom/jme3/anim/tween/Tweens$CurveFunction;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/anim/tween/Tweens$Curve;

    invoke-static {p0}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p0

    sget-object v1, Lcom/jme3/anim/tween/Tweens;->SMOOTH:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    invoke-direct {v0, p0, v1}, Lcom/jme3/anim/tween/Tweens$Curve;-><init>(Lcom/jme3/anim/tween/Tween;Lcom/jme3/anim/tween/Tweens$CurveFunction;)V

    return-object v0
.end method

.method public static varargs stretch(D[Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;
    .locals 2

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/anim/tween/Tweens$Stretch;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-direct {v0, p2, p0, p1}, Lcom/jme3/anim/tween/Tweens$Stretch;-><init>(Lcom/jme3/anim/tween/Tween;D)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/anim/tween/Tweens$Stretch;

    invoke-static {p2}, Lcom/jme3/anim/tween/Tweens;->sequence([Lcom/jme3/anim/tween/Tween;)Lcom/jme3/anim/tween/Tween;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lcom/jme3/anim/tween/Tweens$Stretch;-><init>(Lcom/jme3/anim/tween/Tween;D)V

    return-object v0
.end method
