.class public final enum Lcom/android/tools/r8/internal/Zk;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/Zk;

.field public static final enum d:Lcom/android/tools/r8/internal/Zk;

.field public static final enum e:Lcom/android/tools/r8/internal/Zk;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Zk;

    const-string v1, "IDEMPOTENCY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/Zk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Zk;->c:Lcom/android/tools/r8/internal/Zk;

    new-instance v0, Lcom/android/tools/r8/internal/Zk;

    const-string v1, "NO_SIDE_EFFECTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/Zk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Zk;->d:Lcom/android/tools/r8/internal/Zk;

    new-instance v0, Lcom/android/tools/r8/internal/Zk;

    const-string v1, "IDEMPOTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/Zk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Zk;->e:Lcom/android/tools/r8/internal/Zk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/Zk;->b:I

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/Zk;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Zk;->e:Lcom/android/tools/r8/internal/Zk;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/Zk;->d:Lcom/android/tools/r8/internal/Zk;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/Zk;->c:Lcom/android/tools/r8/internal/Zk;

    return-object p0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Zk;->b:I

    return v0
.end method
