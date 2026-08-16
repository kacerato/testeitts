.class public final synthetic Lcom/android/tools/r8/synthesis/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/M2;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/D0;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/D0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/D0;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/D0;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/D0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/D0;->d:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/synthesis/Y;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/Y;)V

    return-void
.end method
