.class public final enum Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

.field public static final enum DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

.field public static final enum FORCE:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

.field public static final enum TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

.field public static final enum WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const-string v2, "WHERE_NECESSARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const-string v3, "TOP_PRIORITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    new-instance v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const-string v4, "FORCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->FORCE:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const-string v5, "BLOCK_INDENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
