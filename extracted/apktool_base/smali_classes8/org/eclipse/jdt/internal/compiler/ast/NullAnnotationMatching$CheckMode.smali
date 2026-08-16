.class public enum Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "CheckMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

.field public static final enum BOUND_SUPER_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

.field public static final enum COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

.field public static final enum EXACT:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

.field public static final enum OVERRIDE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

.field public static final enum OVERRIDE_RETURN:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$1;

    const-string v1, "COMPATIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const-string v3, "EXACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->EXACT:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const-string v5, "BOUND_CHECK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const-string v7, "BOUND_SUPER_CHECK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_SUPER_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$2;

    const-string v9, "OVERRIDE_RETURN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE_RETURN:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$3;

    const-string v11, "OVERRIDE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public requiredNullableMatchesAll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toDetail()Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->EXACT:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    return-object v0
.end method
