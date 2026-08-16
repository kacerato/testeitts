.class public final enum Lcom/android/tools/r8/shaking/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/r;

.field public static final enum c:Lcom/android/tools/r8/shaking/r;

.field public static final synthetic d:[Lcom/android/tools/r8/shaking/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/shaking/r;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/r;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/r;->b:Lcom/android/tools/r8/shaking/r;

    new-instance v1, Lcom/android/tools/r8/shaking/r;

    const/4 v2, 0x1

    const-string v3, "NEVER"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/shaking/r;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/shaking/r;->c:Lcom/android/tools/r8/shaking/r;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/shaking/r;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/r;->d:[Lcom/android/tools/r8/shaking/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
