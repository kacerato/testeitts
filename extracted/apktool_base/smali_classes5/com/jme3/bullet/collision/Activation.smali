.class public final Lcom/jme3/bullet/collision/Activation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final active:I = 0x1

.field public static final error:I = 0x5

.field public static final exempt:I = 0x4

.field public static final firstValue:I = 0x1

.field public static final lastValue:I = 0x5

.field public static final logger:Ljava/util/logging/Logger;

.field public static final sleeping:I = 0x2

.field public static final wantsDeactivation:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/Activation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/Activation;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
