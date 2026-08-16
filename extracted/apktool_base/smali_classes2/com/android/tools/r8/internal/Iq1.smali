.class public final synthetic Lcom/android/tools/r8/internal/Iq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/pP;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qP;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/internal/MN;

.field public final synthetic d:Lcom/android/tools/r8/internal/cP;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Iq1;->a:Lcom/android/tools/r8/internal/qP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Iq1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Iq1;->c:Lcom/android/tools/r8/internal/MN;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Iq1;->d:Lcom/android/tools/r8/internal/cP;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Iq1;->a:Lcom/android/tools/r8/internal/qP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Iq1;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Iq1;->c:Lcom/android/tools/r8/internal/MN;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Iq1;->d:Lcom/android/tools/r8/internal/cP;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V

    return-void
.end method
