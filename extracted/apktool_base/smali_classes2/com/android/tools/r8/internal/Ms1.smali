.class public final synthetic Lcom/android/tools/r8/internal/Ms1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sd;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/sd;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ms1;->b:Lcom/android/tools/r8/internal/sd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ms1;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms1;->b:Lcom/android/tools/r8/internal/sd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ms1;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/sd;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
