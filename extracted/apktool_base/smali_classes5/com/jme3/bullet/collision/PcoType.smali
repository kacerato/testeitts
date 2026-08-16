.class public final Lcom/jme3/bullet/collision/PcoType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final collider:I = 0x40

.field public static final fluid:I = 0x10

.field public static final generic:I = 0x1

.field public static final ghost:I = 0x4

.field public static final logger:Ljava/util/logging/Logger;

.field public static final rigid:I = 0x2

.field public static final soft:I = 0x8

.field public static final user:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/PcoType;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/PcoType;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
