.class public final synthetic Lcom/android/tools/r8/synthesis/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ff0;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/n1;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/n1;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n1;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/n1;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/synthesis/z;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
