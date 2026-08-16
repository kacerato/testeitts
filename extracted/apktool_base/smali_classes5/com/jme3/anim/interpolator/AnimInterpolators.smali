.class public Lcom/jme3/anim/interpolator/AnimInterpolators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;,
        Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;
    }
.end annotation


# static fields
.field public static final CatmullRom:Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;

.field public static final LinearVec3f:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public static final NLerp:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLerp:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field public static final SQuad:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field public static final constant:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInBounce:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInCubic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInElastic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInOutBounce:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInOutCubic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInOutElastic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInOutQuad:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInOutQuart:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInOutQuint:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInQuad:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInQuart:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeInQuint:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeOutBounce:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeOutCubic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeOutElastic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeOutQuad:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeOutQuart:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final easeOutQuint:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final smoothStep:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

.field public static final smootherStep:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$1;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/AnimInterpolators$1;-><init>()V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->NLerp:Lcom/jme3/anim/interpolator/AnimInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$2;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/AnimInterpolators$2;-><init>()V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->SLerp:Lcom/jme3/anim/interpolator/AnimInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/AnimInterpolators$3;-><init>()V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->SQuad:Lcom/jme3/anim/interpolator/AnimInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$4;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/AnimInterpolators$4;-><init>()V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->LinearVec3f:Lcom/jme3/anim/interpolator/AnimInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;-><init>()V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->CatmullRom:Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inQuad:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInQuad:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inCubic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInCubic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inQuart:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInQuart:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inQuint:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInQuint:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inBounce:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInBounce:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inElastic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInElastic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->outQuad:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeOutQuad:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->outCubic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeOutCubic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->outQuart:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeOutQuart:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->outQuint:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeOutQuint:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->outBounce:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeOutBounce:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->outElastic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeOutElastic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inOutQuad:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInOutQuad:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inOutCubic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInOutCubic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inOutQuart:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInOutQuart:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inOutQuint:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInOutQuint:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inOutBounce:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInOutBounce:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->inOutElastic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->easeInOutElastic:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->smoothStep:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->smoothStep:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->smootherStep:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->smootherStep:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    sget-object v1, Lcom/jme3/math/Easing;->constant:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->constant:Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
