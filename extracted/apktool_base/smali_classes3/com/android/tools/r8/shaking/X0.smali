.class public final enum Lcom/android/tools/r8/shaking/X0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/X0;

.field public static final enum c:Lcom/android/tools/r8/shaking/X0;

.field public static final enum d:Lcom/android/tools/r8/shaking/X0;

.field public static final synthetic e:[Lcom/android/tools/r8/shaking/X0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/shaking/X0;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/X0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/X0;->b:Lcom/android/tools/r8/shaking/X0;

    new-instance v1, Lcom/android/tools/r8/shaking/X0;

    const/4 v2, 0x1

    const-string v3, "NEVER"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/shaking/X0;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/shaking/X0;->c:Lcom/android/tools/r8/shaking/X0;

    new-instance v2, Lcom/android/tools/r8/shaking/X0;

    const/4 v3, 0x2

    const-string v4, "NEVER_CLASS_INLINE"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/shaking/X0;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/android/tools/r8/shaking/X0;

    const/4 v4, 0x3

    const-string v5, "NEVER_SINGLE_CALLER"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/shaking/X0;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/shaking/X0;->d:Lcom/android/tools/r8/shaking/X0;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/shaking/X0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/X0;->e:[Lcom/android/tools/r8/shaking/X0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
