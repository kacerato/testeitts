.class public final synthetic Lcom/android/tools/r8/internal/Mq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QM;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mq1;->b:Lcom/android/tools/r8/internal/QM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mq1;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mq1;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mq1;->b:Lcom/android/tools/r8/internal/QM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mq1;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mq1;->d:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/internal/PM;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/PM;)V

    return-void
.end method
