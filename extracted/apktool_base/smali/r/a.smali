.class public final synthetic Lr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/internal/compat/IntConsumerCompat;


# instance fields
.field public final synthetic a:Lcom/android/apksig/internal/compat/IntConsumerCompat;

.field public final synthetic b:Lcom/android/apksig/internal/compat/IntConsumerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/a;->a:Lcom/android/apksig/internal/compat/IntConsumerCompat;

    iput-object p2, p0, Lr/a;->b:Lcom/android/apksig/internal/compat/IntConsumerCompat;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lr/a;->a:Lcom/android/apksig/internal/compat/IntConsumerCompat;

    iget-object v1, p0, Lr/a;->b:Lcom/android/apksig/internal/compat/IntConsumerCompat;

    invoke-static {v0, v1, p1}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->a(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;I)V

    return-void
.end method
