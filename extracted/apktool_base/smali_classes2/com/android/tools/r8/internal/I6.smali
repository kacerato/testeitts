.class public final enum Lcom/android/tools/r8/internal/I6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/I6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/I6;

.field public static final enum c:Lcom/android/tools/r8/internal/I6;

.field public static final enum d:Lcom/android/tools/r8/internal/I6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/I6;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/I6;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/I6;->b:Lcom/android/tools/r8/internal/I6;

    new-instance v0, Lcom/android/tools/r8/internal/I6;

    const/4 v1, 0x1

    const-string v2, "GOOD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/I6;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/I6;->c:Lcom/android/tools/r8/internal/I6;

    new-instance v0, Lcom/android/tools/r8/internal/I6;

    const/4 v1, 0x2

    const-string v2, "BAD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/I6;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/I6;->d:Lcom/android/tools/r8/internal/I6;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
