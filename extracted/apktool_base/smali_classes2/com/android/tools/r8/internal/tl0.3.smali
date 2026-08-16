.class public final Lcom/android/tools/r8/internal/tl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Mj;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Mj;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/tl0;->b:Lcom/android/tools/r8/internal/Mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tl0;->b:Lcom/android/tools/r8/internal/Mj;

    new-instance v1, Lcom/android/tools/r8/internal/Lj;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Lj;-><init>(Lcom/android/tools/r8/internal/Mj;)V

    return-object v1
.end method
