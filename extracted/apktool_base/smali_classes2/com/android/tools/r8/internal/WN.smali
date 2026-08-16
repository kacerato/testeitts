.class public final enum Lcom/android/tools/r8/internal/WN;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/WN;

.field public static final enum c:Lcom/android/tools/r8/internal/WN;

.field public static final enum d:Lcom/android/tools/r8/internal/WN;

.field public static final enum e:Lcom/android/tools/r8/internal/WN;

.field public static final enum f:Lcom/android/tools/r8/internal/WN;

.field public static final enum g:Lcom/android/tools/r8/internal/WN;

.field public static final enum h:Lcom/android/tools/r8/internal/WN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x0

    const-string v2, "ONLY_CLASS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x1

    const-string v2, "ONLY_MEMBERS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->c:Lcom/android/tools/r8/internal/WN;

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x2

    const-string v2, "ONLY_METHODS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->d:Lcom/android/tools/r8/internal/WN;

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x3

    const-string v2, "ONLY_FIELDS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->e:Lcom/android/tools/r8/internal/WN;

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x4

    const-string v2, "CLASS_AND_MEMBERS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->f:Lcom/android/tools/r8/internal/WN;

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x5

    const-string v2, "CLASS_AND_METHODS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->g:Lcom/android/tools/r8/internal/WN;

    new-instance v0, Lcom/android/tools/r8/internal/WN;

    const/4 v1, 0x6

    const-string v2, "CLASS_AND_FIELDS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/WN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/WN;->h:Lcom/android/tools/r8/internal/WN;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/WN;->f:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/WN;->g:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/WN;->h:Lcom/android/tools/r8/internal/WN;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
