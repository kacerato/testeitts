.class public final enum Lcom/android/tools/r8/internal/FQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/metadata/KmVariance;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INVARIANT",
        "IN",
        "OUT",
        "kotlin-metadata"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/FQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/FQ;

.field public static final enum c:Lcom/android/tools/r8/internal/FQ;

.field public static final enum d:Lcom/android/tools/r8/internal/FQ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/FQ;

    const/4 v1, 0x0

    const-string v2, "INVARIANT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FQ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/FQ;->b:Lcom/android/tools/r8/internal/FQ;

    new-instance v0, Lcom/android/tools/r8/internal/FQ;

    const/4 v1, 0x1

    const-string v2, "IN"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FQ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/FQ;->c:Lcom/android/tools/r8/internal/FQ;

    new-instance v0, Lcom/android/tools/r8/internal/FQ;

    const/4 v1, 0x2

    const-string v2, "OUT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/FQ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/FQ;->d:Lcom/android/tools/r8/internal/FQ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
