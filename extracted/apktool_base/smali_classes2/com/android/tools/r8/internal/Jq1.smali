.class public final synthetic Lcom/android/tools/r8/internal/Jq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/pP;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qP;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/android/tools/r8/internal/MN;

.field public final synthetic f:Lcom/android/tools/r8/internal/cP;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qP;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jq1;->a:Lcom/android/tools/r8/internal/qP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jq1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Jq1;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Jq1;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Jq1;->e:Lcom/android/tools/r8/internal/MN;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Jq1;->f:Lcom/android/tools/r8/internal/cP;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jq1;->a:Lcom/android/tools/r8/internal/qP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jq1;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Jq1;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Jq1;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Jq1;->e:Lcom/android/tools/r8/internal/MN;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Jq1;->f:Lcom/android/tools/r8/internal/cP;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    return-void
.end method
