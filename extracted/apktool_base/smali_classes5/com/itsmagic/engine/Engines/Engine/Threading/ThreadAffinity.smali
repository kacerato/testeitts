.class public final Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->LITTLE:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->a:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->MEDIUM:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->b:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->BIG:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->c:I

    const-string v0, "native-affinity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coreTier"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->d(Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->nativeUnlockAllCurrentThreadTiers()Z

    move-result v0

    return v0
.end method

.method public static c(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coreIndex"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->nativeUseCurrentThreadSpecificCore(I)Z

    move-result p0

    return p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coreTier"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->nativeUseCurrentThreadTier(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "coreTier can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coreTierA",
            "coreTierB"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->LITTLE:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->a:I

    :goto_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->MEDIUM:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    if-eq p0, v1, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    sget v1, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->b:I

    or-int/2addr v0, v1

    :cond_3
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->BIG:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    if-eq p0, v1, :cond_4

    if-ne p1, v1, :cond_5

    :cond_4
    sget p0, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->c:I

    or-int/2addr v0, p0

    :cond_5
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->nativeUseCurrentThreadTiers(I)Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "coreTierB can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "coreTierA can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeUnlockAllCurrentThreadTiers()Z
.end method

.method private static native nativeUseCurrentThreadSpecificCore(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coreIndex"
        }
    .end annotation
.end method

.method private static native nativeUseCurrentThreadTier(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coreTier"
        }
    .end annotation
.end method

.method private static native nativeUseCurrentThreadTiers(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tierMask"
        }
    .end annotation
.end method
