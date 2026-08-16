.class final enum Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/JNIWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncoderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

.field public static final enum FIELD:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

.field public static final enum FIELDSTUB:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

.field public static final enum JNI:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

.field public static final enum SIGNATURE:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->CLASS:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    const-string v2, "FIELDSTUB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->FIELDSTUB:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    const-string v3, "FIELD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->FIELD:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    new-instance v3, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    const-string v4, "JNI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->JNI:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    new-instance v4, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    const-string v5, "SIGNATURE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->SIGNATURE:Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->$VALUES:[Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->$VALUES:[Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/JNIWriter$EncoderType;

    return-object v0
.end method
