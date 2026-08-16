.class public final enum Lorg/openjdk/tools/javac/jvm/ClassFile$Version;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/jvm/ClassFile$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field private static final MAX:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field private static final MIN:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field public static final enum V45_3:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field public static final enum V49:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field public static final enum V50:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field public static final enum V51:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field public static final enum V52:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

.field public static final enum V53:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;


# instance fields
.field public final major:I

.field public final minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    const-string v1, "V45_3"

    const/4 v6, 0x0

    const/16 v2, 0x2d

    const/4 v3, 0x3

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V45_3:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    const/16 v2, 0x31

    const-string v4, "V49"

    const/4 v7, 0x1

    invoke-direct {v1, v4, v7, v2, v6}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V49:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    const/4 v4, 0x2

    const/16 v5, 0x32

    const-string v8, "V50"

    invoke-direct {v2, v8, v4, v5, v6}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V50:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    new-instance v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    const-string v5, "V51"

    const/16 v8, 0x33

    invoke-direct {v4, v5, v3, v8, v6}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V51:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    new-instance v5, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    const/4 v3, 0x4

    const/16 v8, 0x34

    const-string v9, "V52"

    invoke-direct {v5, v9, v3, v8, v6}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V52:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    new-instance v8, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    const/4 v3, 0x5

    const/16 v9, 0x35

    const-string v10, "V53"

    invoke-direct {v8, v10, v3, v9, v6}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->V53:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    filled-new-array/range {v0 .. v5}, [Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->$VALUES:[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->values()[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v0

    aget-object v0, v0, v6

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MIN:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->values()[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->values()[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v7

    aget-object v0, v0, v1

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MAX:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->major:I

    iput p4, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->minor:I

    return-void
.end method

.method public static MAX()Lorg/openjdk/tools/javac/jvm/ClassFile$Version;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MAX:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    return-object v0
.end method

.method public static MIN()Lorg/openjdk/tools/javac/jvm/ClassFile$Version;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->MIN:Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/ClassFile$Version;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->$VALUES:[Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/jvm/ClassFile$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/ClassFile$Version;

    return-object v0
.end method
