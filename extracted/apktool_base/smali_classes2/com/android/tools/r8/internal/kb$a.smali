.class public final enum Lcom/android/tools/r8/internal/kb$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/kb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum d:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum e:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum f:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum g:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum h:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum i:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum j:Lcom/android/tools/r8/internal/kb$a;

.field public static final enum k:Lcom/android/tools/r8/internal/kb$a;

.field public static final synthetic l:[Lcom/android/tools/r8/internal/kb$a;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/tools/r8/internal/kb$a;

    const/4 v1, 0x0

    const/16 v2, 0x57

    const-string v3, "Pop"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    new-instance v1, Lcom/android/tools/r8/internal/kb$a;

    const/4 v2, 0x1

    const/16 v3, 0x58

    const-string v4, "Pop2"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    new-instance v2, Lcom/android/tools/r8/internal/kb$a;

    const/4 v3, 0x2

    const/16 v4, 0x59

    const-string v5, "Dup"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    new-instance v3, Lcom/android/tools/r8/internal/kb$a;

    const/4 v4, 0x3

    const/16 v5, 0x5a

    const-string v6, "DupX1"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/tools/r8/internal/kb$a;->f:Lcom/android/tools/r8/internal/kb$a;

    new-instance v4, Lcom/android/tools/r8/internal/kb$a;

    const/4 v5, 0x4

    const/16 v6, 0x5b

    const-string v7, "DupX2"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/r8/internal/kb$a;->g:Lcom/android/tools/r8/internal/kb$a;

    new-instance v5, Lcom/android/tools/r8/internal/kb$a;

    const/4 v6, 0x5

    const/16 v7, 0x5c

    const-string v8, "Dup2"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/tools/r8/internal/kb$a;->h:Lcom/android/tools/r8/internal/kb$a;

    new-instance v6, Lcom/android/tools/r8/internal/kb$a;

    const/4 v7, 0x6

    const/16 v8, 0x5d

    const-string v9, "Dup2X1"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/tools/r8/internal/kb$a;->i:Lcom/android/tools/r8/internal/kb$a;

    new-instance v7, Lcom/android/tools/r8/internal/kb$a;

    const/4 v8, 0x7

    const/16 v9, 0x5e

    const-string v10, "Dup2X2"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/tools/r8/internal/kb$a;->j:Lcom/android/tools/r8/internal/kb$a;

    new-instance v8, Lcom/android/tools/r8/internal/kb$a;

    const/16 v9, 0x8

    const/16 v10, 0x5f

    const-string v11, "Swap"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/tools/r8/internal/kb$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    filled-new-array/range {v0 .. v8}, [Lcom/android/tools/r8/internal/kb$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/kb$a;->l:[Lcom/android/tools/r8/internal/kb$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/kb$a;->b:I

    return-void
.end method
