.class public final synthetic Lcom/android/tools/r8/internal/cR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/PU;

.field public final synthetic b:Lcom/android/tools/r8/MapIdEnvironment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/PU;Lcom/android/tools/r8/MapIdEnvironment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cR0;->a:Lcom/android/tools/r8/internal/PU;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cR0;->b:Lcom/android/tools/r8/MapIdEnvironment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cR0;->a:Lcom/android/tools/r8/internal/PU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cR0;->b:Lcom/android/tools/r8/MapIdEnvironment;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/MapIdProvider;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/PU;->a(Lcom/android/tools/r8/MapIdEnvironment;Ljava/lang/String;Lcom/android/tools/r8/MapIdProvider;)V

    return-void
.end method
