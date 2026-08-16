.class public enum Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "StackMapFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

.field public static final enum CLDC:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

.field public static final enum JSR202:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

.field public static final enum NONE:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->NONE:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat$1;

    const-string v3, "CLDC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->CLDC:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    new-instance v3, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat$2;

    const-string v5, "JSR202"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->$VALUES:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/jvm/Code$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->$VALUES:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    return-object v0
.end method


# virtual methods
.method public getAttributeName(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    return-object p1
.end method
