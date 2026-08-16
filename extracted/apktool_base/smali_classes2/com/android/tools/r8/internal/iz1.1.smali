.class public final synthetic Lcom/android/tools/r8/internal/iz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/x60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/x60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iz1;->a:Lcom/android/tools/r8/internal/x60;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz1;->a:Lcom/android/tools/r8/internal/x60;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/x60;->a(ILcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/x60;

    return-void
.end method
