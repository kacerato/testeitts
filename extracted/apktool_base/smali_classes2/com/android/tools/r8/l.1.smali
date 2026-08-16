.class public final enum Lcom/android/tools/r8/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/l;

.field public static final enum c:Lcom/android/tools/r8/l;

.field public static final enum d:Lcom/android/tools/r8/l;

.field public static final enum e:Lcom/android/tools/r8/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/l;

    const/4 v1, 0x0

    const-string v2, "ENABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/l;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/l;->b:Lcom/android/tools/r8/l;

    new-instance v0, Lcom/android/tools/r8/l;

    const/4 v1, 0x1

    const-string v2, "DISABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/l;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/l;->c:Lcom/android/tools/r8/l;

    new-instance v0, Lcom/android/tools/r8/l;

    const/4 v1, 0x2

    const-string v2, "PASSTHROUGH"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/l;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/l;->d:Lcom/android/tools/r8/l;

    new-instance v0, Lcom/android/tools/r8/l;

    const/4 v1, 0x3

    const-string v2, "HANDLER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/l;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/l;->e:Lcom/android/tools/r8/l;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
