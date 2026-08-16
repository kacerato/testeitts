.class public final enum Lcom/android/tools/r8/internal/V8$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/V8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/V8$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/V8$a;

.field public static final enum c:Lcom/android/tools/r8/internal/V8$a;

.field public static final enum d:Lcom/android/tools/r8/internal/V8$a;

.field public static final enum e:Lcom/android/tools/r8/internal/V8$a;

.field public static final enum f:Lcom/android/tools/r8/internal/V8$a;

.field public static final synthetic g:[Lcom/android/tools/r8/internal/V8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/V8$a;

    const/4 v1, 0x0

    const-string v2, "Add"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/V8$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    new-instance v1, Lcom/android/tools/r8/internal/V8$a;

    const/4 v2, 0x1

    const-string v3, "Sub"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/V8$a;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    new-instance v2, Lcom/android/tools/r8/internal/V8$a;

    const/4 v3, 0x2

    const-string v4, "Mul"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/V8$a;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    new-instance v3, Lcom/android/tools/r8/internal/V8$a;

    const/4 v4, 0x3

    const-string v5, "Div"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/V8$a;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    new-instance v4, Lcom/android/tools/r8/internal/V8$a;

    const/4 v5, 0x4

    const-string v6, "Rem"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/V8$a;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/tools/r8/internal/V8$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/V8$a;->g:[Lcom/android/tools/r8/internal/V8$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
