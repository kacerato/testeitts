.class public final synthetic Lcom/android/tools/r8/internal/Q01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Q01;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q01;->a:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/WZ;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
