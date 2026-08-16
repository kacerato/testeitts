.class public final synthetic Lcom/android/tools/r8/internal/Zy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/y2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/y2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zy1;->b:Lcom/android/tools/r8/internal/y2;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zy1;->b:Lcom/android/tools/r8/internal/y2;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/y2;->a(I[B)Z

    move-result p1

    return p1
.end method
