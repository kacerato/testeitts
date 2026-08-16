.class public final enum Lorg/openjdk/javax/lang/model/util/Elements$Origin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/lang/model/util/Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/lang/model/util/Elements$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/lang/model/util/Elements$Origin;

.field public static final enum EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

.field public static final enum MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

.field public static final enum SYNTHETIC:Lorg/openjdk/javax/lang/model/util/Elements$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/util/Elements$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    new-instance v1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    const-string v2, "MANDATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/lang/model/util/Elements$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    new-instance v2, Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    const-string v3, "SYNTHETIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/lang/model/util/Elements$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->SYNTHETIC:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->$VALUES:[Lorg/openjdk/javax/lang/model/util/Elements$Origin;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 1

    const-class v0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->$VALUES:[Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    invoke-virtual {v0}, [Lorg/openjdk/javax/lang/model/util/Elements$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object v0
.end method


# virtual methods
.method public isDeclared()Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->SYNTHETIC:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
