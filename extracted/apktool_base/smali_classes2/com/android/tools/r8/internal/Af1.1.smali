.class public final synthetic Lcom/android/tools/r8/internal/Af1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/jT;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/jT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Af1;->a:Lcom/android/tools/r8/internal/jT;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Af1;->a:Lcom/android/tools/r8/internal/jT;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/jT;->a(Ljava/lang/Integer;Lcom/android/tools/r8/internal/N8;)V

    return-void
.end method
