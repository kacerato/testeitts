.class public final enum Lcom/android/tools/r8/internal/Kr0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/Kr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/Kr0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/Kr0$a;

.field public static final enum d:Lcom/android/tools/r8/internal/Kr0$a;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Kr0$a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "HEAVY"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Kr0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Kr0$a;->c:Lcom/android/tools/r8/internal/Kr0$a;

    new-instance v0, Lcom/android/tools/r8/internal/Kr0$a;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v3, "LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Kr0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Kr0$a;->d:Lcom/android/tools/r8/internal/Kr0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/Kr0$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Kr0$a;->b:I

    return v0
.end method
