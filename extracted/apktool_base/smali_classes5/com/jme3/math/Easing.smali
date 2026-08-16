.class public Lcom/jme3/math/Easing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/math/Easing$Invert;,
        Lcom/jme3/math/Easing$InOut;
    }
.end annotation


# static fields
.field public static constant:Lcom/jme3/math/EaseFunction;

.field public static inBounce:Lcom/jme3/math/EaseFunction;

.field public static inCubic:Lcom/jme3/math/EaseFunction;

.field public static inElastic:Lcom/jme3/math/EaseFunction;

.field public static inOutBounce:Lcom/jme3/math/EaseFunction;

.field public static inOutCubic:Lcom/jme3/math/EaseFunction;

.field public static inOutElastic:Lcom/jme3/math/EaseFunction;

.field public static inOutQuad:Lcom/jme3/math/EaseFunction;

.field public static inOutQuart:Lcom/jme3/math/EaseFunction;

.field public static inOutQuint:Lcom/jme3/math/EaseFunction;

.field public static inQuad:Lcom/jme3/math/EaseFunction;

.field public static inQuart:Lcom/jme3/math/EaseFunction;

.field public static inQuint:Lcom/jme3/math/EaseFunction;

.field public static linear:Lcom/jme3/math/EaseFunction;

.field public static outBounce:Lcom/jme3/math/EaseFunction;

.field public static outCubic:Lcom/jme3/math/EaseFunction;

.field public static outElastic:Lcom/jme3/math/EaseFunction;

.field public static outQuad:Lcom/jme3/math/EaseFunction;

.field public static outQuart:Lcom/jme3/math/EaseFunction;

.field public static outQuint:Lcom/jme3/math/EaseFunction;

.field public static smoothStep:Lcom/jme3/math/EaseFunction;

.field public static smootherStep:Lcom/jme3/math/EaseFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/Easing$1;

    invoke-direct {v0}, Lcom/jme3/math/Easing$1;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->constant:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$2;

    invoke-direct {v0}, Lcom/jme3/math/Easing$2;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->linear:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$3;

    invoke-direct {v0}, Lcom/jme3/math/Easing$3;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->inQuad:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$4;

    invoke-direct {v0}, Lcom/jme3/math/Easing$4;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->inCubic:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$5;

    invoke-direct {v0}, Lcom/jme3/math/Easing$5;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->inQuart:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$6;

    invoke-direct {v0}, Lcom/jme3/math/Easing$6;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->inQuint:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$7;

    invoke-direct {v0}, Lcom/jme3/math/Easing$7;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->outElastic:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$8;

    invoke-direct {v0}, Lcom/jme3/math/Easing$8;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->outBounce:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$Invert;

    sget-object v1, Lcom/jme3/math/Easing;->outElastic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/math/Easing$Invert;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inElastic:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$Invert;

    sget-object v1, Lcom/jme3/math/Easing;->outBounce:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/math/Easing$Invert;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inBounce:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$Invert;

    sget-object v1, Lcom/jme3/math/Easing;->inQuad:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/math/Easing$Invert;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->outQuad:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$Invert;

    sget-object v1, Lcom/jme3/math/Easing;->inCubic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/math/Easing$Invert;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->outCubic:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$Invert;

    sget-object v1, Lcom/jme3/math/Easing;->inQuart:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/math/Easing$Invert;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->outQuart:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$Invert;

    sget-object v1, Lcom/jme3/math/Easing;->inQuint:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1}, Lcom/jme3/math/Easing$Invert;-><init>(Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->outQuint:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$InOut;

    sget-object v1, Lcom/jme3/math/Easing;->inQuad:Lcom/jme3/math/EaseFunction;

    sget-object v2, Lcom/jme3/math/Easing;->outQuad:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Easing$InOut;-><init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inOutQuad:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$InOut;

    sget-object v1, Lcom/jme3/math/Easing;->inCubic:Lcom/jme3/math/EaseFunction;

    sget-object v2, Lcom/jme3/math/Easing;->outCubic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Easing$InOut;-><init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inOutCubic:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$InOut;

    sget-object v1, Lcom/jme3/math/Easing;->inQuart:Lcom/jme3/math/EaseFunction;

    sget-object v2, Lcom/jme3/math/Easing;->outQuart:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Easing$InOut;-><init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inOutQuart:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$InOut;

    sget-object v1, Lcom/jme3/math/Easing;->inQuint:Lcom/jme3/math/EaseFunction;

    sget-object v2, Lcom/jme3/math/Easing;->outQuint:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Easing$InOut;-><init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inOutQuint:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$InOut;

    sget-object v1, Lcom/jme3/math/Easing;->inElastic:Lcom/jme3/math/EaseFunction;

    sget-object v2, Lcom/jme3/math/Easing;->outElastic:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Easing$InOut;-><init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inOutElastic:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$InOut;

    sget-object v1, Lcom/jme3/math/Easing;->inBounce:Lcom/jme3/math/EaseFunction;

    sget-object v2, Lcom/jme3/math/Easing;->outBounce:Lcom/jme3/math/EaseFunction;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Easing$InOut;-><init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V

    sput-object v0, Lcom/jme3/math/Easing;->inOutBounce:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$9;

    invoke-direct {v0}, Lcom/jme3/math/Easing$9;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->smoothStep:Lcom/jme3/math/EaseFunction;

    new-instance v0, Lcom/jme3/math/Easing$10;

    invoke-direct {v0}, Lcom/jme3/math/Easing$10;-><init>()V

    sput-object v0, Lcom/jme3/math/Easing;->smootherStep:Lcom/jme3/math/EaseFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
