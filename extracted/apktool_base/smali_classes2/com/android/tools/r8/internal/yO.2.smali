.class public final Lcom/android/tools/r8/internal/yO;
.super Lcom/android/tools/r8/internal/zO;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/yO;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/DP;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/yO;

    sget-object v1, Lcom/android/tools/r8/internal/zP;->a:Lcom/android/tools/r8/internal/zP;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/yO;-><init>(Lcom/android/tools/r8/internal/DP;)V

    sput-object v0, Lcom/android/tools/r8/internal/yO;->b:Lcom/android/tools/r8/internal/yO;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/DP;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zO;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/yO;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/yO;

    iget-object v0, p0, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yO;->a:Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
