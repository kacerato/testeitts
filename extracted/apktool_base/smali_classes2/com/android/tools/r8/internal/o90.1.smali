.class public final enum Lcom/android/tools/r8/internal/o90;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/PI;


# static fields
.field public static final synthetic c:[Lcom/android/tools/r8/internal/o90;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/o90;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/o90;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/tools/r8/internal/o90;

    const-string v2, "FAKE_OVERRIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/tools/r8/internal/o90;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/tools/r8/internal/o90;

    const-string v3, "DELEGATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/tools/r8/internal/o90;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/tools/r8/internal/o90;

    const-string v4, "SYNTHESIZED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/tools/r8/internal/o90;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/internal/o90;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/o90;->c:[Lcom/android/tools/r8/internal/o90;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/o90;->b:I

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/o90;->b:I

    return v0
.end method
