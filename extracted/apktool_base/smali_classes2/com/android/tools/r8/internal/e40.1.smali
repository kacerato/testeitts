.class public final Lcom/android/tools/r8/internal/e40;
.super Lcom/android/tools/r8/internal/Qm0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Gm0;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/e40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/e40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/e40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "oneword"

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    return-object p0
.end method
