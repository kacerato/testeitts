.class public final synthetic Lcom/android/tools/r8/internal/qZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Va;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qZ0;->b:Lcom/android/tools/r8/internal/Va;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qZ0;->b:Lcom/android/tools/r8/internal/Va;

    check-cast p1, Lcom/android/tools/r8/graph/G$a;

    check-cast p2, Lcom/android/tools/r8/graph/G$a;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Va;->b(Lcom/android/tools/r8/graph/G$a;Lcom/android/tools/r8/graph/G$a;)I

    move-result p1

    return p1
.end method
