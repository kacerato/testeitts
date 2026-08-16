.class public final enum Lcom/android/tools/r8/internal/lM;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/PI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/lM;

.field public static final enum d:Lcom/android/tools/r8/internal/lM;

.field public static final enum e:Lcom/android/tools/r8/internal/lM;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/lM;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/lM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/lM;->c:Lcom/android/tools/r8/internal/lM;

    new-instance v0, Lcom/android/tools/r8/internal/lM;

    const-string v1, "INTERNAL_TO_CLASS_ID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/lM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/lM;->d:Lcom/android/tools/r8/internal/lM;

    new-instance v0, Lcom/android/tools/r8/internal/lM;

    const-string v1, "DESC_TO_CLASS_ID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/lM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/lM;->e:Lcom/android/tools/r8/internal/lM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/lM;->b:I

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/lM;->b:I

    return v0
.end method
