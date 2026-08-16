.class public final synthetic Lcom/android/tools/r8/internal/Tz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yI;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yI;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tz1;->b:Lcom/android/tools/r8/internal/yI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tz1;->c:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tz1;->b:Lcom/android/tools/r8/internal/yI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tz1;->c:Lcom/android/tools/r8/graph/H2;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
