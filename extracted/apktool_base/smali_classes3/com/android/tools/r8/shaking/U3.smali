.class public final enum Lcom/android/tools/r8/shaking/U3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/shaking/U3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/U3;

.field public static final enum c:Lcom/android/tools/r8/shaking/U3;

.field public static final enum d:Lcom/android/tools/r8/shaking/U3;

.field public static final enum e:Lcom/android/tools/r8/shaking/U3;

.field public static final enum f:Lcom/android/tools/r8/shaking/U3;

.field public static final enum g:Lcom/android/tools/r8/shaking/U3;

.field public static final enum h:Lcom/android/tools/r8/shaking/U3;

.field public static final enum i:Lcom/android/tools/r8/shaking/U3;

.field public static final synthetic j:[Lcom/android/tools/r8/shaking/U3;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/shaking/U3;

    const/4 v1, 0x0

    const-string v2, "FIELD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/U3;->b:Lcom/android/tools/r8/shaking/U3;

    new-instance v1, Lcom/android/tools/r8/shaking/U3;

    const/4 v2, 0x1

    const-string v3, "ALL_FIELDS"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/shaking/U3;->c:Lcom/android/tools/r8/shaking/U3;

    new-instance v2, Lcom/android/tools/r8/shaking/U3;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    new-instance v3, Lcom/android/tools/r8/shaking/U3;

    const/4 v4, 0x3

    const-string v5, "ALL_METHODS"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/shaking/U3;->e:Lcom/android/tools/r8/shaking/U3;

    new-instance v4, Lcom/android/tools/r8/shaking/U3;

    const/4 v5, 0x4

    const-string v6, "CLINIT"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/shaking/U3;->f:Lcom/android/tools/r8/shaking/U3;

    new-instance v5, Lcom/android/tools/r8/shaking/U3;

    const/4 v6, 0x5

    const-string v7, "INIT"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/shaking/U3;->g:Lcom/android/tools/r8/shaking/U3;

    new-instance v6, Lcom/android/tools/r8/shaking/U3;

    const/4 v7, 0x6

    const-string v8, "CONSTRUCTOR"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/shaking/U3;->h:Lcom/android/tools/r8/shaking/U3;

    new-instance v7, Lcom/android/tools/r8/shaking/U3;

    const/4 v8, 0x7

    const-string v9, "METHOD"

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/shaking/U3;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/shaking/U3;->i:Lcom/android/tools/r8/shaking/U3;

    filled-new-array/range {v0 .. v7}, [Lcom/android/tools/r8/shaking/U3;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/U3;->j:[Lcom/android/tools/r8/shaking/U3;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
