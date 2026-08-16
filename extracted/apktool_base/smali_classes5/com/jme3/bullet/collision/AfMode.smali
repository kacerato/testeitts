.class public final Lcom/jme3/bullet/collision/AfMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final basic:I = 0x1

.field public static final either:I = 0x3

.field public static final logger:Ljava/util/logging/Logger;

.field public static final none:I = 0x0

.field public static final rolling:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/AfMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/AfMode;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
