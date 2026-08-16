.class public final Lcom/android/tools/r8/internal/V10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/V10;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/U10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U10;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/V10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/V10;-><init>(Lcom/android/tools/r8/internal/U10;)V

    sput-object v1, Lcom/android/tools/r8/internal/V10;->c:Lcom/android/tools/r8/internal/V10;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/U10;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/U10;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/V10;->a:Lcom/android/tools/r8/internal/nC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/U10;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/V10;->b:Lcom/android/tools/r8/internal/nC;

    return-void
.end method
