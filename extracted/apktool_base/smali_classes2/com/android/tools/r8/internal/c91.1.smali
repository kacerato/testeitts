.class public final synthetic Lcom/android/tools/r8/internal/c91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/dt;

.field public final synthetic c:Lcom/android/tools/r8/internal/W5;

.field public final synthetic d:Lcom/android/tools/r8/internal/ct;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/ct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/c91;->b:Lcom/android/tools/r8/internal/dt;

    iput-object p2, p0, Lcom/android/tools/r8/internal/c91;->c:Lcom/android/tools/r8/internal/W5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/c91;->d:Lcom/android/tools/r8/internal/ct;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/c91;->b:Lcom/android/tools/r8/internal/dt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c91;->c:Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/c91;->d:Lcom/android/tools/r8/internal/ct;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/ct;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
