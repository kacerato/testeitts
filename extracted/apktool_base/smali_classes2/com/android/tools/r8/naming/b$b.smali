.class public final enum Lcom/android/tools/r8/naming/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/naming/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/naming/b$b;

.field public static final enum c:Lcom/android/tools/r8/naming/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/naming/b$b;

    const/4 v1, 0x0

    const-string v2, "MISSING_FILE_IS_EMPTY_MAP"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/naming/b$b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/naming/b$b;->b:Lcom/android/tools/r8/naming/b$b;

    new-instance v0, Lcom/android/tools/r8/naming/b$b;

    const/4 v1, 0x1

    const-string v2, "MISSING_FILE_IS_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/naming/b$b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/naming/b$b;->c:Lcom/android/tools/r8/naming/b$b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
