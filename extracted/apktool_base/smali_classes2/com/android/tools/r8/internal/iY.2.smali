.class public Lcom/android/tools/r8/internal/iY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Lcom/android/tools/r8/internal/SA;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/SA;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iY;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/internal/iY;->b:Lcom/android/tools/r8/internal/SA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/iY;->c:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/tools/r8/internal/iY;->d:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/tools/r8/internal/iY;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/V2;",
            "Lcom/android/tools/r8/internal/IA;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/iY;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/V2;",
            "Lcom/android/tools/r8/internal/IA;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/iY;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/V2;",
            "Lcom/android/tools/r8/internal/IA;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/iY;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/SA;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iY;->b:Lcom/android/tools/r8/internal/SA;

    return-object v0
.end method
