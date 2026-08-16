.class public final synthetic Lcom/android/tools/r8/internal/TP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/OV;

.field public final synthetic c:Lcom/android/tools/r8/graph/Z4$c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TP0;->b:Lcom/android/tools/r8/internal/OV;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TP0;->c:Lcom/android/tools/r8/graph/Z4$c;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/TP0;->b:Lcom/android/tools/r8/internal/OV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TP0;->c:Lcom/android/tools/r8/graph/Z4$c;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/OV;->b(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method
