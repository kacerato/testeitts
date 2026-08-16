.class public final synthetic Lcom/android/tools/r8/synthesis/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ff0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/M2;

.field public final synthetic b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/j1;->a:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/j1;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/j1;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/j1;->b:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/synthesis/t;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
