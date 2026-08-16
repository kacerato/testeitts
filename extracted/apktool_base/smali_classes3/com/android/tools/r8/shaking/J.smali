.class public final enum Lcom/android/tools/r8/shaking/J;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/J;

.field public static final enum c:Lcom/android/tools/r8/shaking/J;

.field public static final enum d:Lcom/android/tools/r8/shaking/J;

.field public static final enum e:Lcom/android/tools/r8/shaking/J;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/shaking/J;

    const/4 v1, 0x0

    const-string v2, "INSTANCE_READ"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/J;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/J;->b:Lcom/android/tools/r8/shaking/J;

    new-instance v0, Lcom/android/tools/r8/shaking/J;

    const/4 v1, 0x1

    const-string v2, "INSTANCE_WRITE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/J;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/J;->c:Lcom/android/tools/r8/shaking/J;

    new-instance v0, Lcom/android/tools/r8/shaking/J;

    const/4 v1, 0x2

    const-string v2, "STATIC_READ"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/J;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    new-instance v0, Lcom/android/tools/r8/shaking/J;

    const/4 v1, 0x3

    const-string v2, "STATIC_WRITE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/J;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/J;->e:Lcom/android/tools/r8/shaking/J;

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

    sget-object v0, Lcom/android/tools/r8/shaking/J;->b:Lcom/android/tools/r8/shaking/J;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
