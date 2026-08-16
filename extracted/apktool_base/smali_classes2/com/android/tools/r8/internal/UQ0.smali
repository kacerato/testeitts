.class public final synthetic Lcom/android/tools/r8/internal/UQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:[Lcom/android/tools/r8/internal/YS;


# direct methods
.method public synthetic constructor <init>([Lcom/android/tools/r8/internal/YS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UQ0;->a:[Lcom/android/tools/r8/internal/YS;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UQ0;->a:[Lcom/android/tools/r8/internal/YS;

    check-cast p1, Lcom/android/tools/r8/internal/YS;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/PS;->a([Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;Ljava/lang/Integer;)V

    return-void
.end method
