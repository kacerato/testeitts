.class public final synthetic Lcom/google/common/util/concurrent/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/Q;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/util/concurrent/y0;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/y0;->b:I

    invoke-static {v0}, Lcom/google/common/util/concurrent/B0;->c(I)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method
