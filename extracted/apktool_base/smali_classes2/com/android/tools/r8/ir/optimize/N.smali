.class public final enum Lcom/android/tools/r8/ir/optimize/N;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/ir/optimize/N;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/android/tools/r8/ir/optimize/N;

.field public static final enum d:Lcom/android/tools/r8/ir/optimize/N;

.field public static final enum e:Lcom/android/tools/r8/ir/optimize/N;

.field public static final enum f:Lcom/android/tools/r8/ir/optimize/N;

.field public static final enum g:Lcom/android/tools/r8/ir/optimize/N;

.field public static final enum h:Lcom/android/tools/r8/ir/optimize/N;

.field public static final synthetic i:[Lcom/android/tools/r8/ir/optimize/N;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/tools/r8/ir/optimize/N;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/ir/optimize/N;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    new-instance v1, Lcom/android/tools/r8/ir/optimize/N;

    const-string v2, "SAMECLASS"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/ir/optimize/N;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/ir/optimize/N;->d:Lcom/android/tools/r8/ir/optimize/N;

    new-instance v2, Lcom/android/tools/r8/ir/optimize/N;

    const-string v3, "SAMENEST"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/ir/optimize/N;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/r8/ir/optimize/N;->e:Lcom/android/tools/r8/ir/optimize/N;

    new-instance v3, Lcom/android/tools/r8/ir/optimize/N;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "PACKAGE"

    invoke-direct {v3, v7, v4, v6}, Lcom/android/tools/r8/ir/optimize/N;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/tools/r8/ir/optimize/N;->f:Lcom/android/tools/r8/ir/optimize/N;

    new-instance v4, Lcom/android/tools/r8/ir/optimize/N;

    const-string v6, "SUBCLASS"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v5, v7}, Lcom/android/tools/r8/ir/optimize/N;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/r8/ir/optimize/N;->g:Lcom/android/tools/r8/ir/optimize/N;

    new-instance v5, Lcom/android/tools/r8/ir/optimize/N;

    const/4 v6, 0x5

    const/16 v7, 0x20

    const-string v8, "ALWAYS"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/tools/r8/ir/optimize/N;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/tools/r8/ir/optimize/N;->h:Lcom/android/tools/r8/ir/optimize/N;

    filled-new-array/range {v0 .. v5}, [Lcom/android/tools/r8/ir/optimize/N;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/ir/optimize/N;->i:[Lcom/android/tools/r8/ir/optimize/N;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/ir/optimize/N;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/ir/optimize/N;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
