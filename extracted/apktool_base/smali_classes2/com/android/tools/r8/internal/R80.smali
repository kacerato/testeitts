.class public final enum Lcom/android/tools/r8/internal/R80;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/PI;


# static fields
.field public static final synthetic c:[Lcom/android/tools/r8/internal/R80;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/tools/r8/internal/R80;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/tools/r8/internal/R80;

    const-string v2, "INTERFACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/tools/r8/internal/R80;

    const-string v3, "ENUM_CLASS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/tools/r8/internal/R80;

    const-string v4, "ENUM_ENTRY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/tools/r8/internal/R80;

    const-string v5, "ANNOTATION_CLASS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/tools/r8/internal/R80;

    const-string v6, "OBJECT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/tools/r8/internal/R80;

    const-string v7, "COMPANION_OBJECT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/tools/r8/internal/R80;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v6}, [Lcom/android/tools/r8/internal/R80;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/R80;->c:[Lcom/android/tools/r8/internal/R80;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/R80;->b:I

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/R80;->b:I

    return v0
.end method
