.class public final enum Lcom/android/tools/r8/internal/m4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/m4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/m4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/m4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/m4;->b:Lcom/android/tools/r8/internal/m4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "ALLOW_MISSING_ENUM_UNBOXING_UTILITY_METHODS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
