.class public final enum Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundCheckStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus:[I

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

.field public static final enum MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

.field public static final enum NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

.field public static final enum OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

.field public static final enum UNCHECKED:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->values()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    const-string v2, "NULL_PROBLEM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    const-string v3, "UNCHECKED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    const-string v4, "MISMATCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    filled-new-array {v0, v1, v2, v3}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public betterOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public isOKbyJLS()Z
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
