.class public final synthetic Lcom/android/tools/r8/internal/bX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/T8;

.field public final synthetic c:Lcom/android/tools/r8/internal/RR;

.field public final synthetic d:Ljava/util/Optional;

.field public final synthetic e:Lcom/android/tools/r8/SourceFileEnvironment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/T8;Lcom/android/tools/r8/internal/RR;Ljava/util/Optional;Lcom/android/tools/r8/SourceFileEnvironment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bX0;->b:Lcom/android/tools/r8/internal/T8;

    iput-object p2, p0, Lcom/android/tools/r8/internal/bX0;->c:Lcom/android/tools/r8/internal/RR;

    iput-object p3, p0, Lcom/android/tools/r8/internal/bX0;->d:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/tools/r8/internal/bX0;->e:Lcom/android/tools/r8/SourceFileEnvironment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/bX0;->b:Lcom/android/tools/r8/internal/T8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bX0;->c:Lcom/android/tools/r8/internal/RR;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bX0;->d:Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bX0;->e:Lcom/android/tools/r8/SourceFileEnvironment;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/internal/RR;Ljava/util/Optional;Lcom/android/tools/r8/SourceFileEnvironment;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Q8;

    move-result-object p1

    return-object p1
.end method
