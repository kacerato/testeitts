.class public final synthetic Lcom/android/tools/r8/internal/Hx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hx1;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx1;->a:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V

    return-void
.end method
