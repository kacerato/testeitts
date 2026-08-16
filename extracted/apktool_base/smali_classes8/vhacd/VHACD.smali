.class public final Lvhacd/VHACD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final progressListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lvhacd/VHACDProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private static results:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvhacd/VHACDHull;",
            ">;"
        }
    .end annotation
.end field

.field private static final vpt:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvhacd/VHACD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lvhacd/VHACD;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lvhacd/VHACDProgressListener;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lvhacd/VHACD;->progressListeners:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHull(J)V
    .locals 1

    new-instance v0, Lvhacd/VHACDHull;

    invoke-direct {v0, p0, p1}, Lvhacd/VHACDHull;-><init>(J)V

    sget-object p0, Lvhacd/VHACD;->results:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addProgressListener(Lvhacd/VHACDProgressListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lvhacd/VHACD;->progressListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static compute([F[ILvhacd/VHACDParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[I",
            "Lvhacd/VHACDParameters;",
            ")",
            "Ljava/util/List<",
            "Lvhacd/VHACDHull;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "positions"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    const-string v0, "indices"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 3
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 4
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lvhacd/VHACD;->results:Ljava/util/List;

    .line 6
    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Lvhacd/VHACDParameters;->getDebugEnabled()Z

    move-result p2

    .line 8
    invoke-static {p0, p1, v0, v1, p2}, Lvhacd/VHACD;->compute(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;JZ)V

    .line 9
    sget-object p0, Lvhacd/VHACD;->results:Ljava/util/List;

    return-object p0
.end method

.method private static native compute(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;JZ)V
.end method

.method public static removeProgressListener(Lvhacd/VHACDProgressListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lvhacd/VHACD;->progressListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static update(DDDLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    sget-object v0, Lvhacd/VHACD;->progressListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lvhacd/VHACDProgressListener;

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lvhacd/VHACDProgressListener;->update(DDDLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
