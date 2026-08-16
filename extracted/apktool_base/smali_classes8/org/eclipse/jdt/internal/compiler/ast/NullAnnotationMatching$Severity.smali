.class final enum Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

.field public static final enum LEGACY_WARNING:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

.field public static final enum MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

.field public static final enum OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

.field public static final enum UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->OK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const-string v2, "LEGACY_WARNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->LEGACY_WARNING:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const-string v3, "UNCHECKED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const-string v4, "MISMATCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    filled-new-array {v0, v1, v2, v3}, [Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public isAnyMismatch()Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;->LEGACY_WARNING:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public max(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method
