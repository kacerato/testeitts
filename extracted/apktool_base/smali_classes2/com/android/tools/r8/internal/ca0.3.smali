.class public final enum Lcom/android/tools/r8/internal/ca0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/PI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/ca0;

.field public static final enum d:Lcom/android/tools/r8/internal/ca0;

.field public static final enum e:Lcom/android/tools/r8/internal/ca0;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ca0;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/ca0;->c:Lcom/android/tools/r8/internal/ca0;

    new-instance v0, Lcom/android/tools/r8/internal/ca0;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/ca0;->d:Lcom/android/tools/r8/internal/ca0;

    new-instance v0, Lcom/android/tools/r8/internal/ca0;

    const-string v1, "HIDDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/ca0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/ca0;->e:Lcom/android/tools/r8/internal/ca0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/ca0;->b:I

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ca0;->b:I

    return v0
.end method
