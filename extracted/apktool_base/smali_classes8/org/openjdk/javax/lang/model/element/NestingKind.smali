.class public final enum Lorg/openjdk/javax/lang/model/element/NestingKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/lang/model/element/NestingKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/lang/model/element/NestingKind;

.field public static final enum ANONYMOUS:Lorg/openjdk/javax/lang/model/element/NestingKind;

.field public static final enum LOCAL:Lorg/openjdk/javax/lang/model/element/NestingKind;

.field public static final enum MEMBER:Lorg/openjdk/javax/lang/model/element/NestingKind;

.field public static final enum TOP_LEVEL:Lorg/openjdk/javax/lang/model/element/NestingKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/javax/lang/model/element/NestingKind;

    const-string v1, "TOP_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->TOP_LEVEL:Lorg/openjdk/javax/lang/model/element/NestingKind;

    new-instance v1, Lorg/openjdk/javax/lang/model/element/NestingKind;

    const-string v2, "MEMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/lang/model/element/NestingKind;->MEMBER:Lorg/openjdk/javax/lang/model/element/NestingKind;

    new-instance v2, Lorg/openjdk/javax/lang/model/element/NestingKind;

    const-string v3, "LOCAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/lang/model/element/NestingKind;->LOCAL:Lorg/openjdk/javax/lang/model/element/NestingKind;

    new-instance v3, Lorg/openjdk/javax/lang/model/element/NestingKind;

    const-string v4, "ANONYMOUS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/lang/model/element/NestingKind;->ANONYMOUS:Lorg/openjdk/javax/lang/model/element/NestingKind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->$VALUES:[Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    const-class v0, Lorg/openjdk/javax/lang/model/element/NestingKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->$VALUES:[Lorg/openjdk/javax/lang/model/element/NestingKind;

    invoke-virtual {v0}, [Lorg/openjdk/javax/lang/model/element/NestingKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-object v0
.end method


# virtual methods
.method public isNested()Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->TOP_LEVEL:Lorg/openjdk/javax/lang/model/element/NestingKind;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
