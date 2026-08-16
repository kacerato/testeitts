.class public Lvhacd4/Vhacd4Hull;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final positions:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lvhacd4/Vhacd4Hull;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lvhacd4/Vhacd4Hull;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lvhacd4/Vhacd4Hull;->getNumFloats(J)I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lvhacd4/Vhacd4Hull;->getPositions(JLjava/nio/FloatBuffer;)V

    new-array p1, v0, [F

    iput-object p1, p0, Lvhacd4/Vhacd4Hull;->positions:[F

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lvhacd4/Vhacd4Hull;->positions:[F

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static native getNumFloats(J)I
.end method

.method private static native getPositions(JLjava/nio/FloatBuffer;)V
.end method


# virtual methods
.method public clonePositions()[F
    .locals 4

    iget-object v0, p0, Lvhacd4/Vhacd4Hull;->positions:[F

    array-length v1, v0

    new-array v2, v1, [F

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
