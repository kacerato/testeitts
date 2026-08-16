.class public final enum Lcom/android/tools/r8/internal/UW;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/UW;

.field public static final enum c:Lcom/android/tools/r8/internal/UW;

.field public static final enum d:Lcom/android/tools/r8/internal/UW;

.field public static final enum e:Lcom/android/tools/r8/internal/UW;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/UW;

    const/4 v1, 0x0

    const-string v2, "DESIRED_EFFECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/UW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/UW;->b:Lcom/android/tools/r8/internal/UW;

    new-instance v0, Lcom/android/tools/r8/internal/UW;

    const/4 v1, 0x1

    const-string v2, "CONDITIONAL_EFFECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/UW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/UW;->c:Lcom/android/tools/r8/internal/UW;

    new-instance v0, Lcom/android/tools/r8/internal/UW;

    const/4 v1, 0x2

    const-string v2, "OTHER_EFFECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/UW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/UW;->d:Lcom/android/tools/r8/internal/UW;

    new-instance v0, Lcom/android/tools/r8/internal/UW;

    const/4 v1, 0x3

    const-string v2, "NO_EFFECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/UW;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/UW;->e:Lcom/android/tools/r8/internal/UW;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
