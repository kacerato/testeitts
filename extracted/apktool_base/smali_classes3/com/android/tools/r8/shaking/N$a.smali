.class public final enum Lcom/android/tools/r8/shaking/N$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/shaking/N$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/N$a;

.field public static final enum c:Lcom/android/tools/r8/shaking/N$a;

.field public static final enum d:Lcom/android/tools/r8/shaking/N$a;

.field public static final enum e:Lcom/android/tools/r8/shaking/N$a;

.field public static final enum f:Lcom/android/tools/r8/shaking/N$a;

.field public static final enum g:Lcom/android/tools/r8/shaking/N$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/shaking/N$a;

    const/4 v1, 0x0

    const-string v2, "INITIAL_TREE_SHAKING"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/N$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/N$a;->b:Lcom/android/tools/r8/shaking/N$a;

    new-instance v0, Lcom/android/tools/r8/shaking/N$a;

    const/4 v1, 0x1

    const-string v2, "FINAL_TREE_SHAKING"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/N$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/N$a;->c:Lcom/android/tools/r8/shaking/N$a;

    new-instance v0, Lcom/android/tools/r8/shaking/N$a;

    const/4 v1, 0x2

    const-string v2, "INITIAL_MAIN_DEX_TRACING"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/N$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/N$a;->d:Lcom/android/tools/r8/shaking/N$a;

    new-instance v0, Lcom/android/tools/r8/shaking/N$a;

    const/4 v1, 0x3

    const-string v2, "FINAL_MAIN_DEX_TRACING"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/N$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/N$a;->e:Lcom/android/tools/r8/shaking/N$a;

    new-instance v0, Lcom/android/tools/r8/shaking/N$a;

    const/4 v1, 0x4

    const-string v2, "GENERATE_MAIN_DEX_LIST"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/N$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/N$a;->f:Lcom/android/tools/r8/shaking/N$a;

    new-instance v0, Lcom/android/tools/r8/shaking/N$a;

    const/4 v1, 0x5

    const-string v2, "WHY_ARE_YOU_KEEPING"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/N$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/N$a;->g:Lcom/android/tools/r8/shaking/N$a;

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

    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->c:Lcom/android/tools/r8/shaking/N$a;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->b:Lcom/android/tools/r8/shaking/N$a;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->d:Lcom/android/tools/r8/shaking/N$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->e:Lcom/android/tools/r8/shaking/N$a;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->f:Lcom/android/tools/r8/shaking/N$a;

    if-ne p0, v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
