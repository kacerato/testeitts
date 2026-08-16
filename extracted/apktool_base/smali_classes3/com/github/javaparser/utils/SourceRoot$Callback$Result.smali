.class public final enum Lcom/github/javaparser/utils/SourceRoot$Callback$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/utils/SourceRoot$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/utils/SourceRoot$Callback$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

.field public static final enum DONT_SAVE:Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

.field public static final enum SAVE:Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

.field public static final enum TERMINATE:Lcom/github/javaparser/utils/SourceRoot$Callback$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;->SAVE:Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    new-instance v1, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    const-string v2, "DONT_SAVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;->DONT_SAVE:Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    new-instance v2, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    const-string v3, "TERMINATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;->TERMINATE:Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    filled-new-array {v0, v1, v2}, [Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;->$VALUES:[Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/utils/SourceRoot$Callback$Result;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/utils/SourceRoot$Callback$Result;
    .locals 1

    sget-object v0, Lcom/github/javaparser/utils/SourceRoot$Callback$Result;->$VALUES:[Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    invoke-virtual {v0}, [Lcom/github/javaparser/utils/SourceRoot$Callback$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    return-object v0
.end method
