.class public final synthetic Lcom/android/tools/r8/internal/Bq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/pP;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/android/tools/r8/internal/d60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/pP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bq1;->b:Lcom/android/tools/r8/internal/pP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Bq1;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Bq1;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Bq1;->e:Lcom/android/tools/r8/internal/d60;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bq1;->b:Lcom/android/tools/r8/internal/pP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bq1;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bq1;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Bq1;->e:Lcom/android/tools/r8/internal/d60;

    check-cast p1, Lcom/android/tools/r8/internal/oP;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/pP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;Lcom/android/tools/r8/internal/oP;)V

    return-void
.end method
