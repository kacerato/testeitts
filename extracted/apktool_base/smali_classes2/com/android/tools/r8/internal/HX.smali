.class public final enum Lcom/android/tools/r8/internal/HX;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic c:Lcom/android/tools/r8/internal/ou;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/ux;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/HX;

    const-string v1, "FINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/HX;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/tools/r8/internal/HX;

    const-string v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/tools/r8/internal/HX;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/tools/r8/internal/HX;

    const-string v3, "ABSTRACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/tools/r8/internal/HX;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/tools/r8/internal/HX;

    const-string v4, "SEALED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/tools/r8/internal/HX;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/internal/HX;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ou;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ou;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lcom/android/tools/r8/internal/HX;->c:Lcom/android/tools/r8/internal/ou;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/tools/r8/internal/ux;

    sget-object p2, Lcom/android/tools/r8/internal/yx;->d:Lcom/android/tools/r8/internal/wx;

    const-string v0, "MODALITY"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/ux;-><init>(Lcom/android/tools/r8/internal/xx;I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HX;->b:Lcom/android/tools/r8/internal/ux;

    return-void
.end method
