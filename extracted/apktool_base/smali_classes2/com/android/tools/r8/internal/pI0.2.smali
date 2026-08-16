.class public final synthetic Lcom/android/tools/r8/internal/pI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/ea;

.field public final synthetic d:Lcom/android/tools/r8/internal/Z70;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pI0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pI0;->c:Lcom/android/tools/r8/internal/ea;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pI0;->d:Lcom/android/tools/r8/internal/Z70;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/pI0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pI0;->c:Lcom/android/tools/r8/internal/ea;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pI0;->d:Lcom/android/tools/r8/internal/Z70;

    check-cast p1, Lcom/android/tools/r8/internal/X9;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/I00;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/internal/X9;)V

    return-void
.end method
