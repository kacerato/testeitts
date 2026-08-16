.class public final enum Lorg/openjdk/javax/tools/JavaFileObject$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/tools/JavaFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/tools/JavaFileObject$Kind;

.field public static final enum CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

.field public static final enum HTML:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

.field public static final enum OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

.field public static final enum SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const/4 v1, 0x0

    const-string v2, ".java"

    const-string v3, "SOURCE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/javax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    new-instance v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const/4 v2, 0x1

    const-string v3, ".class"

    const-string v4, "CLASS"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/javax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    new-instance v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const/4 v3, 0x2

    const-string v4, ".html"

    const-string v5, "HTML"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/javax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->HTML:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    new-instance v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const/4 v4, 0x3

    const-string v5, ""

    const-string v6, "OTHER"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/javax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->$VALUES:[Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->$VALUES:[Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/javax/tools/JavaFileObject$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    return-object v0
.end method
