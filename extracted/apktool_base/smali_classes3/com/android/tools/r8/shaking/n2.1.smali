.class public final enum Lcom/android/tools/r8/shaking/n2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/n2;

.field public static final enum c:Lcom/android/tools/r8/shaking/n2;

.field public static final enum d:Lcom/android/tools/r8/shaking/n2;

.field public static final enum e:Lcom/android/tools/r8/shaking/n2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/shaking/n2;

    const/4 v1, 0x0

    const-string v2, "MAIN_DEX_LIST"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/n2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/n2;->b:Lcom/android/tools/r8/shaking/n2;

    new-instance v0, Lcom/android/tools/r8/shaking/n2;

    const/4 v1, 0x1

    const-string v2, "MAIN_DEX_ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/n2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/n2;->c:Lcom/android/tools/r8/shaking/n2;

    new-instance v0, Lcom/android/tools/r8/shaking/n2;

    const/4 v1, 0x2

    const-string v2, "MAIN_DEX_DEPENDENCY"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/n2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/n2;->d:Lcom/android/tools/r8/shaking/n2;

    new-instance v0, Lcom/android/tools/r8/shaking/n2;

    const/4 v1, 0x3

    const-string v2, "NOT_IN_MAIN_DEX"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/n2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/n2;->e:Lcom/android/tools/r8/shaking/n2;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
