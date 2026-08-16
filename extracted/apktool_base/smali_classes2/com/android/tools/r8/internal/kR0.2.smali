.class public final synthetic Lcom/android/tools/r8/internal/kR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Pd;

.field public final synthetic c:Lcom/android/tools/r8/internal/Kd;

.field public final synthetic d:Lcom/android/tools/r8/internal/FI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Pd;Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kR0;->b:Lcom/android/tools/r8/internal/Pd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kR0;->c:Lcom/android/tools/r8/internal/Kd;

    iput-object p3, p0, Lcom/android/tools/r8/internal/kR0;->d:Lcom/android/tools/r8/internal/FI;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/kR0;->b:Lcom/android/tools/r8/internal/Pd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kR0;->c:Lcom/android/tools/r8/internal/Kd;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kR0;->d:Lcom/android/tools/r8/internal/FI;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Fd;

    move-result-object p1

    return-object p1
.end method
