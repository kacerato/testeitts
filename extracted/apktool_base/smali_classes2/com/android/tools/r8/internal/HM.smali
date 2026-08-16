.class public final Lcom/android/tools/r8/internal/HM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/mP;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/HM;->a:Lcom/android/tools/r8/internal/mP;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/HM;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/annotation/RetentionPolicy;)Lcom/android/tools/r8/internal/HM;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/GM;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Retention policy SOURCE cannot be used in patterns"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/HM;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/tools/r8/internal/HM;->b:I

    return-object p0

    .line 5
    :cond_2
    iget p1, p0, Lcom/android/tools/r8/internal/HM;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/tools/r8/internal/HM;->b:I

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/IM;
    .locals 4

    .line 6
    iget v0, p0, Lcom/android/tools/r8/internal/HM;->b:I

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/HM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/HM;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/IM;->c:Lcom/android/tools/r8/internal/IM;

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    iget v1, p0, Lcom/android/tools/r8/internal/HM;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid retention policy value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/IM;->e:Lcom/android/tools/r8/internal/IM;

    return-object v0

    .line 12
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/IM;->d:Lcom/android/tools/r8/internal/IM;

    return-object v0

    .line 13
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/IM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HM;->a:Lcom/android/tools/r8/internal/mP;

    iget v2, p0, Lcom/android/tools/r8/internal/HM;->b:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/IM;-><init>(Lcom/android/tools/r8/internal/mP;I)V

    return-object v0

    .line 14
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid empty retention policy"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method
