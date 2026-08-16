.class public final synthetic Lcom/android/tools/r8/internal/Cq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/android/tools/r8/internal/QM;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cq1;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cq1;->c:Lcom/android/tools/r8/internal/QM;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Cq1;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cq1;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cq1;->c:Lcom/android/tools/r8/internal/QM;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Cq1;->d:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/xP;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Lcom/android/tools/r8/internal/xP;)V

    return-void
.end method
