.class public final Lcom/android/tools/r8/internal/Cx;
.super Lcom/android/tools/r8/internal/Jm0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Cx;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cx;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Cx;->c:Lcom/android/tools/r8/internal/Cx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "float"

    return-object v0
.end method
