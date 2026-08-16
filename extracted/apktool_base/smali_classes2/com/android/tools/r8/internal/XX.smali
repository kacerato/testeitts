.class public final enum Lcom/android/tools/r8/internal/XX;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/XX;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/XX;

.field public static final enum c:Lcom/android/tools/r8/internal/XX;

.field public static final synthetic d:[Lcom/android/tools/r8/internal/XX;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/XX;

    const/4 v1, 0x0

    const-string v2, "ENTER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/XX;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    new-instance v1, Lcom/android/tools/r8/internal/XX;

    const/4 v2, 0x1

    const-string v3, "EXIT"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/XX;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/internal/XX;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/XX;->d:[Lcom/android/tools/r8/internal/XX;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
