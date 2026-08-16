.class public final synthetic Lcom/android/tools/r8/naming/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/s;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/s;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/c4;->b:Lcom/android/tools/r8/naming/s;

    iput-object p2, p0, Lcom/android/tools/r8/naming/c4;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/c4;->b:Lcom/android/tools/r8/naming/s;

    iget-object v1, p0, Lcom/android/tools/r8/naming/c4;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/Ek0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/s;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Ek0;)V

    return-void
.end method
