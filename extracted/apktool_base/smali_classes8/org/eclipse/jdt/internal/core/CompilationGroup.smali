.class public final enum Lorg/eclipse/jdt/internal/core/CompilationGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/core/CompilationGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/CompilationGroup;

.field public static final enum MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

.field public static final enum TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/CompilationGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    new-instance v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const-string v2, "TEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/CompilationGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    filled-new-array {v0, v1}, [Lorg/eclipse/jdt/internal/core/CompilationGroup;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/CompilationGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/CompilationGroup;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/CompilationGroup;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/core/CompilationGroup;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/CompilationGroup;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/CompilationGroup;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
