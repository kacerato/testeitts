.class public final synthetic Lcom/android/tools/r8/internal/Yd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yd1;->b:Ljava/util/function/Consumer;

    iput p2, p0, Lcom/android/tools/r8/internal/Yd1;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yd1;->b:Ljava/util/function/Consumer;

    iget v1, p0, Lcom/android/tools/r8/internal/Yd1;->c:I

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/iE;->a(Ljava/util/function/Consumer;ILcom/android/tools/r8/graph/H5;)V

    return-void
.end method
