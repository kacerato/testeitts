.class public final Lcom/android/tools/r8/internal/g80;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/g80;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/g80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/g80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
