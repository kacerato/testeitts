.class public final synthetic Lcom/android/tools/r8/internal/YP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YP0;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YP0;->a:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    check-cast p3, Lcom/android/tools/r8/graph/H0;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/OV;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method
