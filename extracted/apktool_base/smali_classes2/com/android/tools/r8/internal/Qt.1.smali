.class public final Lcom/android/tools/r8/internal/Qt;
.super Lcom/android/tools/r8/internal/UD;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Qt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Qt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/UD;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/UD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/UD;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 4
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyInstanceFieldInitializationInfoCollection"

    return-object v0
.end method
