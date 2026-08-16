.class final enum Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalTypeKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

.field public static final enum LAMBDA:Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

.field public static final enum LOCAL:Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

.field public static final enum METHOD_REFERENCE:Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;->LOCAL:Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    const-string v2, "METHOD_REFERENCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;->METHOD_REFERENCE:Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    const-string v3, "LAMBDA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;->LAMBDA:Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    filled-new-array {v0, v1, v2}, [Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/parser/Parser$LocalTypeKind;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
