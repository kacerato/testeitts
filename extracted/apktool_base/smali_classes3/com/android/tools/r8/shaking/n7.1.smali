.class public final synthetic Lcom/android/tools/r8/shaking/n7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;

.field public final synthetic b:Lcom/android/tools/r8/shaking/X1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/X1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/n7;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/n7;->b:Lcom/android/tools/r8/shaking/X1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n7;->a:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/n7;->b:Lcom/android/tools/r8/shaking/X1;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)V

    return-void
.end method
