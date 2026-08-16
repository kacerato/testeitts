.class public final enum Lcom/android/tools/r8/graph/R3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/graph/R3$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/graph/R3$a;

.field public static final enum c:Lcom/android/tools/r8/graph/R3$a;

.field public static final enum d:Lcom/android/tools/r8/graph/R3$a;

.field public static final enum e:Lcom/android/tools/r8/graph/R3$a;

.field public static final enum f:Lcom/android/tools/r8/graph/R3$a;

.field public static final synthetic g:[Lcom/android/tools/r8/graph/R3$a;

.field public static final synthetic h:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/tools/r8/graph/R3$a;

    const/4 v1, 0x0

    const-string v2, "INVALID_SUPER_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/R3$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/R3$a;->b:Lcom/android/tools/r8/graph/R3$a;

    new-instance v1, Lcom/android/tools/r8/graph/R3$a;

    const/4 v2, 0x1

    const-string v3, "INVALID_INTERFACE_TYPE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/graph/R3$a;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/graph/R3$a;

    const/4 v3, 0x2

    const-string v4, "INVALID_INTERFACE_COUNT"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/graph/R3$a;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/graph/R3$a;->c:Lcom/android/tools/r8/graph/R3$a;

    new-instance v3, Lcom/android/tools/r8/graph/R3$a;

    const/4 v4, 0x3

    const-string v5, "INVALID_APPLICATION_COUNT"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/graph/R3$a;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/graph/R3$a;->d:Lcom/android/tools/r8/graph/R3$a;

    new-instance v4, Lcom/android/tools/r8/graph/R3$a;

    const/4 v5, 0x4

    const-string v6, "INVALID_TYPE_VARIABLE_UNDEFINED"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/graph/R3$a;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/graph/R3$a;->e:Lcom/android/tools/r8/graph/R3$a;

    new-instance v5, Lcom/android/tools/r8/graph/R3$a;

    const/4 v6, 0x5

    const-string v7, "VALID"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/graph/R3$a;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    filled-new-array/range {v0 .. v5}, [Lcom/android/tools/r8/graph/R3$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/graph/R3$a;->g:[Lcom/android/tools/r8/graph/R3$a;

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

    sget-object v0, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
