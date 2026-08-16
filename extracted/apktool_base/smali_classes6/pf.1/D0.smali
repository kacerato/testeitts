.class public final Lpf/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpf/D0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpf/D0;

    invoke-direct {v0}, Lpf/D0;-><init>()V

    sput-object v0, Lpf/D0;->a:Lpf/D0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
