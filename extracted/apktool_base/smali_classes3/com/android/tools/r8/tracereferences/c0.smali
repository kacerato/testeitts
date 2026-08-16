.class public final synthetic Lcom/android/tools/r8/tracereferences/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/tracereferences/j;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;

.field public final synthetic e:Lcom/android/tools/r8/diagnostic/DefinitionContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/j;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/c0;->b:Lcom/android/tools/r8/tracereferences/j;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/c0;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/tracereferences/c0;->d:Lcom/android/tools/r8/graph/H2;

    iput-object p4, p0, Lcom/android/tools/r8/tracereferences/c0;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/c0;->b:Lcom/android/tools/r8/tracereferences/j;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/c0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/c0;->d:Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/tracereferences/c0;->e:Lcom/android/tools/r8/diagnostic/DefinitionContext;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/tracereferences/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
