.class public final enum Lcom/android/tools/r8/internal/U5;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/U5;

.field public static final enum c:Lcom/android/tools/r8/internal/U5;

.field public static final enum d:Lcom/android/tools/r8/internal/U5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/U5;

    const/4 v1, 0x0

    const-string v2, "NON_EDGE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/U5;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/U5;->b:Lcom/android/tools/r8/internal/U5;

    new-instance v0, Lcom/android/tools/r8/internal/U5;

    const/4 v1, 0x1

    const-string v2, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/U5;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/U5;->c:Lcom/android/tools/r8/internal/U5;

    new-instance v0, Lcom/android/tools/r8/internal/U5;

    const/4 v1, 0x2

    const-string v2, "EXCEPTIONAL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/U5;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
