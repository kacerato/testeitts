.class public final enum Lcom/android/tools/r8/internal/O2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/O2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/O2;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O2;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/O2;->b:Lcom/android/tools/r8/internal/O2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "RETENTION"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
