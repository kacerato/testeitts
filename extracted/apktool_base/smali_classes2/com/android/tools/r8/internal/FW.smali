.class public final enum Lcom/android/tools/r8/internal/FW;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/FW;

.field public static final enum c:Lcom/android/tools/r8/internal/FW;

.field public static final enum d:Lcom/android/tools/r8/internal/FW;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/FW;

    const/4 v1, 0x0

    const-string v2, "CF"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    new-instance v0, Lcom/android/tools/r8/internal/FW;

    const/4 v1, 0x1

    const-string v2, "DEX"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    new-instance v0, Lcom/android/tools/r8/internal/FW;

    const/4 v1, 0x2

    const-string v2, "LIR"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/FW;->d:Lcom/android/tools/r8/internal/FW;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
