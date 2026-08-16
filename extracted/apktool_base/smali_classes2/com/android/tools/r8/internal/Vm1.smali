.class public final synthetic Lcom/android/tools/r8/internal/Vm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/nc0;

.field public final synthetic b:Lcom/android/tools/r8/naming/r0;

.field public final synthetic c:Lcom/android/tools/r8/graph/d1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nc0;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vm1;->a:Lcom/android/tools/r8/internal/nc0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vm1;->b:Lcom/android/tools/r8/naming/r0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Vm1;->c:Lcom/android/tools/r8/graph/d1;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vm1;->a:Lcom/android/tools/r8/internal/nc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vm1;->b:Lcom/android/tools/r8/naming/r0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Vm1;->c:Lcom/android/tools/r8/graph/d1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/nc0;->a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/d1;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
