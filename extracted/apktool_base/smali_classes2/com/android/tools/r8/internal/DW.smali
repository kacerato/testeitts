.class public final Lcom/android/tools/r8/internal/DW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/DW;

.field public static final d:Lcom/android/tools/r8/internal/DW;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/yw0;

.field public final b:[Lcom/android/tools/r8/internal/yw0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/DW;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/DW;-><init>(Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V

    sput-object v0, Lcom/android/tools/r8/internal/DW;->c:Lcom/android/tools/r8/internal/DW;

    new-instance v0, Lcom/android/tools/r8/internal/DW;

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/DW;-><init>(Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V

    sput-object v0, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/yw0;[Lcom/android/tools/r8/internal/yw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/DW;->c:Lcom/android/tools/r8/internal/DW;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MethodBoxingStatus["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/r8/internal/DW;->d:Lcom/android/tools/r8/internal/DW;

    if-ne p0, v1, :cond_0

    const-string v1, "UNPROCESSED_CANDIDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/DW;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NONE_UNBOXABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    array-length v3, v2

    const-string v4, ";"

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/DW;->b:[Lcom/android/tools/r8/internal/yw0;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DW;->a:Lcom/android/tools/r8/internal/yw0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
