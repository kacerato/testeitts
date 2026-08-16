.class public final enum Lcom/android/tools/r8/internal/EO;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/EO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/android/tools/r8/internal/EO;

.field public static final enum b:Lcom/android/tools/r8/internal/EO;

.field public static final enum c:Lcom/android/tools/r8/internal/EO;

.field public static final enum d:Lcom/android/tools/r8/internal/EO;

.field public static final enum e:Lcom/android/tools/r8/internal/EO;

.field public static final enum f:Lcom/android/tools/r8/internal/EO;

.field public static final synthetic g:[Lcom/android/tools/r8/internal/EO;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/EO;

    const/4 v1, 0x0

    const-string v2, "ONLY_CLASS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/EO;->b:Lcom/android/tools/r8/internal/EO;

    new-instance v1, Lcom/android/tools/r8/internal/EO;

    const/4 v2, 0x1

    const-string v3, "ONLY_MEMBERS"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/internal/EO;

    const/4 v3, 0x2

    const-string v4, "ONLY_METHODS"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/android/tools/r8/internal/EO;

    const/4 v4, 0x3

    const-string v5, "ONLY_FIELDS"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/EO;->c:Lcom/android/tools/r8/internal/EO;

    new-instance v4, Lcom/android/tools/r8/internal/EO;

    const/4 v5, 0x4

    const-string v6, "CLASS_AND_MEMBERS"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/EO;->d:Lcom/android/tools/r8/internal/EO;

    new-instance v5, Lcom/android/tools/r8/internal/EO;

    const/4 v6, 0x5

    const-string v7, "CLASS_AND_METHODS"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/EO;->e:Lcom/android/tools/r8/internal/EO;

    new-instance v6, Lcom/android/tools/r8/internal/EO;

    const/4 v7, 0x6

    const-string v8, "CLASS_AND_FIELDS"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/EO;->f:Lcom/android/tools/r8/internal/EO;

    new-instance v7, Lcom/android/tools/r8/internal/EO;

    const/4 v8, 0x7

    const-string v9, "DEFAULT"

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/internal/EO;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/internal/EO;->DEFAULT:Lcom/android/tools/r8/internal/EO;

    filled-new-array/range {v0 .. v7}, [Lcom/android/tools/r8/internal/EO;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/EO;->g:[Lcom/android/tools/r8/internal/EO;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/tools/r8/internal/EO;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/EO;->g:[Lcom/android/tools/r8/internal/EO;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/EO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/EO;

    return-object v0
.end method
