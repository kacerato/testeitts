.class public Lcom/google/common/util/concurrent/Q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Q;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/Q$g;

.field public final synthetic c:Lcom/google/common/collect/g1;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Q$g;Lcom/google/common/collect/g1;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/Q$c;->b:Lcom/google/common/util/concurrent/Q$g;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Q$c;->c:Lcom/google/common/collect/g1;

    iput p3, p0, Lcom/google/common/util/concurrent/Q$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Q$c;->b:Lcom/google/common/util/concurrent/Q$g;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$c;->c:Lcom/google/common/collect/g1;

    iget v2, p0, Lcom/google/common/util/concurrent/Q$c;->d:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Q$g;->a(Lcom/google/common/util/concurrent/Q$g;Lcom/google/common/collect/g1;I)V

    return-void
.end method
