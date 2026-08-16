.class public final enum Lcom/android/tools/r8/AssertionsConfiguration$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/AssertionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/AssertionsConfiguration$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/AssertionsConfiguration$a;

.field public static final enum c:Lcom/android/tools/r8/AssertionsConfiguration$a;

.field public static final enum d:Lcom/android/tools/r8/AssertionsConfiguration$a;

.field public static final synthetic e:[Lcom/android/tools/r8/AssertionsConfiguration$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/AssertionsConfiguration$a;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/AssertionsConfiguration$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/AssertionsConfiguration$a;->b:Lcom/android/tools/r8/AssertionsConfiguration$a;

    new-instance v1, Lcom/android/tools/r8/AssertionsConfiguration$a;

    const/4 v2, 0x1

    const-string v3, "PACKAGE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/AssertionsConfiguration$a;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/AssertionsConfiguration$a;->c:Lcom/android/tools/r8/AssertionsConfiguration$a;

    new-instance v2, Lcom/android/tools/r8/AssertionsConfiguration$a;

    const/4 v3, 0x2

    const-string v4, "CLASS"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/AssertionsConfiguration$a;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/AssertionsConfiguration$a;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    filled-new-array {v0, v1, v2}, [Lcom/android/tools/r8/AssertionsConfiguration$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/AssertionsConfiguration$a;->e:[Lcom/android/tools/r8/AssertionsConfiguration$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
