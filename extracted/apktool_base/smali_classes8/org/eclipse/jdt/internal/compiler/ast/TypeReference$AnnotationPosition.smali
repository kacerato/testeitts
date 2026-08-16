.class public final enum Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnnotationPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

.field public static final enum LEAF_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

.field public static final enum MAIN_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const-string v1, "MAIN_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->MAIN_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const-string v2, "LEAF_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->LEAF_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const-string v3, "ANY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    filled-new-array {v0, v1, v2}, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
