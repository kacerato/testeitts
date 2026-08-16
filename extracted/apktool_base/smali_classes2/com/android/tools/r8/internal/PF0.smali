.class public final synthetic Lcom/android/tools/r8/internal/PF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vr0;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PF0;->a:Ljava/util/List;

    iput p2, p0, Lcom/android/tools/r8/internal/PF0;->b:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PF0;->a:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/PF0;->b:I

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Gc;->a(Ljava/util/List;ILcom/android/tools/r8/graph/M2;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
