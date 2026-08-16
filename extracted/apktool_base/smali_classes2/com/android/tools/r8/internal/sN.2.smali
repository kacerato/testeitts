.class public final enum Lcom/android/tools/r8/internal/sN;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/sN;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/sN;

.field public static final enum c:Lcom/android/tools/r8/internal/sN;

.field public static final enum d:Lcom/android/tools/r8/internal/sN;

.field public static final enum e:Lcom/android/tools/r8/internal/sN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/sN;

    const/4 v1, 0x0

    const-string v2, "LOOKUP"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/sN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/sN;->b:Lcom/android/tools/r8/internal/sN;

    new-instance v0, Lcom/android/tools/r8/internal/sN;

    const/4 v1, 0x1

    const-string v2, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/sN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/sN;->c:Lcom/android/tools/r8/internal/sN;

    new-instance v0, Lcom/android/tools/r8/internal/sN;

    const/4 v1, 0x6

    const-string v2, "METHOD_INVOKE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/sN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/sN;->d:Lcom/android/tools/r8/internal/sN;

    new-instance v0, Lcom/android/tools/r8/internal/sN;

    const/16 v1, 0xd

    const-string v2, "GENERIC_SIGNATURE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/sN;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/sN;->e:Lcom/android/tools/r8/internal/sN;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
