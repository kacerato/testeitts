.class public final enum Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

.field public static final enum MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

.field public static final enum PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    const-string v1, "MODULE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    const-string v2, "PACKAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    filled-new-array {v0, v1}, [Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
