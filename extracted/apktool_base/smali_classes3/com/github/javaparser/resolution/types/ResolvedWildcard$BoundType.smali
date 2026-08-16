.class public final enum Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/resolution/types/ResolvedWildcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

.field public static final enum EXTENDS:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

.field public static final enum SUPER:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    const-string v1, "SUPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    new-instance v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    const-string v2, "EXTENDS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->$VALUES:[Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;
    .locals 1

    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->$VALUES:[Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-virtual {v0}, [Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    return-object v0
.end method
