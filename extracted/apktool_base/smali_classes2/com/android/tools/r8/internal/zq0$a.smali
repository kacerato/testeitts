.class public final enum Lcom/android/tools/r8/internal/zq0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/zq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/zq0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/zq0$a;

.field public static final enum c:Lcom/android/tools/r8/internal/zq0$a;

.field public static final enum d:Lcom/android/tools/r8/internal/zq0$a;

.field public static final enum e:Lcom/android/tools/r8/internal/zq0$a;

.field public static final synthetic f:[Lcom/android/tools/r8/internal/zq0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/zq0$a;

    const/4 v1, 0x0

    const-string v2, "PARENS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/zq0$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    new-instance v1, Lcom/android/tools/r8/internal/zq0$a;

    const/4 v2, 0x1

    const-string v3, "SQUARE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/zq0$a;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/zq0$a;->c:Lcom/android/tools/r8/internal/zq0$a;

    new-instance v2, Lcom/android/tools/r8/internal/zq0$a;

    const/4 v3, 0x2

    const-string v4, "TUBORG"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/zq0$a;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/zq0$a;->d:Lcom/android/tools/r8/internal/zq0$a;

    new-instance v3, Lcom/android/tools/r8/internal/zq0$a;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/zq0$a;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/zq0$a;->e:Lcom/android/tools/r8/internal/zq0$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/internal/zq0$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/zq0$a;->f:[Lcom/android/tools/r8/internal/zq0$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/yq0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid brace type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "{"

    return-object v0

    :cond_2
    const-string v0, "["

    return-object v0

    :cond_3
    const-string v0, "("

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/yq0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid brace type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "}"

    return-object v0

    :cond_2
    const-string v0, "]"

    return-object v0

    :cond_3
    const-string v0, ")"

    return-object v0
.end method
