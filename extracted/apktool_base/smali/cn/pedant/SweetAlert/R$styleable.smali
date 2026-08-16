.class public final Lcn/pedant/SweetAlert/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/pedant/SweetAlert/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ProgressWheel:[I

.field public static final ProgressWheel_matProg_barColor:I = 0x0

.field public static final ProgressWheel_matProg_barSpinCycleTime:I = 0x1

.field public static final ProgressWheel_matProg_barWidth:I = 0x2

.field public static final ProgressWheel_matProg_circleRadius:I = 0x3

.field public static final ProgressWheel_matProg_fillRadius:I = 0x4

.field public static final ProgressWheel_matProg_linearProgress:I = 0x5

.field public static final ProgressWheel_matProg_progressIndeterminate:I = 0x6

.field public static final ProgressWheel_matProg_rimColor:I = 0x7

.field public static final ProgressWheel_matProg_rimWidth:I = 0x8

.field public static final ProgressWheel_matProg_spinSpeed:I = 0x9

.field public static final Rotate3dAnimation:[I

.field public static final Rotate3dAnimation_customPivotX:I = 0x0

.field public static final Rotate3dAnimation_customPivotY:I = 0x1

.field public static final Rotate3dAnimation_fromDeg:I = 0x2

.field public static final Rotate3dAnimation_rollType:I = 0x3

.field public static final Rotate3dAnimation_toDeg:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/pedant/SweetAlert/R$styleable;->ProgressWheel:[I

    const v0, 0x7f0303b4

    const v1, 0x7f03050b

    const v2, 0x7f030156

    const v3, 0x7f030157

    const v4, 0x7f0301fc

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcn/pedant/SweetAlert/R$styleable;->Rotate3dAnimation:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0302d8
        0x7f0302d9
        0x7f0302da
        0x7f0302db
        0x7f0302dc
        0x7f0302dd
        0x7f0302de
        0x7f0302df
        0x7f0302e0
        0x7f0302e1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
