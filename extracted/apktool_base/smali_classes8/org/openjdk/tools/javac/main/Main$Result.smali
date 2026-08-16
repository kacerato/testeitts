.class public final enum Lorg/openjdk/tools/javac/main/Main$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/Main$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/Main$Result;

.field public static final enum ABNORMAL:Lorg/openjdk/tools/javac/main/Main$Result;

.field public static final enum CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

.field public static final enum ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

.field public static final enum OK:Lorg/openjdk/tools/javac/main/Main$Result;

.field public static final enum SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;


# instance fields
.field public final exitCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/main/Main$Result;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/openjdk/tools/javac/main/Main$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    new-instance v1, Lorg/openjdk/tools/javac/main/Main$Result;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/openjdk/tools/javac/main/Main$Result;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    new-instance v2, Lorg/openjdk/tools/javac/main/Main$Result;

    const-string v3, "CMDERR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/openjdk/tools/javac/main/Main$Result;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    new-instance v3, Lorg/openjdk/tools/javac/main/Main$Result;

    const-string v4, "SYSERR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/openjdk/tools/javac/main/Main$Result;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;

    new-instance v4, Lorg/openjdk/tools/javac/main/Main$Result;

    const-string v5, "ABNORMAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/openjdk/tools/javac/main/Main$Result;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/openjdk/tools/javac/main/Main$Result;->ABNORMAL:Lorg/openjdk/tools/javac/main/Main$Result;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->$VALUES:[Lorg/openjdk/tools/javac/main/Main$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/Main$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->$VALUES:[Lorg/openjdk/tools/javac/main/Main$Result;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/Main$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0
.end method


# virtual methods
.method public isOK()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
