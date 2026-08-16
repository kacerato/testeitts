.class public final enum Lcom/android/tools/r8/internal/kS;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/kS;

.field public static final enum c:Lcom/android/tools/r8/internal/kS;

.field public static final enum d:Lcom/android/tools/r8/internal/kS;

.field public static final enum e:Lcom/android/tools/r8/internal/kS;

.field public static final enum f:Lcom/android/tools/r8/internal/kS;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/kS;

    const/4 v1, 0x0

    const-string v2, "ALLOW_ARGUMENT_REUSE_U4BIT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/kS;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kS;->b:Lcom/android/tools/r8/internal/kS;

    new-instance v0, Lcom/android/tools/r8/internal/kS;

    const/4 v1, 0x1

    const-string v2, "ALLOW_ARGUMENT_REUSE_U8BIT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/kS;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kS;->c:Lcom/android/tools/r8/internal/kS;

    new-instance v0, Lcom/android/tools/r8/internal/kS;

    const/4 v1, 0x2

    const-string v2, "ALLOW_ARGUMENT_REUSE_U8BIT_REFINEMENT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/kS;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kS;->d:Lcom/android/tools/r8/internal/kS;

    new-instance v0, Lcom/android/tools/r8/internal/kS;

    const/4 v1, 0x3

    const-string v2, "ALLOW_ARGUMENT_REUSE_U8BIT_RETRY"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/kS;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kS;->e:Lcom/android/tools/r8/internal/kS;

    new-instance v0, Lcom/android/tools/r8/internal/kS;

    const/4 v1, 0x4

    const-string v2, "ALLOW_ARGUMENT_REUSE_U16BIT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/kS;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/kS;->f:Lcom/android/tools/r8/internal/kS;

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

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/kS;->b:Lcom/android/tools/r8/internal/kS;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 2
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_2
    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kS;->d:Lcom/android/tools/r8/internal/kS;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
