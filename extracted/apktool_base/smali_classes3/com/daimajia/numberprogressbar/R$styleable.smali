.class public final Lcom/daimajia/numberprogressbar/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/numberprogressbar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NumberProgressBar:[I

.field public static final NumberProgressBar_progress_current:I = 0x0

.field public static final NumberProgressBar_progress_max:I = 0x1

.field public static final NumberProgressBar_progress_reached_bar_height:I = 0x2

.field public static final NumberProgressBar_progress_reached_color:I = 0x3

.field public static final NumberProgressBar_progress_text_color:I = 0x4

.field public static final NumberProgressBar_progress_text_offset:I = 0x5

.field public static final NumberProgressBar_progress_text_size:I = 0x6

.field public static final NumberProgressBar_progress_text_visibility:I = 0x7

.field public static final NumberProgressBar_progress_unreached_bar_height:I = 0x8

.field public static final NumberProgressBar_progress_unreached_color:I = 0x9

.field public static final Themes:[I

.field public static final Themes_numberProgressBarStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/daimajia/numberprogressbar/R$styleable;->NumberProgressBar:[I

    const v0, 0x7f030346

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/daimajia/numberprogressbar/R$styleable;->Themes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030388
        0x7f030389
        0x7f03038a
        0x7f03038b
        0x7f03038c
        0x7f03038d
        0x7f03038e
        0x7f03038f
        0x7f030390
        0x7f030391
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
