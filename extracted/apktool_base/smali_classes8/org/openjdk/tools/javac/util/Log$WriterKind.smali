.class public final enum Lorg/openjdk/tools/javac/util/Log$WriterKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WriterKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/Log$WriterKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/Log$WriterKind;

.field public static final enum ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

.field public static final enum NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

.field public static final enum STDERR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

.field public static final enum STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

.field public static final enum WARNING:Lorg/openjdk/tools/javac/util/Log$WriterKind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    const-string v1, "NOTICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Log$WriterKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    new-instance v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    const-string v2, "WARNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/util/Log$WriterKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->WARNING:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    new-instance v2, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    const-string v3, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Log$WriterKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    new-instance v3, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    const-string v4, "STDOUT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/util/Log$WriterKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    new-instance v4, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    const-string v5, "STDERR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/util/Log$WriterKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDERR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/javac/util/Log$WriterKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->$VALUES:[Lorg/openjdk/tools/javac/util/Log$WriterKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Log$WriterKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/Log$WriterKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->$VALUES:[Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/Log$WriterKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/Log$WriterKind;

    return-object v0
.end method
