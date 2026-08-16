.class public final enum Lcom/android/tools/r8/ir/optimize/U;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/ir/optimize/U;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/ir/optimize/U;

.field public static final enum c:Lcom/android/tools/r8/ir/optimize/U;

.field public static final enum d:Lcom/android/tools/r8/ir/optimize/U;

.field public static final enum e:Lcom/android/tools/r8/ir/optimize/U;

.field public static final enum f:Lcom/android/tools/r8/ir/optimize/U;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/U;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x1

    const-string v2, "SINGLE_CALLER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/U;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/U;->c:Lcom/android/tools/r8/ir/optimize/U;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x2

    const-string v2, "MULTI_CALLER_CANDIDATE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/U;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/U;->d:Lcom/android/tools/r8/ir/optimize/U;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x3

    const-string v2, "SIMPLE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/U;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/U;->e:Lcom/android/tools/r8/ir/optimize/U;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x4

    const-string v2, "NEVER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/U;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
