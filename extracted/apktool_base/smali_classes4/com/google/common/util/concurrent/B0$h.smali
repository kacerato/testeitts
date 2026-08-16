.class public final Lcom/google/common/util/concurrent/B0$h;
.super Lcom/google/common/util/concurrent/I;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/B0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/Condition;

.field public final b:Lcom/google/common/util/concurrent/B0$j;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/B0$j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/I;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/B0$h;->a:Ljava/util/concurrent/locks/Condition;

    iput-object p2, p0, Lcom/google/common/util/concurrent/B0$h;->b:Lcom/google/common/util/concurrent/B0$j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/locks/Condition;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/B0$h;->a:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method
