.class public final enum Lcom/android/tools/r8/internal/GV;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/GV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/GV;

.field public static final enum c:Lcom/android/tools/r8/internal/GV;

.field public static final enum d:Lcom/android/tools/r8/internal/GV;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/GV;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/GV;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/GV;->b:Lcom/android/tools/r8/internal/GV;

    new-instance v0, Lcom/android/tools/r8/internal/GV;

    const/4 v1, 0x2

    const-string v2, "PROTECTED"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/GV;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/GV;->c:Lcom/android/tools/r8/internal/GV;

    new-instance v0, Lcom/android/tools/r8/internal/GV;

    const/4 v1, 0x4

    const-string v2, "PACKAGE_PRIVATE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/GV;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/GV;->d:Lcom/android/tools/r8/internal/GV;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
