.class public final synthetic Lcom/android/tools/r8/shaking/Y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/graph/D3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/D3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Y8;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Y8;->c:Lcom/android/tools/r8/graph/D3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y8;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y8;->c:Lcom/android/tools/r8/graph/D3;

    check-cast p1, Lcom/android/tools/r8/internal/Oy;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/D3;Lcom/android/tools/r8/internal/Oy;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
