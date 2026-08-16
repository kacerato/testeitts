.class public final synthetic Lcom/android/tools/r8/internal/m71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/cS;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/m71;->a:Lcom/android/tools/r8/internal/cS;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/m71;->a:Lcom/android/tools/r8/internal/cS;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    check-cast p2, [I

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/cS;->a(Lcom/android/tools/r8/graph/A2;[I)V

    return-void
.end method
