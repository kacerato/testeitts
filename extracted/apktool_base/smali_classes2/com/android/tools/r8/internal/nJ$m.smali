.class public final enum Lcom/android/tools/r8/internal/nJ$m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/nJ$m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/nJ$m;

.field public static final enum c:Lcom/android/tools/r8/internal/nJ$m;

.field public static final enum d:Lcom/android/tools/r8/internal/nJ$m;

.field public static final enum e:Lcom/android/tools/r8/internal/nJ$m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/nJ$m;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ$m;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nJ$m;->b:Lcom/android/tools/r8/internal/nJ$m;

    new-instance v0, Lcom/android/tools/r8/internal/nJ$m;

    const/4 v1, 0x1

    const-string v2, "MINIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ$m;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nJ$m;->c:Lcom/android/tools/r8/internal/nJ$m;

    new-instance v0, Lcom/android/tools/r8/internal/nJ$m;

    const/4 v1, 0x2

    const-string v2, "REPACKAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ$m;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    new-instance v0, Lcom/android/tools/r8/internal/nJ$m;

    const/4 v1, 0x3

    const-string v2, "FLATTEN"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ$m;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
