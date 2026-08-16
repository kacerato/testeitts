.class public final Lcom/jme3/bullet/collision/CollisionFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHARACTER_OBJECT:I = 0x10

.field public static final CUSTOM_MATERIAL_CALLBACK:I = 0x8

.field public static final DISABLE_SPU_COLLISION_PROCESSING:I = 0x40

.field public static final DISABLE_VISUALIZE_OBJECT:I = 0x20

.field public static final HAS_COLLISION_SOUND_TRIGGER:I = 0x400

.field public static final HAS_CONTACT_STIFFNESS_DAMPING:I = 0x80

.field public static final HAS_CUSTOM_DEBUG_RENDERING_COLOR:I = 0x100

.field public static final HAS_FRICTION_ANCHOR:I = 0x200

.field public static final KINEMATIC_OBJECT:I = 0x2

.field public static final NO_CONTACT_RESPONSE:I = 0x4

.field public static final STATIC_OBJECT:I = 0x1

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/CollisionFlag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/CollisionFlag;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
