.class public final synthetic Lcom/android/tools/r8/graph/pc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/Z4$c;

.field public final synthetic c:Lcom/android/tools/r8/graph/B4;

.field public final synthetic d:Lcom/android/tools/r8/graph/j;

.field public final synthetic e:Lcom/android/tools/r8/graph/G4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/B4;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/G4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/pc;->b:Lcom/android/tools/r8/graph/Z4$c;

    iput-object p2, p0, Lcom/android/tools/r8/graph/pc;->c:Lcom/android/tools/r8/graph/B4;

    iput-object p3, p0, Lcom/android/tools/r8/graph/pc;->d:Lcom/android/tools/r8/graph/j;

    iput-object p4, p0, Lcom/android/tools/r8/graph/pc;->e:Lcom/android/tools/r8/graph/G4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/pc;->b:Lcom/android/tools/r8/graph/Z4$c;

    iget-object v1, p0, Lcom/android/tools/r8/graph/pc;->c:Lcom/android/tools/r8/graph/B4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/pc;->d:Lcom/android/tools/r8/graph/j;

    iget-object v3, p0, Lcom/android/tools/r8/graph/pc;->e:Lcom/android/tools/r8/graph/G4;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/B4;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/G4;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
