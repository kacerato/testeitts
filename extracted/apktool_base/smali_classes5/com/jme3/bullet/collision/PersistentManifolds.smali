.class public final Lcom/jme3/bullet/collision/PersistentManifolds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/PersistentManifolds;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/PersistentManifolds;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native countPoints(J)I
.end method

.method public static native getBodyAId(J)J
.end method

.method public static native getBodyBId(J)J
.end method

.method public static native getPointId(JI)J
.end method

.method public static listPointIds(J)[J
    .locals 5

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/PersistentManifolds;->countPoints(J)I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0, p1, v2}, Lcom/jme3/bullet/collision/PersistentManifolds;->getPointId(JI)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
