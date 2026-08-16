.class public final enum Lcom/android/tools/r8/internal/Pk;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/Pk;

.field public static final enum d:Lcom/android/tools/r8/internal/Pk;

.field public static final enum e:Lcom/android/tools/r8/internal/Pk;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Pk;

    const-string v1, "SPEED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Pk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Pk;->c:Lcom/android/tools/r8/internal/Pk;

    new-instance v0, Lcom/android/tools/r8/internal/Pk;

    const-string v1, "CODE_SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/Pk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Pk;->d:Lcom/android/tools/r8/internal/Pk;

    new-instance v0, Lcom/android/tools/r8/internal/Pk;

    const-string v1, "LITE_RUNTIME"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Pk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Pk;->e:Lcom/android/tools/r8/internal/Pk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/Pk;->b:I

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/Pk;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Pk;->e:Lcom/android/tools/r8/internal/Pk;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/Pk;->d:Lcom/android/tools/r8/internal/Pk;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/Pk;->c:Lcom/android/tools/r8/internal/Pk;

    return-object p0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Pk;->b:I

    return v0
.end method
