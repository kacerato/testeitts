.class public final synthetic Lcom/android/tools/r8/shaking/I7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;

.field public final synthetic b:Lcom/android/tools/r8/graph/H2;

.field public final synthetic c:Lcom/android/tools/r8/shaking/X1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/I7;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/I7;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/I7;->c:Lcom/android/tools/r8/shaking/X1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I7;->a:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I7;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I7;->c:Lcom/android/tools/r8/shaking/X1;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method
