.class public final synthetic Lcom/android/tools/r8/internal/au1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/M5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/M5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/au1;->a:Lcom/android/tools/r8/graph/M5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/au1;->a:Lcom/android/tools/r8/graph/M5;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/tm0;->a(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
