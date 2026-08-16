.class public final enum Lcom/android/tools/r8/internal/d60;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/d60;

.field public static final enum d:Lcom/android/tools/r8/internal/d60;

.field public static final enum e:Lcom/android/tools/r8/internal/d60;

.field public static final enum f:Lcom/android/tools/r8/internal/d60;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/d60;

    const-string v1, "JUST_MEMBERS"

    const-string v2, "-keepclassmembers"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/d60;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    new-instance v0, Lcom/android/tools/r8/internal/d60;

    const-string v1, "CLASS_OR_MEMBERS"

    const-string v2, "-keep"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/d60;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/d60;->d:Lcom/android/tools/r8/internal/d60;

    new-instance v0, Lcom/android/tools/r8/internal/d60;

    const-string v1, "CLASS_AND_MEMBERS"

    const-string v2, "-keepclasseswithmembers"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/d60;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/d60;->e:Lcom/android/tools/r8/internal/d60;

    new-instance v0, Lcom/android/tools/r8/internal/d60;

    const-string v1, "CHECK_DISCARD"

    const-string v2, "-checkdiscard"

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/d60;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/d60;->f:Lcom/android/tools/r8/internal/d60;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/d60;->b:Ljava/lang/String;

    return-void
.end method
