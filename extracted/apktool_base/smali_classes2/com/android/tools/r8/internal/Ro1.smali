.class public final synthetic Lcom/android/tools/r8/internal/Ro1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lj;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ro1;->a:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ro1;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ro1;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ro1;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    return p1
.end method
