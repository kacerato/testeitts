.class public interface abstract Lcom/android/apksig/internal/compat/IntConsumerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->lambda$andThen$0(Lcom/android/apksig/internal/compat/IntConsumerCompat;I)V

    return-void
.end method

.method private synthetic lambda$andThen$0(Lcom/android/apksig/internal/compat/IntConsumerCompat;I)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->accept(I)V

    invoke-interface {p1, p2}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->accept(I)V

    return-void
.end method


# virtual methods
.method public abstract accept(I)V
.end method

.method public andThen(Lcom/android/apksig/internal/compat/IntConsumerCompat;)Lcom/android/apksig/internal/compat/IntConsumerCompat;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lr/a;

    invoke-direct {v0, p0, p1}, Lr/a;-><init>(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;)V

    return-object v0
.end method
