.class public final synthetic Lcom/android/tools/r8/synthesis/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/kC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/kC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/v1;->a:Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/v1;->a:Lcom/android/tools/r8/internal/kC;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/synthesis/P;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/P;)V

    return-void
.end method
