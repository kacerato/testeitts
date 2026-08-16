.class public final synthetic Lcom/android/tools/r8/internal/ss1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/rt;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/rt;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ss1;->b:Lcom/android/tools/r8/internal/rt;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ss1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ss1;->b:Lcom/android/tools/r8/internal/rt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ss1;->c:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/rt;->a(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
