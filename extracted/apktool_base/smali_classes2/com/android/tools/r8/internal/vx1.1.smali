.class public final synthetic Lcom/android/tools/r8/internal/vx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/TY;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/TY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vx1;->a:Lcom/android/tools/r8/internal/TY;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vx1;->a:Lcom/android/tools/r8/internal/TY;

    check-cast p1, Ljava/util/Set;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/TY;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    return-void
.end method
